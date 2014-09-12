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
SDName: boss_perotharn
SD%Complete: 40%
SDComment: Placeholder
SDCategory: Well of Eternity
EndScriptData */

/**Things todo**/
/*Script Spells*/
//DoCast(me, 105635, true); @ 70% HP plus summon eyes entry 55868 and 55879 not sure about count
/**Things todo end**/

#include "well_of_eternity.h"

enum
{
    EVENT_FEL_FLAMES = 1,
    EVENT_FEL_DECAY  = 2
};

class boss_perotharn : public CreatureScript
{
public:
    boss_perotharn() : CreatureScript("boss_perotharn") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_perotharnAI (creature);
    }

    struct boss_perotharnAI : public BossAI
    {
        boss_perotharnAI(Creature* creature) : BossAI(creature, DATA_PEROTHARN_EVENT)
        {
            instance = creature->GetInstanceScript();			
        }

        bool casted;
        uint32 PerotharnkHealth;
        uint32 heroic5;		
        InstanceScript *instance;
        EventMap events;;
		  
           bool IsRegularMode;

             void Reset() 
                {
                  me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                  me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                  heroic5 = 9544310;
                  me->SetMaxHealth(PerotharnkHealth);
                  me->SetFullHealth();
                  casted = false;
                  events.Reset();					  
                }

                void EnterCombat(Unit* /*who*/)
                {
                 if (instance)
                     instance->SetData(DATA_PEROTHARN_EVENT, IN_PROGRESS);
                     Talk(0);
                     events.ScheduleEvent(EVENT_FEL_FLAMES, urand(10000,11000));
                     events.ScheduleEvent(EVENT_FEL_DECAY, urand(17000,20000));					 
					 
                }				
				

             void JustDied(Unit* Killer) 
                {
                 if (instance)
                     instance->SetData(DATA_PEROTHARN_EVENT, DONE);
					 Talk(3);
                }

             void KilledUnit(Unit* Victim) 
               {
			     Talk(2);
               }

             void JustReachedHome() 
               {
                 if (instance)
                    instance->SetData(DATA_PEROTHARN_EVENT, FAIL);
               }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            // Health check
            if (me->HealthBelowPct(70) && !casted)
            {
                Talk(1, true);
                DoCast(104905);
                casted = true;
            }
            else
            if (me->HealthBelowPct(20) && !casted)
            {
                Talk(4, true);
                DoCast(me, 105521, true);
                casted = true;
            }				
		}			   
			   
        void UpdateAI(uint32 const diff)
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
                    case EVENT_FEL_FLAMES:
                     if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                         DoCast(target, 108141);
                         events.ScheduleEvent(EVENT_FEL_FLAMES, 11000);
                         break;
    
                    case EVENT_FEL_DECAY:
                     if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                         DoCast(target, 105544);
                         events.ScheduleEvent(EVENT_FEL_DECAY, 17000);
                         break;
																											
                         default:
                         break;
				}
            }
			
            DoMeleeAttackIfReady();
        }
	 };
};

void AddSC_boss_perotharn()
{
  new boss_perotharn();
}