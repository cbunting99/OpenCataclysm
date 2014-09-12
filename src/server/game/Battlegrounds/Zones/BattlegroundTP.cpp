/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "BattlegroundTP.h"
#include "Creature.h"
#include "GameObject.h"
#include "Language.h"
#include "Object.h"
#include "ObjectMgr.h"
#include "BattlegroundMgr.h"
#include "Player.h"
#include "World.h"
#include "WorldPacket.h"

BattlegroundTP::BattlegroundTP()
{
    BgObjects.resize(OBJECT_MAX);
    BgCreatures.resize(BG_CREATURES_MAX_TP);

    StartMessageIds[BG_STARTING_EVENT_FIRST]  = LANG_BG_TP_START_TWO_MINUTES;
    StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_BG_TP_START_ONE_MINUTE;
    StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_BG_TP_START_HALF_MINUTE;
    StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_BG_TP_HAS_BEGUN;

    Reset();
}

BattlegroundTP::~BattlegroundTP()
{
}

void BattlegroundTP::PostUpdateImpl(uint32 diff)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;
 
    if (GetElapsedTime() >= END_TIMER)
    {
        // Result is either tie or Horde wins
        if (GetTeamScore(BG_TEAM_ALLIANCE) == 0)
        {
            if (GetTeamScore(BG_TEAM_HORDE) == 0)
                EndBattleground(WINNER_NONE);
            else
                EndBattleground(HORDE);
        }
        // Alliance wins
        else if (GetTeamScore(BG_TEAM_HORDE) == 0)
            EndBattleground(ALLIANCE);
        // Same result, winner team is the one that scored last
        else if (GetTeamScore(BG_TEAM_HORDE) == GetTeamScore(BG_TEAM_ALLIANCE))
            EndBattleground(m_lastFlagCaptureTeam);
        // Check for higher score
        else if (GetTeamScore(BG_TEAM_HORDE) > GetTeamScore(BG_TEAM_ALLIANCE))
            EndBattleground(HORDE);
        else
            EndBattleground(ALLIANCE);
    }
    else if (GetElapsedTime() > uint32(m_minutesElapsed * MINUTE * IN_MILLISECONDS))
    {
        ++m_minutesElapsed;
        UpdateWorldState(STATE_TIMER, 28 - m_minutesElapsed);
    }

    if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_WAIT_RESPAWN)
    {
        m_flagsTimer[BG_TEAM_ALLIANCE] -= diff;

        if (m_flagsTimer[BG_TEAM_ALLIANCE] < 0)
        {
            m_flagsTimer[BG_TEAM_ALLIANCE] = 0;
            RespawnFlag(BG_TEAM_ALLIANCE, true);
        }
    }

    if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_ON_GROUND)
    {
        m_flagsDropTimer[BG_TEAM_ALLIANCE] -= diff;

        if (m_flagsDropTimer[BG_TEAM_ALLIANCE] <= 0)
        {
            m_flagsDropTimer[BG_TEAM_ALLIANCE] = 0;
            RespawnFlagAfterDrop(BG_TEAM_ALLIANCE);
            m_bothFlagsKept = false;
        }
    }

    if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_WAIT_RESPAWN)
    {
        m_flagsTimer[BG_TEAM_HORDE] -= diff;

        if (m_flagsTimer[BG_TEAM_HORDE] < 0)
        {
            m_flagsTimer[BG_TEAM_HORDE] = 0;
            RespawnFlag(BG_TEAM_HORDE, true);
        }
    }

    if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_ON_GROUND)
    {
        m_flagsDropTimer[BG_TEAM_HORDE] -= diff;

        if (m_flagsDropTimer[BG_TEAM_HORDE] <= 0)
        {
            m_flagsDropTimer[BG_TEAM_HORDE] = 0;
            RespawnFlagAfterDrop(BG_TEAM_HORDE);
            m_bothFlagsKept = false;
        }
    }

    if (m_bothFlagsKept)
    {
        m_flagSpellForceTimer += diff;
        if (m_flagDebuffState == 0 && m_flagSpellForceTimer >= SPELL_FORCE_TIME)
        {
            HandleDebuff(true, true);
            m_flagDebuffState = 1;
            m_tempFlagDebuffState = 0;
        }
        else if (m_flagDebuffState == 1 && m_flagSpellForceTimer >= SPELL_BRUTAL_TIME)
        {
            HandleDebuff(true, true);
            m_flagDebuffState = 2;
            m_tempFlagDebuffState = 1;
            m_flagSpellForceTimer = 0;
        }
    }
}

