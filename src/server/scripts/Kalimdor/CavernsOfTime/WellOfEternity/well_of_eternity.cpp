/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 TrilliumEMU <http://www.arkania.net/>
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
#include"ScriptPCH.h"
#include"well_of_eternity.h"

/****
 * npc_legion_demon
 ***/
enum lSpells 
{
 SPELL_CRUSHING_LEAP    = 108479,
 SPELL_STRIKE_FEAR      = 103913,
};

enum lEvents 
{
 EVENT_CRUSHING_LEAP,
 EVENT_STRIKE_FEAR,
};

class npc_legion_demon : public CreatureScript
{
public:
    npc_legion_demon() : CreatureScript("npc_legion_demon") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_legion_demonAI (creature);
    }

    struct npc_legion_demonAI : public ScriptedAI
    {
        npc_legion_demonAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
			
        }
		
        InstanceScript* instance;
        EventMap events;

        void Reset() 
        {
            events.Reset();

        }
		
        void EnterCombat(Unit* /*Ent*/)
        {

			DoCast(SPELL_CRUSHING_LEAP);
			
            events.ScheduleEvent(EVENT_CRUSHING_LEAP, urand(5000,8000));
            events.ScheduleEvent(EVENT_STRIKE_FEAR, urand(10000,11000));
		}
				
        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);
            
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CRUSHING_LEAP:
					if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(SPELL_CRUSHING_LEAP);
						events.ScheduleEvent(EVENT_CRUSHING_LEAP, 5000);
                        break;
    
                    case EVENT_STRIKE_FEAR:
					if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                       DoCast(SPELL_STRIKE_FEAR);
					   events.ScheduleEvent(EVENT_STRIKE_FEAR, 10000);
                        break;
																		
					default:
                       break;
				}
			}			
			
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_well_of_eternity() 
{
    new npc_legion_demon();
}