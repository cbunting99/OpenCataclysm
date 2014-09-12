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

#ifndef __BATTLEGROUNDTP_H
#define __BATTLEGROUNDTP_H

#include "Battleground.h"

enum TwinPeaksTimers
{
    FLAG_RESPAWN_TIME = 23000,
    FLAG_DROP_TIME    = 10000,
    SPELL_FORCE_TIME  = 600000,
    SPELL_BRUTAL_TIME = 900000,
    END_TIMER         = 1500000,
};

enum TwinPeaksSounds
{
    SOUND_FLAG_CAPTURED_ALLIANCE  = 8173,
    SOUND_FLAG_CAPTURED_HORDE     = 8213,
    SOUND_FLAG_PLACED             = 8232,
    SOUND_FLAG_RETURNED           = 8192,
    SOUND_HORDE_FLAG_PICKED_UP    = 8212,
    SOUND_ALLIANCE_FLAG_PICKED_UP = 8174,
    SOUND_FLAGS_RESPAWNED         = 8232
};

enum TwinPeaksSpells
{
    SPELL_HORDE_FLAG            = 23333,
    SPELL_HORDE_FLAG_DROPPED    = 23334,
    SPELL_HORDE_FLAG_PICKED     = 61266, // Fake spell
    SPELL_ALLIANCE_FLAG         = 23335,
    SPELL_ALLIANCE_FLAG_DROPPED = 23336,
    SPELL_ALLIANCE_FLAG_PICKED  = 61265, // Fake spell
    SPELL_FOCUSED_ASSAULT       = 46392,
    SPELL_BRUTAL_ASSAULT        = 46393,
};

enum TwinPeaksWorldStates
{
    FLAG_UNK_ALLIANCE      = 1545,
    FLAG_UNK_HORDE         = 1546,
    FLAG_CAPTURES_ALLIANCE = 1581,
    FLAG_CAPTURES_HORDE    = 1582,
    FLAG_CAPTURES_MAX      = 1601,
    FLAG_STATE_HORDE       = 2338,
    FLAG_STATE_ALLIANCE    = 2339,
    STATE_TIMER            = 4248,
    STATE_TIMER_ACTIVE     = 4247
};

enum TwinPeaksObjectTypes
{
    OBJECT_DOOR_A_1      = 0,
    OBJECT_DOOR_A_2      = 1,
    OBJECT_DOOR_A_3      = 2,
    OBJECT_DOOR_A_4      = 3,
    OBJECT_DOOR_H_1      = 4,
    OBJECT_DOOR_H_2      = 5,
    OBJECT_DOOR_H_3      = 6,
    OBJECT_DOOR_H_4      = 7,
    OBJECT_A_FLAG        = 8,
    OBJECT_H_FLAG        = 9,
    OBJECT_SPEEDBUFF_1   = 10,
    OBJECT_SPEEDBUFF_2   = 11,
    OBJECT_REGENBUFF_1   = 12,
    OBJECT_REGENBUFF_2   = 13,
    OBJECT_BERSERKBUFF_1 = 14,
    OBJECT_BERSERKBUFF_2 = 15,
    OBJECT_MAX           = 16
};

enum TwinPeaksObjectEntries
{
    OBJECT_DOOR_A_1_TP_ENTRY      = 206655,
    OBJECT_DOOR_A_2_TP_ENTRY      = 206654,
    OBJECT_DOOR_A_3_TP_ENTRY      = 206653,
    OBJECT_DOOR_A_4_TP_ENTRY      = 206653,
    OBJECT_DOOR_H_1_TP_ENTRY      = 208205,
    OBJECT_DOOR_H_2_TP_ENTRY      = 208206,
    OBJECT_DOOR_H_3_TP_ENTRY      = 208207,
    OBJECT_DOOR_H_4_TP_ENTRY      = 208207,
    OBJECT_A_FLAG_TP_ENTRY        = 179830,
    OBJECT_H_FLAG_TP_ENTRY        = 179831,
    OBJECT_A_FLAG_GROUND_TP_ENTRY = 179785,
    OBJECT_H_FLAG_GROUND_TP_ENTRY = 179786,
};

enum TwinPeaksFlagStates
{
    FLAG_STATE_ON_BASE      = 0,
    FLAG_STATE_WAIT_RESPAWN = 1,
    FLAG_STATE_ON_PLAYER    = 2,
    FLAG_STATE_ON_GROUND    = 3
};

enum TwinPeaksGraveyards
{
    GRAVEYARD_FLAGROOM_ALLIANCE = 1726,
    GRAVEYARD_FLAGROOM_HORDE    = 1727,
    GRAVEYARD_START_ALLIANCE    = 1729,
    GRAVEYARD_START_HORDE       = 1728,
    GRAVEYARD_MIDDLE_ALLIANCE   = 1749,
    GRAVEYARD_MIDDLE_HORDE      = 1750
};