void BattlegroundTP::StartingEventCloseDoors()
{
    for (uint32 i = OBJECT_DOOR_A_1; i <= OBJECT_DOOR_H_3; ++i)
    {
        DoorClose(i);
        SpawnBGObject(i, RESPAWN_IMMEDIATELY);
    }

    for (uint32 i = OBJECT_A_FLAG; i <= OBJECT_BERSERKBUFF_2; ++i)
        SpawnBGObject(i, RESPAWN_ONE_DAY);

    UpdateWorldState(STATE_TIMER_ACTIVE, 1);
    UpdateWorldState(STATE_TIMER, 25);
}

void BattlegroundTP::StartingEventOpenDoors()
{
    for (uint32 i = OBJECT_DOOR_A_1; i <= OBJECT_DOOR_H_3; ++i)
    {
        DoorOpen(i);
        SpawnBGObject(i, RESPAWN_ONE_DAY);
    }

    for (uint32 i = OBJECT_A_FLAG; i <= OBJECT_BERSERKBUFF_2; ++i)
        SpawnBGObject(i, RESPAWN_IMMEDIATELY);

    // Peak Speed
    StartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, EVENT_START_BATTLE);
}

void BattlegroundTP::AddPlayer(Player* player)
{
    Battleground::AddPlayer(player);
    //create score and add it to map, default values are set in constructor
    BattlegroundTPScore* const score = new BattlegroundTPScore;

    PlayerScores[player->GetGUID()] = score;
}

void BattlegroundTP::RespawnFlag(uint32 team, bool captured)
{
    m_flagState[team] = FLAG_STATE_ON_BASE;

    if (captured)
    {
        SpawnBGObject(OBJECT_H_FLAG, RESPAWN_IMMEDIATELY);
        SpawnBGObject(OBJECT_A_FLAG, RESPAWN_IMMEDIATELY);
        SendMessageToAll(LANG_BG_TP_F_PLACED, CHAT_MSG_BG_SYSTEM_NEUTRAL);
        PlaySoundToAll(SOUND_FLAGS_RESPAWNED);
    }
    m_bothFlagsKept = false;
}

void BattlegroundTP::RespawnFlagAfterDrop(uint32 team)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    uint32 flagEntry = (team == BG_TEAM_ALLIANCE) ? OBJECT_A_FLAG_GROUND_TP_ENTRY : OBJECT_H_FLAG_GROUND_TP_ENTRY;

    // Quite bad code, but I don't still know why the flag is not removed automatically as in WSG
    if (GetBgMap())
    {
        Map::PlayerList const& playerList = GetBgMap()->GetPlayers();
        if (!playerList.isEmpty())
            if (Player* const player = playerList.begin()->getSource())
                if (GameObject* const gameobject = player->FindNearestGameObject(flagEntry, 250.0f))
                    gameobject->Delete();
    }

    RespawnFlag(team, false);
    if (team == BG_TEAM_ALLIANCE)
    {
        SpawnBGObject(OBJECT_A_FLAG, RESPAWN_IMMEDIATELY);
        SendMessageToAll(LANG_BG_TP_ALLIANCE_FLAG_RESPAWNED, CHAT_MSG_BG_SYSTEM_NEUTRAL);
    }
    else
    {
        SpawnBGObject(OBJECT_H_FLAG, RESPAWN_IMMEDIATELY);
        SendMessageToAll(LANG_BG_TP_HORDE_FLAG_RESPAWNED, CHAT_MSG_BG_SYSTEM_NEUTRAL);
    }

    PlaySoundToAll(SOUND_FLAGS_RESPAWNED);
    m_bothFlagsKept = false;
}

void BattlegroundTP::HandleDebuff(bool apply, bool castNewSpell /*= false*/)
{
    for (uint8 n = 0; n < 2; ++n)
    {
        if (Player* const player = ObjectAccessor::FindPlayer(m_flagKeepers[n]))
        {
            // Check for dead flag carrier
            if (!player->isAlive())
                continue;

            if (apply)
            {
                if (m_tempFlagDebuffState == 0 || (castNewSpell && m_flagDebuffState == 1))
                    player->CastSpell(player, SPELL_FOCUSED_ASSAULT, true);
                else if (m_tempFlagDebuffState == 1 || (castNewSpell && m_flagDebuffState == 2))
                    player->CastSpell(player, SPELL_BRUTAL_ASSAULT, true);
            }
            else
            {
                // If player doesn't have the aura, doesn't matter. For sure we remove both debuffs
                player->RemoveAurasDueToSpell(SPELL_FOCUSED_ASSAULT);
                player->RemoveAurasDueToSpell(SPELL_BRUTAL_ASSAULT);
                m_bothFlagsKept = false;
            }
        }
    }
}

