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

 // Scripts added but not implemented! Chris-09-12-2014
 
#ifndef __TRINITY_BATTLEPETMGR_H
#define __TRINITY_BATTLEPETMGR_H

#include <map>
#include <string>

#include "Common.h"
#include <ace/Singleton.h>
#include "DatabaseEnv.h"
#include "DBCEnums.h"
#include "DBCStores.h"
#include "DB2Stores.h"

struct PetBattleData
{
    PetBattleData(uint32 entry, uint32 display, uint32 species, uint32 spell) : m_entry(entry), m_displayID(display), m_speciesID(species), m_summonSpellID(spell) {}

    uint32 m_entry;
    uint32 m_displayID;
    uint32 m_speciesID;
    uint32 m_summonSpellID;
};

typedef std::list<PetBattleData> PetBattleDataList;

class BattlePetMgr
{
public:
    explicit BattlePetMgr(Player* owner);

    void BuildBattlePetJournal(WorldPacket *data);
    void GetBattlePetList(PetBattleDataList &petBattleList) const;
    Player* GetPlayer() const { return m_player; }

private:
    Player* m_player;
};

#endif