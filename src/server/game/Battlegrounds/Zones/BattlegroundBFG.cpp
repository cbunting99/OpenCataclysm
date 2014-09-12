/*
 * Copyright (C) 2005 - 2013 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008 - 2013 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010 - 2013 ProjectSkyfire <http://www.projectskyfire.org/>
 *
 * Copyright (C) 2011 - 2013 ArkCORE <http://www.arkania.net/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#include "BattlegroundBFG.h"
#include "Creature.h"
#include "GameObject.h"
#include "Language.h"
#include "Object.h"
#include "ObjectMgr.h"
#include "BattlegroundMgr.h"
#include "Player.h"
#include "World.h"
#include "WorldPacket.h"

BattlegroundBG::BattlegroundBG()
{
    BgObjects.resize(GILNEAS_OBJECT_MAX);
    BgCreatures.resize(ALL_NODES_COUNT + 3); // +3 for aura triggers

    StartMessageIds[BG_STARTING_EVENT_FIRST]  = LANG_BG_BG_START_TWO_MINUTES;
    StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_BG_BG_START_ONE_MINUTE;
    StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_BG_BG_START_HALF_MINUTE;
    StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_BG_BG_HAS_BEGUN;

    Reset();
}

BattlegroundBG::~BattlegroundBG()
{
}

void BattlegroundBG::PostUpdateImpl(uint32 diff)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    uint8 teamPoints[BG_TEAMS_COUNT] = { 0, 0 };

    for (uint8 node = 0; node < NODES_COUNT; ++node)
    {
        // 3sec delay to spawn new a banner
        if (m_nodeInfo[node].timer)
        {
            if (m_nodeInfo[node].timer > diff)
                m_nodeInfo[node].timer -= diff;
            else
            {
                m_nodeInfo[node].timer = 0;
                CreateBanner(node, m_nodeInfo[node].bannerType, m_nodeInfo[node].team, false);
            }
        }
        // 1 minute cap timer on each node from a contested state.
        if (m_nodeTimers[node])
        {
            if (m_nodeTimers[node] > diff)
                m_nodeTimers[node] -= diff;
            else
            {
                m_nodeTimers[node] = 0;

                // Change from contested to occupied
                uint8 const team = m_nodeInfo[node].team;
                uint8 const contestedBanner = node * 8 + team + 3;
                uint8 const occupiedBanner = node * 8 + team + 1;

                // Burn current contested banner
                DeleteBanner(contestedBanner);

                // Create new occupied banner
                CreateBanner(node, occupiedBanner, team, true);
                SendNodeUpdate(node);
                NodeOccupied(node, team == BG_TEAM_ALLIANCE ? ALLIANCE : HORDE);

                // Message to chatlog
                if (team == BG_TEAM_ALLIANCE)
                {
                    SendMessage2ToAll(LANG_BG_BG_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_ALLIANCE, NULL, LANG_BG_BG_ALLY, GetNodeNameId(node));
                    PlaySoundToAll(SOUND_NODE_CAPTURED_ALLIANCE);
                }
                else
                {
                    SendMessage2ToAll(LANG_BG_BG_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_HORDE, NULL, LANG_BG_BG_HORDE, GetNodeNameId(node));
                    PlaySoundToAll(SOUND_NODE_CAPTURED_HORDE);
                }
            }
        }

        for (uint8 n = 0; n < BG_TEAMS_COUNT; ++n)
            teamPoints[n] = GetBasesAmount(n);
    }

    // Accumulate points
    for (uint8 n = 0; n < BG_TEAMS_COUNT; ++n)
    {
        uint8 points = teamPoints[n];
        if (!points)
            continue;

        m_lastTick[n] += diff;
        uint32 const tickPoints = GilneasTickPoints[points];

        if (m_lastTick[n] >= GilneasTickIntervals[points])
        {
            m_lastTick[n] -= GilneasTickIntervals[points];
            m_TeamScores[n] += tickPoints;
            m_honorScoreTicks[n] += tickPoints;

            if (m_honorScoreTicks[n] >= m_honorTicks)
            {
                RewardHonorToTeam(GetBonusHonorFromKill(1), n == BG_TEAM_ALLIANCE ? ALLIANCE : HORDE);
                m_honorScoreTicks[n] -= m_honorTicks;
            }

            // Resource warning (1800 resources)
            if (!m_isInformedNearVictory && m_TeamScores[n] > RESOURCES_WARN)
            {
                if (n == BG_TEAM_ALLIANCE)
                    SendMessageToAll(LANG_BG_AB_A_NEAR_VICTORY, CHAT_MSG_BG_SYSTEM_NEUTRAL);
                else
                    SendMessageToAll(LANG_BG_AB_H_NEAR_VICTORY, CHAT_MSG_BG_SYSTEM_NEUTRAL);

                PlaySoundToAll(SOUND_NEAR_VICTORY);
                m_isInformedNearVictory = true;
            }

            if (m_TeamScores[n] > MAX_GILNEAS_TEAM_SCORE)
                m_TeamScores[n] = MAX_GILNEAS_TEAM_SCORE;

            // Update worldstate
            if (n == BG_TEAM_ALLIANCE)
                UpdateWorldState(WORLDSTATE_ALLIANCE_SCORE, m_TeamScores[n]);
            else
                UpdateWorldState(WORLDSTATE_HORDE_SCORE, m_TeamScores[n]);

            // Don't Get Cocky Kid
            uint8 otherTeam = GetSecondTeam(n);
            if (m_TeamScores[n] > m_TeamScores[otherTeam] + 500.0f)
                dontGetCockyKid[otherTeam] = true;
        }
    }

    // Test win condition
    if (m_TeamScores[BG_TEAM_ALLIANCE] >= MAX_GILNEAS_TEAM_SCORE)
        EndBattleground(ALLIANCE);

    if (m_TeamScores[BG_TEAM_HORDE] >= MAX_GILNEAS_TEAM_SCORE)
        EndBattleground(HORDE);
}

void BattlegroundBG::StartingEventCloseDoors()
{
    // Remove banners, auras and buffs
    for (uint8 n = 0; n < GILNEAS_OBJECT_MAX; ++n)
    {
        switch (n)
        {
            case OBJECT_GATE_A_1:
            case OBJECT_GATE_A_2:
            case OBJECT_GATE_H_1:
            case OBJECT_GATE_H_2:
                DoorClose(n);
                SpawnBGObject(n, RESPAWN_IMMEDIATELY);
                continue;
        }
        SpawnBGObject(n, RESPAWN_ONE_DAY);
    }

    // Starting base spirit guides
    NodeOccupied(GILNEAS_SPIRIT_ALIANCE, ALLIANCE);
    NodeOccupied(GILNEAS_SPIRIT_HORDE, HORDE);
}

void BattlegroundBG::StartingEventOpenDoors()
{
    for (uint8 n = OBJECT_GATE_A_1; n <= OBJECT_GATE_H_2; ++n)
        DoorOpen(n);

    for (uint8 n = 0; n < GILNEAS_OBJECT_MAX; ++n)
        SpawnBGObject(n, RESPAWN_ONE_DAY);

    for (uint8 n = 0; n < NODES_COUNT; ++n)
    {
        uint8 const buff = urand(0, 2);
        SpawnBGObject(OBJECT_LIGHTHOUSE_SPEEDBUFF + n * 3 + buff, RESPAWN_IMMEDIATELY);
    }

    for (uint8 n = OBJECT_LIGHTHOUSE_BANNER_NEUTRAL; n <= OBJECT_MINE_BANNER_NEUTRAL; n += 8)
        SpawnBGObject(n, RESPAWN_IMMEDIATELY);

    StartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, GILNEAS_START_BATTLE);
}

void BattlegroundBG::AddPlayer(Player* player)
{
    Battleground::AddPlayer(player);
    BattlegroundBGScore* score = new BattlegroundBGScore;

    PlayerScores[player->GetGUID()] = score;
}

void BattlegroundBG::HandleAreaTrigger(Player* /*player*/, uint32 /*trigger*/)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;
}