void BattlegroundTP::EventPlayerCapturedFlag(Player* player)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    uint32 winner = 0;

    player->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_ENTER_PVP_COMBAT);
    if (player->GetTeam() == ALLIANCE)
    {
        if (!IsFlagPickedup(BG_TEAM_HORDE))
            return;

        SetFlagPickerGUID(0, BG_TEAM_HORDE);
        m_flagState[BG_TEAM_HORDE] = FLAG_STATE_WAIT_RESPAWN;

        player->RemoveAurasDueToSpell(SPELL_HORDE_FLAG);
        if (GetTeamScore(BG_TEAM_ALLIANCE) < MAX_TEAM_SCORE)
            AddPoint(ALLIANCE, 1);
        
        PlaySoundToAll(SOUND_FLAG_CAPTURED_ALLIANCE);
        RewardReputationToTeam(REPUTATION_ALLIANCE, m_reputationCapture, ALLIANCE);
    }
    else
    {
        if (!IsFlagPickedup(BG_TEAM_ALLIANCE))
            return;

        SetFlagPickerGUID(0, BG_TEAM_ALLIANCE);
        m_flagState[BG_TEAM_ALLIANCE] = FLAG_STATE_WAIT_RESPAWN;

        player->RemoveAurasDueToSpell(SPELL_ALLIANCE_FLAG);
        if (GetTeamScore(BG_TEAM_HORDE) < MAX_TEAM_SCORE)
            AddPoint(HORDE, 1);
        PlaySoundToAll(SOUND_FLAG_CAPTURED_HORDE);
        RewardReputationToTeam(REPUTATION_HORDE, m_reputationCapture, HORDE);
    }

    // Debuff handling
    HandleDebuff(false);
    m_flagDebuffState = 0;
    m_flagSpellForceTimer = 0;

    // 2 Honor Kills
    RewardHonorToTeam(GetBonusHonorFromKill(2), player->GetTeam());

    SpawnBGObject(OBJECT_H_FLAG, FLAG_RESPAWN_TIME);
    SpawnBGObject(OBJECT_A_FLAG, FLAG_RESPAWN_TIME);

    if (player->GetTeam() == ALLIANCE)
        SendMessageToAll(LANG_BG_TP_CAPTURED_HF, CHAT_MSG_BG_SYSTEM_ALLIANCE, player);
    else
        SendMessageToAll(LANG_BG_TP_CAPTURED_AF, CHAT_MSG_BG_SYSTEM_HORDE, player);

    UpdateFlagState(player->GetTeamId(), 1);                  // flag state none
    UpdateTeamScore(player->GetTeamId());

    UpdatePlayerScore(player, SCORE_FLAG_CAPTURES, 1);      // +1 flag captures
    SetLastFlagCapture(player->GetTeam());
    scoreList.push_front(uint32(player->GetTeamId()));

    if (GetTeamScore(BG_TEAM_ALLIANCE) == MAX_TEAM_SCORE)
        winner = ALLIANCE;

    if (GetTeamScore(BG_TEAM_HORDE) == MAX_TEAM_SCORE)
        winner = HORDE;

    if (winner)
    {
        UpdateWorldState(FLAG_UNK_ALLIANCE, 0);
        UpdateWorldState(FLAG_UNK_HORDE, 0);
        UpdateWorldState(FLAG_STATE_ALLIANCE, 1);
        UpdateWorldState(FLAG_STATE_HORDE, 1);
        UpdateWorldState(STATE_TIMER_ACTIVE, 0);

        RewardHonorToTeam(TwinPeaksHonor[m_HonorMode][BG_TP_WIN], winner);
        EndBattleground(winner);
    }
    else
        m_flagsTimer[GetTeamIndexByTeamId(player->GetTeam()) ? 0 : 1] = FLAG_RESPAWN_TIME;
}

