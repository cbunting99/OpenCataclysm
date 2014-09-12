/*
 * Copyright (C) 2013-2014 OpenCataclysm <http://wow.boi-infinity.com>
 * Copyright (C) 2010-2012 ProjectSkyfire <http://www.projectskyfire.org/>
 * Copyright (C) 2011-2012 ArkCORE <http://www.arkania.net/>
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#ifndef __BattlegroundBG_H
#define __BattlegroundBG_H

#include "Battleground.h"

enum GilneasNodeIds
{
    LIGHTHOUSE_BANNER       = 208779,
    MINE_BANNER             = 208780,
    WATERWORKS_BANNER       = 208781,

    OBJECTID_BANNER_A       = 180058,
    OBJECTID_BANNER_CONT_A  = 180059,
    OBJECTID_BANNER_H       = 180060,
    OBJECTID_BANNER_CONT_H  = 180061,

    OBJECTID_AURA_A         = 180100,
    OBJECTID_AURA_H         = 180101,
    OBJECTID_AURA_C         = 180102,

    OBJECTID_GATE_A_1       = 207177,
    OBJECTID_GATE_A_2       = 180322,
    OBJECTID_GATE_H_1       = 207178,
    OBJECTID_GATE_H_2       = 180322,
};

enum GilneasObjectType
{
    // Lighthouse
    OBJECT_LIGHTHOUSE_BANNER_NEUTRAL    = 0,
    OBJECT_LIGHTHOUSE_BANNER_ALLY       = 1,
    OBJECT_LIGHTHOUSE_BANNER_HORDE      = 2,
    OBJECT_LIGHTHOUSE_BANNER_CONT_A     = 3,
    OBJECT_LIGHTHOUSE_BANNER_CONT_H     = 4,
    OBJECT_LIGHTHOUSE_AURA_ALLY         = 5,
    OBJECT_LIGHTHOUSE_AURA_HORDE        = 6,
    OBJECT_LIGHTHOUSE_AURA_CONTESTED    = 7,

    // Waterworks
    OBJECT_WATERWORKS_BANNER_NEUTRAL    = 8,
    OBJECT_WATERWORKS_BANNER_ALLY       = 9,
    OBJECT_WATERWORKS_BANNER_HORDE      = 10,
    OBJECT_WATERWORKS_BANNER_CONT_A     = 11,
    OBJECT_WATERWORKS_BANNER_CONT_H     = 12,
    OBJECT_WATERWORKS_AURA_ALLY         = 13,
    OBJECT_WATERWORKS_AURA_HORDE        = 14,
    OBJECT_WATERWORKS_AURA_CONTESTED    = 15,

    // Mine
    OBJECT_MINE_BANNER_NEUTRAL          = 16,
    OBJECT_MINE_BANNER_ALLY             = 17,
    OBJECT_MINE_BANNER_HORDE            = 18,
    OBJECT_MINE_BANNER_CONT_A           = 19,
    OBJECT_MINE_BANNER_CONT_H           = 20,
    OBJECT_MINE_AURA_ALLY               = 21,
    OBJECT_MINE_AURA_HORDE              = 22,
    OBJECT_MINE_AURA_CONTESTED          = 23,

    // Gates
    OBJECT_GATE_A_1                     = 24,
    OBJECT_GATE_A_2                     = 25,
    OBJECT_GATE_H_1                     = 26,
    OBJECT_GATE_H_2                     = 27,

    // Buffs
    OBJECT_LIGHTHOUSE_SPEEDBUFF         = 28,
    OBJECT_LIGHTHOUSE_REGENBUFF         = 29,
    OBJECT_LIGHTHOUSE_BERSERKBUFF       = 30,
    OBJECT_WATERWORKS_SPEEDBUFF         = 31,
    OBJECT_WATERWORKS_REGENBUFF         = 32,
    OBJECT_WATERWORKS_BERSERKBUFF       = 33,
    OBJECT_MINE_SPEEDBUFF               = 34,
    OBJECT_MINE_REGENBUFF               = 35,
    OBJECT_MINE_BERSERKBUFF             = 36,
    GILNEAS_OBJECT_MAX                  = 37,
};

//BG_BG_OBJECTID_GATE_A               = 205496,
//BG_BG_OBJECTID_GATE_H               = 207178

enum GilneasMisc
{
    FLAG_CAPTURING_TIMER    = 60000,

    RESOURCES_WARN          = 1800,
    MAX_GILNEAS_TEAM_SCORE  = 2000,

    OBJECTIVE_ASSAULT_BASE  = 370,
    OBJECTIVE_DEFEND_BASE   = 371,

    GILNEAS_START_BATTLE    = 9158,
};

enum GilneasBattlegroundNodes
{
    NODE_LIGHTHOUSE         = 0,
    NODE_WATERWORKS         = 1,
    NODE_MINE               = 2,

    GILNEAS_SPIRIT_ALIANCE  = 3,
    GILNEAS_SPIRIT_HORDE    = 4,

    NODES_COUNT             = 3,
    ALL_NODES_COUNT         = 5,
};

enum GilneasSounds
{
    SOUND_NODE_CLAIMED            = 8192,
    SOUND_NODE_CAPTURED_ALLIANCE  = 8173,
    SOUND_NODE_CAPTURED_HORDE     = 8213,
    SOUND_NODE_ASSAULTED_ALLIANCE = 8212,
    SOUND_NODE_ASSAULTED_HORDE    = 8174,
    SOUND_NEAR_VICTORY            = 8456
};

float const GilneasNodes[NODES_COUNT][4] =
{
    { 1057.790f, 1278.285f, 3.1500f, 1.945662f }, // Lighthouse
    { 1251.010f, 958.2685f, 5.6000f, 5.892280f }, // Waterworks
    { 980.0446f, 948.7411f, 12.650f, 5.904071f }, // Mine
};

// x, y, z, o, rot0, rot1, rot2, rot3
float const GilneasDoors[4][8] =
{
    { 918.160f, 1336.75f, 27.6299f, 2.87927f, 0.0f, 0.0f, 0.983231f, 0.182367f },
    { 918.160f, 1336.75f, 26.6299f, 2.87927f, 0.0f, 0.0f, 0.983231f, 0.182367f },
    { 1396.15f, 977.014f, 7.43169f, 6.27043f, 0.0f, 0.0f, 0.006378f, -0.99998f },
    { 1396.15f, 977.014f, 0.33169f, 6.27043f, 0.0f, 0.0f, 0.006378f, -0.99998f },
};

float const GilneasSpiritGuides[ALL_NODES_COUNT][4] =
{
    { 1034.82f, 1335.58f, 12.0095f, 5.15f }, // Lighthouse
    { 887.578f, 937.337f, 23.7737f, 0.45f }, // Waterworks
    { 1252.23f, 836.547f, 27.7895f, 1.60f }, // Mine
    { 908.274f, 1338.6f, 27.6449f, 5.95f  }, // Alliance
    { 1401.38f, 977.125f, 7.44215f, 3.04f }, // Horde
};

float const GilneasBuffs[NODES_COUNT][4] =
{
    { 1063.57f, 1313.42f, 4.91f, 4.14f }, // Lighthouse
    { 961.830f, 977.03f, 14.15f, 4.55f }, // Waterworks
    { 1193.09f, 1017.46f, 7.98f, 0.24f }, // Mine
};

struct NodeInfo
{
    uint8 bannerType;
    uint32 timer;
    uint32 team;
};

struct GilneasStartingObjects
{
    uint32 type;
    uint32 entry;
    float x, y, z, o;
    float rotation0, rotation1, rotation2, rotation3;
    uint32 respawnTime;
};

GilneasStartingObjects const gilneasStartingObjects[GILNEAS_OBJECT_MAX] =
{
    // Lighthouse
    { OBJECT_LIGHTHOUSE_BANNER_NEUTRAL, LIGHTHOUSE_BANNER, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_BANNER_CONT_A, OBJECTID_BANNER_CONT_A, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_BANNER_CONT_H, OBJECTID_BANNER_CONT_H, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_BANNER_ALLY, OBJECTID_BANNER_A, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_BANNER_HORDE, OBJECTID_BANNER_H, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_AURA_ALLY, OBJECTID_AURA_A, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_AURA_HORDE, OBJECTID_AURA_H, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_AURA_CONTESTED, OBJECTID_AURA_C, GilneasNodes[0][0], GilneasNodes[0][1], GilneasNodes[0][2], GilneasNodes[0][3], 0, 0, sin(GilneasNodes[0][3] / 2.0f), cos(GilneasNodes[0][3] / 2.0f), RESPAWN_ONE_DAY },

    // Waterworks
    { OBJECT_WATERWORKS_BANNER_NEUTRAL, WATERWORKS_BANNER, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_BANNER_CONT_A, OBJECTID_BANNER_CONT_A, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_BANNER_CONT_H, OBJECTID_BANNER_CONT_H, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_BANNER_ALLY, OBJECTID_BANNER_A, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_BANNER_HORDE, OBJECTID_BANNER_H, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_AURA_ALLY, OBJECTID_AURA_A, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_AURA_HORDE, OBJECTID_AURA_H, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_AURA_CONTESTED, OBJECTID_AURA_C, GilneasNodes[1][0], GilneasNodes[1][1], GilneasNodes[1][2], GilneasNodes[1][3], 0, 0, sin(GilneasNodes[1][3] / 2.0f), cos(GilneasNodes[1][3] / 2.0f), RESPAWN_ONE_DAY },

    // Mine
    { OBJECT_MINE_BANNER_NEUTRAL, MINE_BANNER, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_BANNER_CONT_A, OBJECTID_BANNER_CONT_A, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_BANNER_CONT_H, OBJECTID_BANNER_CONT_H, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_BANNER_ALLY, OBJECTID_BANNER_A, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_BANNER_HORDE, OBJECTID_BANNER_H, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_AURA_ALLY, OBJECTID_AURA_A, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_AURA_HORDE, OBJECTID_AURA_H, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_AURA_CONTESTED, OBJECTID_AURA_C, GilneasNodes[2][0], GilneasNodes[2][1], GilneasNodes[2][2], GilneasNodes[2][3], 0, 0, sin(GilneasNodes[2][3] / 2.0f), cos(GilneasNodes[2][3] / 2.0f), RESPAWN_ONE_DAY },

    // Gates
    { OBJECT_GATE_A_1, OBJECTID_GATE_A_1, GilneasDoors[0][0], GilneasDoors[0][1], GilneasDoors[0][2], GilneasDoors[0][3], GilneasDoors[0][4], GilneasDoors[0][5], GilneasDoors[0][6], GilneasDoors[0][7], RESPAWN_IMMEDIATELY },
    { OBJECT_GATE_A_2, OBJECTID_GATE_A_2, GilneasDoors[1][0], GilneasDoors[1][1], GilneasDoors[1][2], GilneasDoors[1][3], GilneasDoors[1][4], GilneasDoors[1][5], GilneasDoors[1][6], GilneasDoors[1][7], RESPAWN_IMMEDIATELY },
    { OBJECT_GATE_H_1, OBJECTID_GATE_H_1, GilneasDoors[2][0], GilneasDoors[2][1], GilneasDoors[2][2], GilneasDoors[2][3], GilneasDoors[2][4], GilneasDoors[2][5], GilneasDoors[2][6], GilneasDoors[2][7], RESPAWN_IMMEDIATELY },
    { OBJECT_GATE_H_2, OBJECTID_GATE_H_2, GilneasDoors[3][0], GilneasDoors[3][1], GilneasDoors[3][2], GilneasDoors[3][3], GilneasDoors[3][4], GilneasDoors[3][5], GilneasDoors[3][6], GilneasDoors[3][7], RESPAWN_IMMEDIATELY },
    // Buffs
    { OBJECT_LIGHTHOUSE_SPEEDBUFF, Buff_Entries[0], GilneasBuffs[0][0], GilneasBuffs[0][1], GilneasBuffs[0][2], GilneasBuffs[0][3], 0, 0, sin(GilneasBuffs[0][3] / 2.0f), cos(GilneasBuffs[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_REGENBUFF, Buff_Entries[1], GilneasBuffs[0][0], GilneasBuffs[0][1], GilneasBuffs[0][2], GilneasBuffs[0][3], 0, 0, sin(GilneasBuffs[0][3] / 2.0f), cos(GilneasBuffs[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_LIGHTHOUSE_BERSERKBUFF, Buff_Entries[2], GilneasBuffs[0][0], GilneasBuffs[0][1], GilneasBuffs[0][2], GilneasBuffs[0][3], 0, 0, sin(GilneasBuffs[0][3] / 2.0f), cos(GilneasBuffs[0][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_SPEEDBUFF, Buff_Entries[0], GilneasBuffs[1][0], GilneasBuffs[1][1], GilneasBuffs[1][2], GilneasBuffs[1][3], 0, 0, sin(GilneasBuffs[1][3] / 2.0f), cos(GilneasBuffs[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_REGENBUFF, Buff_Entries[1], GilneasBuffs[1][0], GilneasBuffs[1][1], GilneasBuffs[1][2], GilneasBuffs[1][3], 0, 0, sin(GilneasBuffs[1][3] / 2.0f), cos(GilneasBuffs[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_WATERWORKS_BERSERKBUFF, Buff_Entries[2], GilneasBuffs[1][0], GilneasBuffs[1][1], GilneasBuffs[1][2], GilneasBuffs[1][3], 0, 0, sin(GilneasBuffs[1][3] / 2.0f), cos(GilneasBuffs[1][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_SPEEDBUFF, Buff_Entries[0], GilneasBuffs[2][0], GilneasBuffs[2][1], GilneasBuffs[2][2], GilneasBuffs[2][3], 0, 0, sin(GilneasBuffs[2][3] / 2.0f), cos(GilneasBuffs[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_REGENBUFF, Buff_Entries[1], GilneasBuffs[2][0], GilneasBuffs[2][1], GilneasBuffs[2][2], GilneasBuffs[2][3], 0, 0, sin(GilneasBuffs[2][3] / 2.0f), cos(GilneasBuffs[2][3] / 2.0f), RESPAWN_ONE_DAY },
    { OBJECT_MINE_BERSERKBUFF, Buff_Entries[2], GilneasBuffs[2][0], GilneasBuffs[2][1], GilneasBuffs[2][2], GilneasBuffs[2][3], 0, 0, sin(GilneasBuffs[2][3] / 2.0f), cos(GilneasBuffs[2][3] / 2.0f), RESPAWN_ONE_DAY },
};

uint32 const GilneasNodestates[3] = { 1767, 1772, 1782 };
uint32 const GilneasNodeicons[3] = { 1842, 1845, 1846 };

uint32 const GilneasTickIntervals[4] = { 0, 9000, 3000, 1000 };
uint32 const GilneasTickPoints[4] = { 0, 10, 10, 30 };

uint32 const GilneasGraveyardIds[ALL_NODES_COUNT] = { 1735, 1736, 1738, 1739, 1740 };

static uint32 const GilneasHonor[BG_HONOR_MODE_NUM] =
{
    330, // Normal honor
    200, // Holiday
};

enum GilneasWorldStates
{
    WORLDSTATE_ALLIANCE_SCORE   = 1776,
    WORLDSTATE_HORDE_SCORE      = 1777,
    WORLDSTATE_HORDE_BASES      = 1778,
    WORLDSTATE_ALLIANCE_BASES   = 1779,
    WORLDSTATE_MAX_SCORE        = 1780,
    WORLDSTATE_RESOURCES_WARN   = 1955,
};

struct BattlegroundBGScore : public BattlegroundScore
{
    BattlegroundBGScore() : BasesAssaulted(0), BasesDefended(0) { }
    ~BattlegroundBGScore() { }

    uint32 BasesAssaulted;
    uint32 BasesDefended;
};

class BattlegroundBG : public Battleground
{
    friend class BattlegroundMgr;

    public:
        BattlegroundBG();
        ~BattlegroundBG();

        void PostUpdateImpl(uint32 diff);
        void Reset();

        void AddPlayer(Player* player);
        void StartingEventCloseDoors();
        void StartingEventOpenDoors();

        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        void HandleAreaTrigger(Player* player, uint32 trigger);
        bool SetupBattleground();
        void EndBattleground(uint32 winner);

        void UpdatePlayerScore(Player* player, uint32 type, uint32 value, bool doAddHonor = true);
        void FillInitialWorldStates(WorldPacket& data);

        void EventPlayerClickedOnFlag(Player* player, GameObject* /*gameobject*/);

        void SendNodeUpdate(uint8 node);
        void CreateBanner(uint8 node, uint8 type, uint32 team, bool delay);
        void DeleteBanner(uint8 type);

        void NodeOccupied(uint8 node, uint32 team);
        void NodeDeOccupied(uint8 node);

        int32 GetNodeNameId(uint8 node) const;
        int8 GetNodeFromObjectType(uint8 objectType) const;
        uint8 GetBasesAmount(uint32 team) const;
        uint32 GetSecondTeam(uint32 team) const;

        bool IsJuggerNotEligible(uint8 team) const;
        bool IsDontGetCockyKidEligible(uint8 team) const;
        bool IsFullCoverageEligible(uint8 team) const;

    private:
        uint32 m_nodeTimers[NODES_COUNT];

        uint32 m_lastTick[BG_TEAMS_COUNT];
        uint32 m_honorScoreTicks[BG_TEAMS_COUNT];

        bool m_isInformedNearVictory;
        uint32 m_honorTicks;
        uint32 m_reputationTicks;

        NodeInfo m_nodeInfo[NODES_COUNT];
        bool dontGetCockyKid[BG_TEAMS_COUNT];
};
#endif