void BattlegroundBG::CreateBanner(uint8 node, uint8 type, uint32 team, bool delay)
{
    // Just put it into the queue
    if (delay)
    {
        m_nodeInfo[node].timer = 2000;
        m_nodeInfo[node].bannerType = type;
        m_nodeInfo[node].team = team;
        return;
    }

    SpawnBGObject(type, RESPAWN_IMMEDIATELY);
}

void BattlegroundBG::DeleteBanner(uint8 type)
{
    SpawnBGObject(type, RESPAWN_ONE_DAY);
}

int32 BattlegroundBG::GetNodeNameId(uint8 node) const
{
    switch (node)
    {
        case NODE_LIGHTHOUSE:
            return LANG_BG_BG_NODE_LIGHTHOUSE;
        case NODE_WATERWORKS:
            return LANG_BG_BG_NODE_WATERWORKS;
        case NODE_MINE:
            return LANG_BG_BG_NODE_MINE;
    }

    return 0;
}

void BattlegroundBG::FillInitialWorldStates(WorldPacket& data)
{
    // Node icons
    for (uint8 n = 0; n < NODES_COUNT; ++n)
        data << uint32(GilneasNodeicons[n]) << uint32(m_nodeInfo[n].bannerType == (n * 8) ? 1 : 0);

    // Node occupied states
    for (uint8 n = 0; n < NODES_COUNT; ++n)
        for (uint8 i = 0; i < 4; ++i)
            data << uint32(GilneasNodestates[n] + i) << uint32(m_nodeInfo[n].bannerType == (n * 8 + i + 1) ? 1 : 0);

    data << uint32(WORLDSTATE_ALLIANCE_BASES) << uint32(GetBasesAmount(BG_TEAM_ALLIANCE));
    data << uint32(WORLDSTATE_HORDE_BASES) << uint32(GetBasesAmount(BG_TEAM_HORDE));

    // Team scores
    data << uint32(WORLDSTATE_MAX_SCORE) << uint32(MAX_GILNEAS_TEAM_SCORE);
    data << uint32(WORLDSTATE_RESOURCES_WARN) << uint32(RESOURCES_WARN);
    data << uint32(WORLDSTATE_ALLIANCE_SCORE) << uint32(m_TeamScores[BG_TEAM_ALLIANCE]);
    data << uint32(WORLDSTATE_HORDE_SCORE) << uint32(m_TeamScores[BG_TEAM_HORDE]);

    // other unknown
    //data << uint32(0x745) << uint32(0x2);           // 37 1861 unk
}

