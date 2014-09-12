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
SD%Complete: 0
SDComment: Placeholder
SDCategory: Well of Eternity
EndScriptData */

#include "well_of_eternity.h"

#define ENCOUNTERS 5

class instance_well_of_eternity : public InstanceMapScript 
{
public:
	instance_well_of_eternity() : InstanceMapScript("instance_well_of_eternity", 939)  
    { }

	InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
		return new instance_well_of_eternity_InstanceMapScript(map);
	}

	struct instance_well_of_eternity_InstanceMapScript: public InstanceScript
    {
		instance_well_of_eternity_InstanceMapScript(InstanceMap* map) : InstanceScript(map) { }

		uint32 uiEncounter[ENCOUNTERS];

		uint64 uiLegion_demon;//
		uint64 uiAzshara;
		uint64 uiPerotharn;
		uint64 uiMannoroth;
		uint64 uiVarothen;		
        
		void Initialize() 
        {
		    uiLegion_demon = 0;//
			uiPerotharn = 0;
			uiAzshara = 0;
			uiMannoroth = 0;
			uiVarothen = 0;

			for (uint8 i = 0; i < ENCOUNTERS; ++i)
				uiEncounter[i] = NOT_STARTED;
		}

		bool IsEncounterInProgress() const 
        {
			for (uint8 i = 0; i < ENCOUNTERS; ++i) 
            {
				if (uiEncounter[i] == IN_PROGRESS)
					return true;
			}
			return false;
		}

		void OnCreatureCreate(Creature* pCreature) 
        {
			switch (pCreature->GetEntry())
            {
			   case NPC_LEGION_DEMON:
				    uiLegion_demon = pCreature->GetGUID();
				    break;            
			   case BOSS_PEROTHARN:
				    uiPerotharn = pCreature->GetGUID();
				    break;
			    case BOSS_AZSHARA:
				    uiAzshara = pCreature->GetGUID();
				    break;
			    case BOSS_MANNOROTH:
				    uiMannoroth = pCreature->GetGUID();
				    break;
			    case BOSS_VAROTHEN:
				    uiVarothen = pCreature->GetGUID();
				    break;					
			}
		}

		uint64 getData64(uint32 identifier)
        {
			switch (identifier)
            {
			    case DATA_LEGION_DEMON:
				    return uiLegion_demon;
			    case DATA_PEROTHARN:
				    return uiPerotharn;
			    case DATA_AZSHARA:
				    return uiAzshara;
			    case DATA_MANNOROTH:
				    return uiMannoroth;
			    case DATA_VAROTHEN:
				    return uiVarothen;					
			}
			return 0;
		}

		void SetData(uint32 type, uint32 data)
        {
			switch (type)
            {
			    case DATA_LEGION_DEMON:
				    uiEncounter[0] = data;
				    break;
			    case DATA_PEROTHARN:
				    uiEncounter[1] = data;
				    break;
			    case DATA_AZSHARA:
				    uiEncounter[2] = data;
				    break;
			    case DATA_MANNOROTH:
				    uiEncounter[3] = data;
				    break;
			    case DATA_VAROTHEN:
				    uiEncounter[4] = data;
				    break;					
			}

			if (data == DONE)
				SaveToDB();
		}

		uint32 GetData(uint32 type) const
        {
			switch (type)
            {               
			   case DATA_LEGION_DEMON_EVENT:
				    return uiEncounter[0];
			   case DATA_PEROTHARN_EVENT:
				    return uiEncounter[1];
			   case DATA_AZSHARA_EVENT:
				    return uiEncounter[2];
			   case DATA_MANNOROTH_EVENT:
				    return uiEncounter[3];
			    case DATA_VAROTHEN_EVENT:
				    return uiEncounter[4];					
			}
			return 0;
		}

		std::string GetSaveData() 
        {
			OUT_SAVE_INST_DATA;

			std::string str_data;
			std::ostringstream saveStream;
			saveStream << "H T" << uiEncounter[0] << " " << uiEncounter[1] << " " << uiEncounter[2] << " " << uiEncounter[3] << " " << uiEncounter[4];
			str_data = saveStream.str();

			OUT_SAVE_INST_DATA_COMPLETE;
			return str_data;
		}

		void Load(const char* in) 
        {
			if (!in) 
            {
				OUT_LOAD_INST_DATA_FAIL;
				return;
			}

			OUT_LOAD_INST_DATA(in);

			char dataHead1, dataHead2;
			uint16 data0, data1, data2, data3, data4;

			std::istringstream loadStream(in);
			loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2 >> data3 >> data4;

			if (dataHead1 == 'H' && dataHead2 == 'T') 
            {
				uiEncounter[0] = data0;
				uiEncounter[1] = data1;
				uiEncounter[2] = data2;
				uiEncounter[3] = data3;
				uiEncounter[4] = data4;			

				for (uint8 i = 0; i < ENCOUNTERS; ++i)
					if (uiEncounter[i] == IN_PROGRESS)
						uiEncounter[i] = NOT_STARTED;
			} else
				OUT_LOAD_INST_DATA_FAIL;

			OUT_LOAD_INST_DATA_COMPLETE;
		}
	};
};

void AddSC_instance_well_of_eternity()
{
	new instance_well_of_eternity();	
}