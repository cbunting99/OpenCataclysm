/*
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
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
 
 /* ScriptData
SDName: instance_well_of_eternity
SDCategory: Well of Eternity
EndScriptData */

#ifndef DEF_WELL_OF_ETERNITY_H
#define DEF_WELL_OF_ETERNITY_H
 
 #define MAX_ENCOUNTER       5
 
 enum Data64 
{
    DATA_LEGION_DEMON,
    DATA_PEROTHARN,
    DATA_AZSHARA,
    DATA_MANNOROTH,
    DATA_VAROTHEN,
};
 
  enum Data 
{
    DATA_LEGION_DEMON_EVENT,
    DATA_PEROTHARN_EVENT,
    DATA_AZSHARA_EVENT,
    DATA_MANNOROTH_EVENT,
    DATA_VAROTHEN_EVENT,
};
 
   enum eObjects
{
    GO_WOE_COURTYARD_DOOR       = 210084,   // before courtyard
    GO_INVISIBLE_FIRE_WALL      = 210097,   // after peroth'arn

    GO_SMALL_FIREWALL_DOOR      = 210130,
    GO_LARGE_FIREWALL_DOOR      = 210234,

    GO_PORTAL_ENERGY_FOCUS_1    = 209366,
    GO_PORTAL_ENERGY_FOCUS_2    = 209447,
    GO_PORTAL_ENERGY_FOCUS_3    = 209448,

    GO_ROYAL_CACHE              = 210025,
    GO_MINOR_CACHE_OF_THE_ASPECTS = 209541,
};
 
   enum eNpcsObjects 
{
	//Bosses
    BOSS_PEROTHARN               = 55085,	
    BOSS_AZSHARA                 = 54853,
    BOSS_MANNOROTH               = 54969,	
    BOSS_VAROTHEN                = 55419,	
	
    NPC_ENCHANTED_MAGUS_1       = 54882,
    NPC_ENCHANTED_MAGUS_2       = 54883,
    NPC_ENCHANTED_MAGUS_3       = 54884,
    NPC_GUARDIAN_DEMON          = 54927,
    NPC_LEGION_DEMON            = 55503,
    NPC_CORRUPTED_ARCANIST      = 55654,
    NPC_DREADLORD_DEFENDER      = 55656,
    //Small one
    NPC_FEL_CRYSTAL             = 24722,
    //Bigg one
    NPC_FEL_CRYSTAL_WOT_PH      = 55917,
    NPC_DRAKE_VEHICLE           = 57107,
    NPC_ESCORT_VAROTHEN         = 57118,
};
 
 enum eSpells
{
	//Spells
    SPELL_SHADOWCLOAK_PERIODIC  = 103004,
    SPELL_FORCE_SHADOWCLOAK     = 105635,
    SPELL_SHADOW_WALK           = 102994,
    SPELL_SHADOWCLOAK_ILLIDAN   = 105915,

    AREATRIGGER_MEET_ILLIDAN    = 7066,

    WORLDSTATE_DEMONS_PRESENT   = 6017,
    WORLDSTATE_DEMONS_SHOW      = 6018,

    MAX_FOCUS                   = 3,
    MAX_GUARDS                  = 2,

    DATA_MAGUS_DEAD             = 1
};

#endif