uint8 BattlegroundBG::GetBasesAmount(uint32 team) const
{
    uint8 teamIndex = 0;
    for (uint8 n = 0; n < NODES_COUNT; ++n)
    {
        uint8 const occupiedBanner = n * 8 + team + 1;
        if (m_nodeInfo[n].bannerType == occupiedBanner && m_nodeInfo[n].team == team)
            ++teamIndex;
    }

    return teamIndex;
}

void BattlegroundBG::SendNodeUpdate(uint8 node)
{
    // Node icons
    UpdateWorldState(GilneasNodeicons[node], m_nodeInfo[node].bannerType == (node * 8) ? 1 : 0);

    // Node occupied states
    for (uint8 n = 0; n < 4; ++n)
        UpdateWorldState(GilneasNodestates[node] + n, m_nodeInfo[node].bannerType == (node * 8 + n + 1) ? 1 : 0);

    UpdateWorldState(WORLDSTATE_ALLIANCE_BASES, GetBasesAmount(BG_TEAM_ALLIANCE));
    UpdateWorldState(WORLDSTATE_HORDE_BASES, GetBasesAmount(BG_TEAM_HORDE));
}

void BattlegroundBG::NodeOccupied(uint8 node, uint32 team)
{
    if (!AddSpiritGuide(node, GilneasSpiritGuides[node][0], GilneasSpiritGuides[node][1], GilneasSpiritGuides[node][2], GilneasSpiritGuides[node][3], team))
        return;

    if (node >= NODES_COUNT)
        return;

    uint8 const triggerType = node * 8 + 5;

    Creature* trigger = GetBGCreature(triggerType);

    if (!trigger)
       trigger = AddCreature(WORLD_TRIGGER, triggerType, team, GilneasNodes[node][0], GilneasNodes[node][1], GilneasNodes[node][2], GilneasNodes[node][3]);

    if (trigger)
    {
        trigger->setFaction(team == ALLIANCE ? 84 : 83);
        trigger->CastSpell(trigger, SPELL_HONORABLE_DEFENDER_25Y, false);
    }
}