void BattlegroundTP::EventPlayerDroppedFlag(Player* player)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
    {
        if (player->GetTeam() == ALLIANCE)
        {
            if (!IsFlagPickedup(BG_TEAM_HORDE))
                return;

            if (GetFlagPickerGUID(BG_TEAM_HORDE) == player->GetGUID())
            {
                SetFlagPickerGUID(0, BG_TEAM_HORDE);
                player->RemoveAurasDueToSpell(SPELL_HORDE_FLAG);
            }
        }
        else
        {
            if (!IsFlagPickedup(BG_TEAM_ALLIANCE))
                return;

            if (GetFlagPickerGUID(BG_TEAM_ALLIANCE) == player->GetGUID())
            {
                SetFlagPickerGUID(0, BG_TEAM_ALLIANCE);
                player->RemoveAurasDueToSpell(SPELL_ALLIANCE_FLAG);
            }
        }
        return;
    }

    bool set = false;

    // Debuff handling
    HandleDebuff(false);

    if (player->GetTeam() == ALLIANCE)
    {
        if (!IsFlagPickedup(BG_TEAM_HORDE))
            return;
        if (GetFlagPickerGUID(BG_TEAM_HORDE) == player->GetGUID())
        {
            SetFlagPickerGUID(0, BG_TEAM_HORDE);
            player->RemoveAurasDueToSpell(SPELL_HORDE_FLAG);
            m_flagState[BG_TEAM_HORDE] = FLAG_STATE_ON_GROUND;
            player->CastSpell(player, SPELL_HORDE_FLAG_DROPPED, true);
            set = true;
        }
    }
    else
    {
        if (!IsFlagPickedup(BG_TEAM_ALLIANCE))
            return;
        if (GetFlagPickerGUID(BG_TEAM_ALLIANCE) == player->GetGUID())
        {
            SetFlagPickerGUID(0, BG_TEAM_ALLIANCE);
            player->RemoveAurasDueToSpell(SPELL_ALLIANCE_FLAG);
            m_flagState[BG_TEAM_ALLIANCE] = FLAG_STATE_ON_GROUND;
            player->CastSpell(player, SPELL_ALLIANCE_FLAG_DROPPED, true);
            set = true;
        }
    }

    if (set)
    {
        player->CastSpell(player, SPELL_RECENTLY_DROPPED_FLAG, true);
        UpdateFlagState(player->GetTeamId(), 1);

        if (player->GetTeam() == ALLIANCE)
        {
            SendMessageToAll(LANG_BG_TP_DROPPED_HF, CHAT_MSG_BG_SYSTEM_HORDE, player);
            UpdateWorldState(FLAG_UNK_HORDE, uint32(-1));
        }
        else
        {
            SendMessageToAll(LANG_BG_TP_DROPPED_AF, CHAT_MSG_BG_SYSTEM_ALLIANCE, player);
            UpdateWorldState(FLAG_UNK_ALLIANCE, uint32(-1));
        }

        m_flagsDropTimer[GetTeamIndexByTeamId(player->GetTeam()) ? 0 : 1] = FLAG_DROP_TIME;
    }
}