enum TwinPeaksMisc
{
    SPIRIT_ALLIANCE        = 0,
    SPIRIT_HORDE           = 1,

    BG_CREATURES_MAX_TP    = 2,
    MAX_TEAM_SCORE         = 3,

    OBJECTIVE_CAPTURE_FLAG = 290,
    OBJECTIVE_RETURN_FLAG  = 291,

    REPUTATION_ALLIANCE    = 1174, // Wildhammer Clan
    REPUTATION_HORDE       = 1172, // Dragonmaw Clan

    MAX_STARTING_OBJECTS   = 14,
    MAX_GRAVEYARDS         = 4,
    EVENT_START_BATTLE     = 8563,
};

enum TwinPeaksRewards
{
    BG_TP_WIN = 0,
    BG_TP_FLAG_CAP,
    BG_TP_MAP_COMPLETE,
    BG_TP_REWARD_NUM
};

static uint32 const TwinPeaksHonor[BG_HONOR_MODE_NUM][BG_TP_REWARD_NUM] =
{
    { 20, 40, 40 }, // Normal honor
    { 60, 40, 80 }  // Holiday
};

static uint32 const TwinPeaksReputation[BG_HONOR_MODE_NUM][BG_TP_REWARD_NUM] =
{
    { 0, 35, 0 }, // Normal honor
    { 0, 45, 0 }  // Holiday
};

struct StartingObjects
{
    uint32 type;
    uint32 entry;
    float x, y, z, o;
    float rotation0, rotation1, rotation2, rotation3;
    uint32 respawnTime;
};

StartingObjects const startingObjects[MAX_STARTING_OBJECTS] =
{
    // Flags
    { OBJECT_A_FLAG, OBJECT_A_FLAG_TP_ENTRY, 2118.210f, 191.621f, 44.052f, 5.741259f, 0, 0, 0.9996573f, 0.02617699f, uint32(FLAG_RESPAWN_TIME / 1000) },
    { OBJECT_H_FLAG, OBJECT_H_FLAG_TP_ENTRY, 1578.380f, 344.037f, 2.419f, 3.055978f, 0, 0, 0.008726535f, 0.9999619f, uint32(FLAG_RESPAWN_TIME / 1000) },
    // Buffs
    { OBJECT_SPEEDBUFF_1, BG_OBJECTID_SPEEDBUFF_ENTRY, 1545.402f, 304.028f, 0.5923f, -1.64061f, 0, 0, 0.7313537f, -0.6819983f, BUFF_RESPAWN_TIME },
    { OBJECT_SPEEDBUFF_2, BG_OBJECTID_SPEEDBUFF_ENTRY, 2171.279f, 222.334f, 43.8001f, 2.663309f, 0, 0, 0.7313537f, 0.6819984f, BUFF_RESPAWN_TIME },
    { OBJECT_REGENBUFF_1, BG_OBJECTID_REGENBUFF_ENTRY, 1753.957f, 242.092f, -14.1170f, 1.105848f, 0, 0, 0.1305263f, -0.9914448f, BUFF_RESPAWN_TIME },
    { OBJECT_REGENBUFF_2, BG_OBJECTID_REGENBUFF_ENTRY, 1952.121f, 383.857f, -10.2870f, 4.192612f, 0, 0, 0.333807f, -0.9426414f, BUFF_RESPAWN_TIME },
    { OBJECT_BERSERKBUFF_1, BG_OBJECTID_BERSERKERBUFF_ENTRY, 1934.369f, 226.064f, -17.0441f, 2.499154f, 0, 0, 0.5591929f, 0.8290376f, BUFF_RESPAWN_TIME },
    { OBJECT_BERSERKBUFF_2, BG_OBJECTID_BERSERKERBUFF_ENTRY, 1725.240f, 446.431f, -7.8327f, 5.709677f, 0, 0, 0.9396926f, -0.3420201f, BUFF_RESPAWN_TIME },
    // Alliance gates
    { OBJECT_DOOR_A_1, OBJECT_DOOR_A_1_TP_ENTRY, 2115.399f, 150.175f, 43.526f, 2.62f, 0, 0, 0, 0, RESPAWN_IMMEDIATELY },
    { OBJECT_DOOR_A_2, OBJECT_DOOR_A_2_TP_ENTRY, 2156.803f, 220.331f, 43.482f, 5.76f, 0, 0, 0, 0, RESPAWN_IMMEDIATELY },
    { OBJECT_DOOR_A_3, OBJECT_DOOR_A_3_TP_ENTRY, 2126.760f, 224.051f, 43.647f, 2.63f, 0, 0, 0, 0, RESPAWN_IMMEDIATELY },
    // Horde gates
    { OBJECT_DOOR_H_1, OBJECT_DOOR_H_1_TP_ENTRY, 1556.595f, 314.502f, 1.223f, 3.04f, 0, 0, 0, 0, RESPAWN_IMMEDIATELY },
    { OBJECT_DOOR_H_2, OBJECT_DOOR_H_2_TP_ENTRY, 1587.415f, 319.935f, 1.522f, 6.20f, 0, 0, 0, 0, RESPAWN_IMMEDIATELY },
    { OBJECT_DOOR_H_3, OBJECT_DOOR_H_3_TP_ENTRY, 1558.315f, 372.709f, 1.484f, 6.12f, 0, 0, 0, 0, RESPAWN_IMMEDIATELY },
};