void BattlegroundBG::NodeDeOccupied(uint8 node)
{
    if (node >= NODES_COUNT)
        return;

    // Remove bonus honor aura trigger bunny when node is lost
    DelCreature(node * 8 + 5);

    // Players waiting to resurrect at this node are sent to closest owned graveyard
    std::vector<uint64> ghostList = m_ReviveQueue[BgCreatures[node]];
    if (!ghostList.empty())
    {
        WorldSafeLocsEntry const* closestGrave = NULL;
        for (std::vector<uint64>::const_iterator itr = ghostList.begin(); itr != ghostList.end(); ++itr)
        {
            Player* const player = ObjectAccessor::FindPlayer(*itr);
            if (!player)
                continue;

            if (!closestGrave)
                closestGrave = GetClosestGraveYard(player);

            if (closestGrave)
                player->TeleportTo(GetMapId(), closestGrave->x, closestGrave->y, closestGrave->z, player->GetOrientation());
        }
    }

    if (BgCreatures[node])
        DelCreature(node);
}

void BattlegroundBG::EventPlayerClickedOnFlag(Player* player, GameObject* /*gameobject*/)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    GameObject const* object = NULL;
    int8 node = -1;

    for (uint8 n = 0; n < NODES_COUNT; ++n)
    {
        for (uint8 i = OBJECT_LIGHTHOUSE_BANNER_NEUTRAL; i <= OBJECT_MINE_BANNER_HORDE; ++i)
        {
            // Do not check for aura triggers
            switch (i)
            {
                case OBJECT_LIGHTHOUSE_AURA_ALLY:
                case OBJECT_LIGHTHOUSE_AURA_HORDE:
                case OBJECT_LIGHTHOUSE_AURA_CONTESTED:
                case OBJECT_WATERWORKS_AURA_ALLY:
                case OBJECT_WATERWORKS_AURA_HORDE:
                case OBJECT_WATERWORKS_AURA_CONTESTED:
                    continue;
            }

            if (node != -1)
                break;

            object = GetBgMap()->GetGameObject(BgObjects[i]);
            // Found correct banner and so the node
            if (object && player->IsWithinDist(object, 10.0f, true))
            {
                node = GetNodeFromObjectType(i);
                break;
            }
        }
    }

    if (node == -1)
        return;

    uint32 const team = player->GetTeamId();

    player->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_ENTER_PVP_COMBAT);
    uint32 sound = 0;

    uint8 const neutralBanner = node * 8;
    uint8 const occupiedBanner = node * 8 + GetSecondTeam(team) + 1;
    uint8 const contestedBanner = node * 8 + GetSecondTeam(team) + 3;

    // If node is neutral, change to contested
    if (m_nodeInfo[node].bannerType == neutralBanner || m_nodeInfo[node].bannerType == occupiedBanner)
    {
        UpdatePlayerScore(player, SCORE_BASES_ASSAULTED, 1);

        // Burn current neutral/occupied banner
        DeleteBanner(m_nodeInfo[node].bannerType);

        uint8 const createBanner = node * 8 + team + 3;
        m_nodeInfo[node].bannerType = createBanner;
        m_nodeInfo[node].team = team;

        // Create new contested banner
        CreateBanner(node, createBanner, team, true);
        SendNodeUpdate(node);
        m_nodeTimers[node] = FLAG_CAPTURING_TIMER;

        if (team == BG_TEAM_ALLIANCE)
            SendMessage2ToAll(LANG_BG_BG_NODE_CLAIMED, CHAT_MSG_BG_SYSTEM_ALLIANCE, player, GetNodeNameId(node), LANG_BG_BG_ALLY);
        else
            SendMessage2ToAll(LANG_BG_BG_NODE_CLAIMED, CHAT_MSG_BG_SYSTEM_HORDE, player, GetNodeNameId(node), LANG_BG_BG_HORDE);

        sound = SOUND_NODE_CLAIMED;
    }
    // If node is contested
    else if (m_nodeInfo[node].bannerType == contestedBanner)
    {
        UpdatePlayerScore(player, SCORE_BASES_DEFENDED, 1);

        // Burn current contested banner
        DeleteBanner(m_nodeInfo[node].bannerType);

        uint8 const createBanner = node * 8 + team + 1;
        m_nodeInfo[node].bannerType = createBanner;
        m_nodeInfo[node].team = team;

        // Create new occupied banner
        CreateBanner(node, createBanner, team, true);
        SendNodeUpdate(node);
        m_nodeTimers[node] = 0;
        NodeOccupied(node, team == BG_TEAM_ALLIANCE ? ALLIANCE : HORDE);

        if (team == BG_TEAM_ALLIANCE)
            SendMessage2ToAll(LANG_BG_BG_NODE_DEFENDED, CHAT_MSG_BG_SYSTEM_ALLIANCE, player, GetNodeNameId(node));
        else
            SendMessage2ToAll(LANG_BG_BG_NODE_DEFENDED, CHAT_MSG_BG_SYSTEM_HORDE, player, GetNodeNameId(node));

        sound = (team == BG_TEAM_ALLIANCE) ? SOUND_NODE_ASSAULTED_ALLIANCE : SOUND_NODE_ASSAULTED_HORDE;
    }

    // If node is occupied again, send "X has taken the Y" message
    if (m_nodeInfo[node].bannerType == occupiedBanner)
    {
        if (team == BG_TEAM_ALLIANCE)
            SendMessage2ToAll(LANG_BG_BG_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_ALLIANCE, NULL, LANG_BG_BG_ALLY, GetNodeNameId(node));
        else
            SendMessage2ToAll(LANG_BG_BG_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_HORDE, NULL, LANG_BG_BG_HORDE, GetNodeNameId(node));
    }

    PlaySoundToAll(sound);
}