void BattlegroundTP::EventPlayerClickedOnFlag(Player* player, GameObject* gameobject)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    int32 messageId = 0;
    ChatMsg type = CHAT_MSG_BG_SYSTEM_NEUTRAL;

    if (player->GetTeam() == HORDE && GetFlagState(BG_TEAM_ALLIANCE) == FLAG_STATE_ON_BASE && BgObjects[OBJECT_A_FLAG] == gameobject->GetGUID())
    {
        messageId = LANG_BG_TP_PICKEDUP_AF;
        type = CHAT_MSG_BG_SYSTEM_HORDE;
        PlaySoundToAll(SOUND_ALLIANCE_FLAG_PICKED_UP);
        SpawnBGObject(OBJECT_A_FLAG, RESPAWN_ONE_DAY);
        SetFlagPickerGUID(player->GetGUID(), BG_TEAM_ALLIANCE);
        m_flagState[BG_TEAM_ALLIANCE] = FLAG_STATE_ON_PLAYER;

        UpdateFlagState(BG_TEAM_HORDE, FLAG_STATE_ON_PLAYER);
        UpdateWorldState(FLAG_UNK_ALLIANCE, 1);
        player->CastSpell(player, SPELL_ALLIANCE_FLAG, true);
        // Fire, Walk With Me
        player->StartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_SPELL_TARGET, SPELL_ALLIANCE_FLAG_PICKED);
        if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_ON_PLAYER)
            m_bothFlagsKept = true;
    }

    if (player->GetTeam() == ALLIANCE && GetFlagState(BG_TEAM_HORDE) == FLAG_STATE_ON_BASE && BgObjects[OBJECT_H_FLAG] == gameobject->GetGUID())
    {
        messageId = LANG_BG_TP_PICKEDUP_HF;
        type = CHAT_MSG_BG_SYSTEM_ALLIANCE;
        PlaySoundToAll(SOUND_HORDE_FLAG_PICKED_UP);
        SpawnBGObject(OBJECT_H_FLAG, RESPAWN_ONE_DAY);
        SetFlagPickerGUID(player->GetGUID(), BG_TEAM_HORDE);
        m_flagState[BG_TEAM_HORDE] = FLAG_STATE_ON_PLAYER;

        UpdateFlagState(BG_TEAM_ALLIANCE, FLAG_STATE_ON_PLAYER);
        UpdateWorldState(FLAG_UNK_HORDE, 1);
        player->CastSpell(player, SPELL_HORDE_FLAG, true);
        // Fire, Walk With Me
        player->StartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_SPELL_TARGET, SPELL_HORDE_FLAG_PICKED);
        if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_ON_PLAYER)
            m_bothFlagsKept = true;
    }

    if (GetFlagState(BG_TEAM_ALLIANCE) == FLAG_STATE_ON_GROUND && player->IsWithinDistInMap(gameobject, 10.0f))
    {
        if (player->GetTeam() == ALLIANCE)
        {
            messageId = LANG_BG_TP_RETURNED_AF;
            type = CHAT_MSG_BG_SYSTEM_ALLIANCE;
            UpdateFlagState(BG_TEAM_HORDE, FLAG_STATE_WAIT_RESPAWN);
            RespawnFlag(BG_TEAM_ALLIANCE, false);
            SpawnBGObject(OBJECT_A_FLAG, RESPAWN_IMMEDIATELY);
            PlaySoundToAll(SOUND_FLAG_RETURNED);
            UpdatePlayerScore(player, SCORE_FLAG_RETURNS, 1);
            m_bothFlagsKept = false;
        }
        else
        {
            messageId = LANG_BG_TP_PICKEDUP_AF;
            type = CHAT_MSG_BG_SYSTEM_HORDE;
            PlaySoundToAll(SOUND_ALLIANCE_FLAG_PICKED_UP);
            SpawnBGObject(OBJECT_A_FLAG, RESPAWN_ONE_DAY);
            SetFlagPickerGUID(player->GetGUID(), BG_TEAM_ALLIANCE);
            player->CastSpell(player, SPELL_ALLIANCE_FLAG, true);
            m_flagState[BG_TEAM_ALLIANCE] = FLAG_STATE_ON_PLAYER;
            UpdateFlagState(BG_TEAM_HORDE, FLAG_STATE_ON_PLAYER);
            UpdateWorldState(FLAG_UNK_ALLIANCE, 1);
            if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_ON_PLAYER)
                m_bothFlagsKept = true;
        }
        gameobject->Delete();
    }

    if (GetFlagState(BG_TEAM_HORDE) == FLAG_STATE_ON_GROUND && player->IsWithinDistInMap(gameobject, 10.0f))
    {
        if (player->GetTeam() == HORDE)
        {
            messageId = LANG_BG_TP_RETURNED_HF;
            type = CHAT_MSG_BG_SYSTEM_HORDE;
            UpdateFlagState(BG_TEAM_ALLIANCE, FLAG_STATE_WAIT_RESPAWN);
            RespawnFlag(BG_TEAM_HORDE, false);
            SpawnBGObject(OBJECT_H_FLAG, RESPAWN_IMMEDIATELY);
            PlaySoundToAll(SOUND_FLAG_RETURNED);
            UpdatePlayerScore(player, SCORE_FLAG_RETURNS, 1);
            m_bothFlagsKept = false;
        }
        else
        {
            messageId = LANG_BG_TP_PICKEDUP_HF;
            type = CHAT_MSG_BG_SYSTEM_ALLIANCE;
            PlaySoundToAll(SOUND_HORDE_FLAG_PICKED_UP);
            SpawnBGObject(OBJECT_H_FLAG, RESPAWN_ONE_DAY);
            SetFlagPickerGUID(player->GetGUID(), BG_TEAM_HORDE);
            player->CastSpell(player, SPELL_HORDE_FLAG, true);
            m_flagState[BG_TEAM_HORDE] = FLAG_STATE_ON_PLAYER;
            UpdateFlagState(BG_TEAM_ALLIANCE, FLAG_STATE_ON_PLAYER);
            UpdateWorldState(FLAG_UNK_HORDE, 1);
            if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_ON_PLAYER)
                m_bothFlagsKept = true;
        }
        gameobject->Delete();
    }

    // Debuff handling
    if (m_bothFlagsKept && m_flagDebuffState > 0)
        HandleDebuff(true);

    if (!messageId)
        return;

    SendMessageToAll(messageId, type, player);
    player->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_ENTER_PVP_COMBAT);
}

