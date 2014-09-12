#include "ScriptPCH.h"
#include "hour_of_twilight.h"

#define ENCOUNTERS 3

/* Boss Encounters
    Arcurion
    Asira Dawnslayer
    Archbishop Benedictus
 */

class instance_hour_of_twilight : public InstanceMapScript 
{
public:
	instance_hour_of_twilight() : InstanceMapScript("instance_hour_of_twilight", 940)  
    { }

	InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
		return new instance_hour_of_twilight_InstanceMapScript(map);
	}

	struct instance_hour_of_twilight_InstanceMapScript: public InstanceScript
    {
		instance_hour_of_twilight_InstanceMapScript(InstanceMap* map) : InstanceScript(map) { }

		uint32 uiEncounter[ENCOUNTERS];

		uint64 uiAsira;
		uint64 uiArcurion;
		uint64 uiArchbishop;
		uint64 uiTeamInInstance;
        
		void Initialize() 
        {
			uiAsira = 0;
			uiArcurion = 0;
			uiArchbishop = 0;
			uiTeamInInstance = 0;

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
			    case BOSS_ARCURION:
				    uiArcurion = pCreature->GetGUID();
				    break;
			    case BOSS_ASIRA:
				    uiAsira = pCreature->GetGUID();
				    break;
			    case BOSS_ARCHBISHOP:
				    uiArchbishop = pCreature->GetGUID();
				    break;
			}
		}

		uint64 getData64(uint32 identifier) 
        {
			switch (identifier)
            {

			   case DATA_ARCURION:
				    return uiArcurion;
			    case DATA_ASIRA:
				    return uiAsira;
			    case DATA_ARCHBISHOP:
				    return uiArchbishop;
			}
			return 0;
		}

		void SetData(uint32 type, uint32 data)
        {
			switch (type)
            {
			    case DATA_ARCURION:
				    uiEncounter[0] = data;
				    break;
			    case DATA_ASIRA:
				    uiEncounter[1] = data;
				    break;
			    case DATA_ARCHBISHOP:
				    uiEncounter[2] = data;
				    break;
			}

			if (data == DONE)
				SaveToDB();
		}

		uint32 GetData(uint32 type) const
        {
			switch (type)
            {                
			    case DATA_ARCURION_EVENT:
				    return uiEncounter[0];
			    case DATA_ASIRA_EVENT:
				    return uiEncounter[1];
			    case DATA_ARCHBISHOP_EVENT:
				    return uiEncounter[2];
			}
			return 0;
		}

		std::string GetSaveData() 
        {
			OUT_SAVE_INST_DATA;

			std::string str_data;
			std::ostringstream saveStream;
			saveStream << "H T" << uiEncounter[0] << " " << uiEncounter[1] << " " << uiEncounter[2];
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
			uint16 data0, data1, data2;

			std::istringstream loadStream(in);
			loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2;

			if (dataHead1 == 'H' && dataHead2 == 'T') 
            {
				uiEncounter[0] = data0;
				uiEncounter[1] = data1;
				uiEncounter[2] = data2;

				for (uint8 i = 0; i < ENCOUNTERS; ++i)
					if (uiEncounter[i] == IN_PROGRESS)
						uiEncounter[i] = NOT_STARTED;
			} else
				OUT_LOAD_INST_DATA_FAIL;

			OUT_LOAD_INST_DATA_COMPLETE;
		}
	};
};

void AddSC_instance_hour_of_twilight()
{
	new instance_hour_of_twilight();
}