struct Graveyards
{
    uint32 entry;
    uint32 type;
    uint32 team;
};

Graveyards const graveyards[] =
{
    { GRAVEYARD_START_ALLIANCE, SPIRIT_ALLIANCE, ALLIANCE },
    { GRAVEYARD_START_HORDE, SPIRIT_HORDE, HORDE },
    { GRAVEYARD_MIDDLE_ALLIANCE, SPIRIT_ALLIANCE, ALLIANCE },
    { GRAVEYARD_MIDDLE_HORDE, SPIRIT_HORDE, HORDE },
};

class BattlegroundTPScore : public BattlegroundScore
{
    public:
        BattlegroundTPScore() : FlagCaptures(0), FlagReturns(0) { };
        ~BattlegroundTPScore() { };

        uint32 FlagCaptures;
        uint32 FlagReturns;
};

class BattlegroundTP : public Battleground
{
    friend class BattlegroundMgr;

    public:
        BattlegroundTP();
        ~BattlegroundTP();

        void PostUpdateImpl(uint32 diff);
        void Reset();

        void AddPlayer(Player* player);
        void StartingEventCloseDoors();
        void StartingEventOpenDoors();

        void EventPlayerDroppedFlag(Player* player);
        void EventPlayerClickedOnFlag(Player* player, GameObject* gameobject);
        void EventPlayerCapturedFlag(Player* player);

        void HandleDebuff(bool apply, bool castNewSpell = false);

        uint64 GetFlagPickerGUID(int32 team) const
        {
            if (team == BG_TEAM_ALLIANCE || team == BG_TEAM_HORDE)
                return m_flagKeepers[team];
            return 0;
        }

        void SetFlagPickerGUID(uint64 guid, uint32 team) { m_flagKeepers[team] = guid; }
        bool IsFlagPickedup(uint32 team) const           { return (team == BG_TEAM_ALLIANCE || team == BG_TEAM_HORDE) ? m_flagKeepers[team] != 0 : false; }
        uint8 GetFlagState(uint32 team) const            { return m_flagState[team]; }
        uint32 GetSecondTeam(uint32 team) const;

        void RespawnFlag(uint32 team, bool captured);
        void RespawnFlagAfterDrop(uint32 team);

        void RemovePlayer(Player* player, uint64 guid, uint32 /*team*/);
        void HandleAreaTrigger(Player* player, uint32 trigger);
        void HandleKillPlayer(Player* player, Player* killer);

        bool SetupBattleground();
        void EndBattleground(uint32 winner);

        void UpdateFlagState(uint32 team, uint32 value);
        void SetLastFlagCapture(uint32 team)                { m_lastFlagCaptureTeam = team; }
        void UpdateTeamScore(uint32 team);
        void UpdatePlayerScore(Player* player, uint32 type, uint32 value, bool doAddHonor = true);

        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);
        virtual void FillInitialWorldStates(WorldPacket& data);

        uint32 GetTeamScore(uint32 team) const            { return m_TeamScores[team]; }
        void AddPoint(uint32 team, uint32 points = 1)     { m_TeamScores[GetTeamIndexByTeamId(team)] += points; }
        void SetTeamPoint(uint32 team, uint32 points = 0) { m_TeamScores[GetTeamIndexByTeamId(team)] = points; }
        void RemovePoint(uint32 team, uint32 points = 1)  { m_TeamScores[GetTeamIndexByTeamId(team)] -= points; }

        bool IsDoubleJeopardyEligible(Player* const player) const;
        bool IsTwinPeaksPerfectionEligible(Player* const player) const;
        bool HandlePlayerUnderMap(Player* /*plr*/);

    private:
        uint64 m_flagKeepers[2];
        uint8 m_flagState[2];
        int32 m_flagsTimer[2];
        int32 m_flagsDropTimer[2];
        uint32 m_lastFlagCaptureTeam;

        uint32 m_reputationCapture;
        uint32 m_honorWinKills;
        uint32 m_honorEndKills;
        int32 m_flagSpellForceTimer;
        bool m_bothFlagsKept;
        uint8 m_flagDebuffState;
        uint8 m_tempFlagDebuffState;
        uint8 m_minutesElapsed;

        std::list<uint32> scoreList;
};

#endif