void BattlegroundTP::RemovePlayer(Player* player, uint64 guid, uint32 /*team*/)
{
    if (IsFlagPickedup(ALLIANCE) && m_flagKeepers[BG_TEAM_ALLIANCE] == guid)
    {
        if (!player)
        {
            SetFlagPickerGUID(0, BG_TEAM_ALLIANCE);
            RespawnFlag(BG_TEAM_ALLIANCE, false);
        }
        else
            EventPlayerDroppedFlag(player);
    }
    if (IsFlagPickedup(HORDE) && m_flagKeepers[BG_TEAM_HORDE] == guid)
    {
        if (!player)
        {
            SetFlagPickerGUID(0, BG_TEAM_HORDE);
            RespawnFlag(BG_TEAM_HORDE, false);
        }
        else
            EventPlayerDroppedFlag(player);
    }
}

void BattlegroundTP::UpdateFlagState(uint32 team, uint32 value)
{
    if (team == BG_TEAM_ALLIANCE)
        UpdateWorldState(FLAG_STATE_ALLIANCE, value);
    else
        UpdateWorldState(FLAG_STATE_HORDE, value);
}

void BattlegroundTP::UpdateTeamScore(uint32 team)
{
    if (team == BG_TEAM_ALLIANCE)
        UpdateWorldState(FLAG_CAPTURES_ALLIANCE, GetTeamScore(team));
    else
        UpdateWorldState(FLAG_CAPTURES_HORDE, GetTeamScore(team));
}

void BattlegroundTP::HandleAreaTrigger(Player* player, uint32 trigger)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    switch (trigger)
    {
        case 5904: // Alliance Flag spawn
            if (m_flagState[BG_TEAM_HORDE] && !m_flagState[BG_TEAM_ALLIANCE])
                if (GetFlagPickerGUID(BG_TEAM_HORDE) == player->GetGUID())
                    EventPlayerCapturedFlag(player);
            break;
        case 5905: // Horde Flag spawn
            if (m_flagState[BG_TEAM_ALLIANCE] && !m_flagState[BG_TEAM_HORDE])
                if (GetFlagPickerGUID(BG_TEAM_ALLIANCE) == player->GetGUID())
                    EventPlayerCapturedFlag(player);
            break;
        case 5908: // Horde Tower
        case 5909: // Twin Peak House big
        case 5910: // Horde House
        case 5911: // Twin Peak House small
        case 5914: // Alliance Start right
        case 5916: // Alliance Start
        case 5917: // Alliance Start left
        case 5918: // Horde Start
        case 5920: // Horde Start Front entrance
        case 5921: // Horde Start left Water channel
            break;
        default:
            sLog->outError(LOG_FILTER_BATTLEGROUND, "Twin Peaks: WARNING! Unhandled AreaTrigger in Battleground: %u", trigger);
            break;
    }
}