uint32 BattlegroundBG::GetSecondTeam(uint32 team) const
{
    if (team == BG_TEAM_ALLIANCE)
        return BG_TEAM_HORDE;
    else
        return BG_TEAM_ALLIANCE;
}

bool BattlegroundBG::SetupBattleground()
{
    for (uint8 n = 0; n < GILNEAS_OBJECT_MAX; ++n)
    {
        if (!AddObject(gilneasStartingObjects[n].type,
            gilneasStartingObjects[n].entry,
            gilneasStartingObjects[n].x,
            gilneasStartingObjects[n].y,
            gilneasStartingObjects[n].z,
            gilneasStartingObjects[n].o,
            gilneasStartingObjects[n].rotation0,
            gilneasStartingObjects[n].rotation1,
            gilneasStartingObjects[n].rotation2,
            gilneasStartingObjects[n].rotation3,
            gilneasStartingObjects[n].respawnTime))
        {
            sLog->outError(LOG_FILTER_BATTLEGROUND, "Battle of Gilneas: Failed to spawn some objects! Battleground was not created!");
            return false;
        }
    }

    return true;
}

void BattlegroundBG::Reset()
{
    Battleground::Reset();

    for (uint8 n = 0; n < BG_TEAMS_COUNT; ++n)
    {
        m_TeamScores[n]             = 0;
        m_lastTick[n]               = 0;
        m_honorScoreTicks[n]        = 0;
        dontGetCockyKid[n]          = false;
    }

    for (uint8 n = 0; n < NODES_COUNT; ++n)
    {
        m_nodeTimers[n]  = 0;
        m_nodeInfo[n].timer = 0;
        m_nodeInfo[n].bannerType = n * 8;
    }

    for (uint8 n = 0; n < ALL_NODES_COUNT + 3; ++n) // +3 for aura triggers
        if (BgCreatures[n])
            DelCreature(n);

    m_isInformedNearVictory = false;
    m_BuffChange            = true;
    bool isBGWeekend        = sBattlegroundMgr->IsBGWeekend(GetTypeID());
    m_honorTicks            = isBGWeekend ? GilneasHonor[BG_HOLIDAY] : GilneasHonor[BG_NORMAL];
}