bool BattlegroundTP::SetupBattleground()
{
    for (uint8 n = 0; n < MAX_STARTING_OBJECTS; ++n)
    {
        if (!AddObject(startingObjects[n].type,
            startingObjects[n].entry,
            startingObjects[n].x,
            startingObjects[n].y,
            startingObjects[n].z,
            startingObjects[n].o,
            startingObjects[n].rotation0,
            startingObjects[n].rotation1,
            startingObjects[n].rotation2,
            startingObjects[n].rotation3,
            startingObjects[n].respawnTime))
        {
            sLog->outError(LOG_FILTER_BATTLEGROUND, "Twin Peaks: Failed to spawn some objects! Battleground was not created!");
            return false;
        }
    }

    for (uint8 n = 0; n < MAX_GRAVEYARDS; ++n)
    {
        WorldSafeLocsEntry const* const locations = sWorldSafeLocsStore.LookupEntry(graveyards[n].entry);
        if (!locations || !AddSpiritGuide(graveyards[n].type, locations->x, locations->y, locations->z, 3.641396f, graveyards[n].team))
        {
            sLog->outError(LOG_FILTER_BATTLEGROUND, "Twin Peaks: Failed to spawn %s spirit guide! Battleground was not created!",
                graveyards[n].team == BG_TEAM_ALLIANCE ? "Alliance" : "Horde");
            return false;
        }
    }

    sLog->outDebug(LOG_FILTER_BATTLEGROUND, "Twin Peaks: BG objects and spirit guides have been spawned");

    return true;
}

void BattlegroundTP::Reset()
{
    Battleground::Reset();

    for (uint8 n = 0; n < 2; ++n)
    {
        m_flagKeepers[n] = 0;
        m_flagsTimer[n] = 0;
        m_flagState[n] = FLAG_STATE_ON_BASE;
        m_TeamScores[n] = 0;
    }

    bool isBGWeekend                    = sBattlegroundMgr->IsBGWeekend(GetTypeID());
    m_bothFlagsKept                     = false;
    m_flagSpellForceTimer               = 0;
    m_flagDebuffState                   = 0;
    m_tempFlagDebuffState               = 0;
    m_reputationCapture                 = (isBGWeekend) ? 45 : 35;
    m_honorWinKills                     = (isBGWeekend) ? 3 : 1;
    m_honorEndKills                     = (isBGWeekend) ? 4 : 2;
    m_minutesElapsed                    = 0;
    m_lastFlagCaptureTeam               = 0;

    scoreList.clear();
}

void BattlegroundTP::EndBattleground(uint32 winner)
{
    // Win reward
    if (winner == BG_TEAM_ALLIANCE)
        RewardHonorToTeam(GetBonusHonorFromKill(m_honorWinKills), BG_TEAM_ALLIANCE);

    if (winner == BG_TEAM_HORDE)
        RewardHonorToTeam(GetBonusHonorFromKill(m_honorWinKills), BG_TEAM_HORDE);

    // Complete map end rewards
    RewardHonorToTeam(GetBonusHonorFromKill(m_honorEndKills), BG_TEAM_ALLIANCE);
    RewardHonorToTeam(GetBonusHonorFromKill(m_honorEndKills), BG_TEAM_HORDE);

    Battleground::EndBattleground(winner);
}

void BattlegroundTP::HandleKillPlayer(Player* player, Player* killer)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    EventPlayerDroppedFlag(player);
    Battleground::HandleKillPlayer(player, killer);
}

void BattlegroundTP::UpdatePlayerScore(Player* player, uint32 type, uint32 value, bool doAddHonor)
{
    BattlegroundScoreMap::iterator itr = PlayerScores.find(player->GetGUID());
    if (itr == PlayerScores.end())
        return;

    switch (type)
    {
        // Cloud Nine achievement
        case SCORE_FLAG_CAPTURES:
            ((BattlegroundTPScore*)itr->second)->FlagCaptures += value;
            player->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BG_OBJECTIVE_CAPTURE, OBJECTIVE_CAPTURE_FLAG);
            break;
        case SCORE_FLAG_RETURNS:
            ((BattlegroundTPScore*)itr->second)->FlagReturns += value;
            player->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BG_OBJECTIVE_CAPTURE, OBJECTIVE_RETURN_FLAG);
            break;
        default:
            Battleground::UpdatePlayerScore(player, type, value, doAddHonor);
            break;
    }
}

WorldSafeLocsEntry const* BattlegroundTP::GetClosestGraveYard(Player* player)
{
    if (player->GetTeam() == ALLIANCE)
    {
        if (GetStatus() == STATUS_IN_PROGRESS)
        {
            float x, y, z;
            player->GetPosition(x, y, z);

            WorldSafeLocsEntry const* closest = sWorldSafeLocsStore.LookupEntry(GRAVEYARD_MIDDLE_ALLIANCE);
            float nearest = sqrt((closest->x - x) * (closest->x - x) + (closest->y - y) * (closest->y - y) + (closest->z - z) * (closest->z - z));

            WorldSafeLocsEntry const* const ret = sWorldSafeLocsStore.LookupEntry(GRAVEYARD_START_ALLIANCE);
            float const dist = sqrt((ret->x - x) * (ret->x - x) + (ret->y - y) * (ret->y - y) + (ret->z - z) * (ret->z - z));

            if (dist < nearest)
            {
                closest = ret;
                nearest = dist;
            }

            return closest;
        }
        else
            return sWorldSafeLocsStore.LookupEntry(GRAVEYARD_FLAGROOM_ALLIANCE);
    }
    else
    {
        if (GetStatus() == STATUS_IN_PROGRESS)
            return sWorldSafeLocsStore.LookupEntry(GRAVEYARD_MIDDLE_HORDE);
        else
            return sWorldSafeLocsStore.LookupEntry(GRAVEYARD_FLAGROOM_HORDE);
    }
}

void BattlegroundTP::FillInitialWorldStates(WorldPacket& data)
{
    data << uint32(FLAG_CAPTURES_ALLIANCE) << uint32(GetTeamScore(BG_TEAM_ALLIANCE));
    data << uint32(FLAG_CAPTURES_HORDE) << uint32(GetTeamScore(BG_TEAM_HORDE));

    if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_ON_GROUND)
        data << uint32(FLAG_UNK_ALLIANCE) << uint32(-1);
    else if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_ON_PLAYER)
        data << uint32(FLAG_UNK_ALLIANCE) << uint32(1);
    else
        data << uint32(FLAG_UNK_ALLIANCE) << uint32(0);

    if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_ON_GROUND)
        data << uint32(FLAG_UNK_HORDE) << uint32(-1);
    else if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_ON_PLAYER)
        data << uint32(FLAG_UNK_HORDE) << uint32(1);
    else
        data << uint32(FLAG_UNK_HORDE) << uint32(0);

    data << uint32(FLAG_CAPTURES_MAX) << uint32(MAX_TEAM_SCORE);

    if (GetStatus() == STATUS_IN_PROGRESS)
    {
        data << uint32(STATE_TIMER_ACTIVE) << uint32(1);
        data << uint32(STATE_TIMER) << uint32(28 - m_minutesElapsed);
    }
    else
        data << uint32(STATE_TIMER_ACTIVE) << uint32(0);

    if (m_flagState[BG_TEAM_HORDE] == FLAG_STATE_ON_PLAYER)
        data << uint32(FLAG_STATE_ALLIANCE) << uint32(2);
    else
        data << uint32(FLAG_STATE_ALLIANCE) << uint32(1);

    if (m_flagState[BG_TEAM_ALLIANCE] == FLAG_STATE_ON_PLAYER)
        data << uint32(FLAG_STATE_HORDE) << uint32(2);
    else
        data << uint32(FLAG_STATE_HORDE) << uint32(1);
}

uint32 BattlegroundTP::GetSecondTeam(uint32 team) const
{
    if (team == BG_TEAM_ALLIANCE)
        return BG_TEAM_HORDE;
    else
        return BG_TEAM_ALLIANCE;
}

bool BattlegroundTP::IsDoubleJeopardyEligible(Player* const player) const
{
    if (!player)
        return false;

    // Score must be 3 : 2
    if (GetTeamScore(player->GetTeamId()) != 3 || GetTeamScore(GetSecondTeam(player->GetTeamId())) != 2)
        return false;

    // Last three captures must be done by winner's team
    uint8 n = 0;
    for (std::list<uint32>::const_iterator itr = scoreList.begin(); n < 3; ++itr, ++n)
        if (*itr != player->GetTeamId())
            return false;

    return true;
}

bool BattlegroundTP::IsTwinPeaksPerfectionEligible(Player* const player) const
{
    if (!player)
        return false;

    BattlegroundScoreMap::const_iterator itr = PlayerScores.find(player->GetGUID());
    if (itr == PlayerScores.end())
        return false;

    // Score must be 3 : 0
    if (GetTeamScore(player->GetTeamId()) != 3 || GetTeamScore(GetSecondTeam(player->GetTeamId())) != 0)
        return false;

    // At least one killing blow
    BattlegroundTPScore const* const score = (BattlegroundTPScore*)itr->second;
    if (score->KillingBlows == 0 || score->Deaths != 0)
        return false;

    return true;
}

bool BattlegroundTP::HandlePlayerUnderMap(Player* /*plr*/)
{
    return false; // On purpose to kill players that go to zone 'Hazardous water' to avoid being killed with flag
}