int8 BattlegroundBG::GetNodeFromObjectType(uint8 objectType) const
{
    int8 node = -1;
    if (objectType >= OBJECT_LIGHTHOUSE_BANNER_NEUTRAL && objectType <= OBJECT_LIGHTHOUSE_AURA_CONTESTED)
        node = NODE_LIGHTHOUSE;
    else if (objectType >= OBJECT_WATERWORKS_BANNER_NEUTRAL && objectType <= OBJECT_WATERWORKS_AURA_CONTESTED)
        node = NODE_WATERWORKS;
    else if (objectType >= OBJECT_MINE_BANNER_NEUTRAL && objectType <= OBJECT_MINE_AURA_CONTESTED)
        node = NODE_MINE;

    return node;
}

void BattlegroundBG::UpdatePlayerScore(Player* player, uint32 type, uint32 value, bool doAddHonor)
{
    BattlegroundScoreMap::iterator itr = PlayerScores.find(player->GetGUID());

    if (itr == PlayerScores.end())
        return;

    switch (type)
    {
        case SCORE_BASES_ASSAULTED:
            ((BattlegroundBGScore*)itr->second)->BasesAssaulted += value;
            player->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BG_OBJECTIVE_CAPTURE, OBJECTIVE_ASSAULT_BASE);
            break;
        case SCORE_BASES_DEFENDED:
            ((BattlegroundBGScore*)itr->second)->BasesDefended += value;
            player->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BG_OBJECTIVE_CAPTURE, OBJECTIVE_DEFEND_BASE);
            break;
        default:
            Battleground::UpdatePlayerScore(player, type, value, doAddHonor);
            break;
    }
}

void BattlegroundBG::EndBattleground(uint32 winner)
{
    // Win reward
    if (winner == ALLIANCE)
        RewardHonorToTeam(GetBonusHonorFromKill(1), ALLIANCE);

    if (winner == HORDE)
        RewardHonorToTeam(GetBonusHonorFromKill(1), HORDE);

    // Complete rewards
    RewardHonorToTeam(GetBonusHonorFromKill(1), HORDE);
    RewardHonorToTeam(GetBonusHonorFromKill(1), ALLIANCE);

    Battleground::EndBattleground(winner);
}

WorldSafeLocsEntry const* BattlegroundBG::GetClosestGraveYard(Player* player)
{
    uint32 const team = player->GetTeamId();

    // Is there any occupied node for this team?
    std::vector<uint8> nodes;
    for (uint8 n = 0; n < NODES_COUNT; ++n)
        if (m_nodeInfo[n].team == team)
            nodes.push_back(n);

    WorldSafeLocsEntry const* correctEntry = NULL;

    // If so, select the closest node to place ghost on
    if (!nodes.empty())
    {
        float const x = player->GetPositionX();
        float const y = player->GetPositionY();

        float minDist = 999999.0f; // Temp Hack
        for (uint8 n = 0; n < nodes.size(); ++n)
        {
            WorldSafeLocsEntry const* const entry = sWorldSafeLocsStore.LookupEntry(GilneasGraveyardIds[nodes[n]]);

            if (!entry || m_nodeInfo[n].team != team)
                continue;

            float const dist = (entry->x - x) * (entry->x - x) + (entry->y - y) * (entry->y - y);

            if (minDist > dist)
            {
                minDist = dist;
                correctEntry = entry;
            }
        }
        nodes.clear();
    }

    // If not, place ghost on starting location
    if (!correctEntry)
        correctEntry = sWorldSafeLocsStore.LookupEntry(GilneasGraveyardIds[team + 3]);

    return correctEntry;
}

bool BattlegroundBG::IsJuggerNotEligible(uint8 team) const
{
    if (m_TeamScores[team] == MAX_GILNEAS_TEAM_SCORE && m_TeamScores[GetSecondTeam(team)] == MAX_GILNEAS_TEAM_SCORE - 10.0f)
        return true;

    return false;
}

bool BattlegroundBG::IsDontGetCockyKidEligible(uint8 team) const
{
    return dontGetCockyKid[team];
}

bool BattlegroundBG::IsFullCoverageEligible(uint8 team) const
{
    uint32 count = 0;
    for (uint8 n = 0; n < NODES_COUNT; ++n)
        if (m_nodeInfo[n].bannerType == (n * 8 + team + 1))
            ++count;

    return count == NODES_COUNT;
}
