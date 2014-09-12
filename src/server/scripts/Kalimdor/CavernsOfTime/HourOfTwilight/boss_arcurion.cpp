/* ScriptData
SDScript by Loukie
SDName: boss_arcurion
SD%Complete: 60% or less
SDCategory: Hour of Twilight
EndScriptData */

#include"ScriptPCH.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "MapManager.h"
#include "Spell.h"
#include "Vehicle.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CreatureTextMgr.h"
#include "MoveSplineInit.h"
#include"hour_of_twilight.h"

enum eArcurionYells 
{
    SAY_AGGRO  = 0,
    SAY_KILL   = 1,
    SAY_DEATH  = 2,
    SAY_HP_LOW = 3,
    SAY_FORCES = 4	
};

enum Spells 
{
    SPELL_HANDS_OF_FROST               = 102593,
    SPELL_CHAINS_OF_FROST              = 102582,
    SPELL_ICY_TOMB                     = 103252,
    SPELL_VISUAL_ICY_BOULDER_CRASH	   = 102199,
    SPELL_VISUAL_ICY_BOULDER_TARGET    = 102198,
    SPELL_ICY_BOULDER                  = 102480, // Needs Scripting include SPELL_VISUAL_ICY_BOULDER_TARGET || SPELL_VISUAL_ICY_BOULDER_CRASH
    SPELL_TORRENT_OF_FROST             = 103962,
    SPELL_ARCURION_SPAWN_VISUAL        = 104767,
    SPELL_TELE_ARCURION_DEAD_VISUAL    = 108928
};

enum Events 
{
    EVENT_SUMMON,
    EVENT_HANDS_OF_FROST,
    EVENT_CHAINS_OF_FROST,
    EVENT_ICY_BOULDER,
    EVENT_ICY_TOMB
};

enum thrall_spels
{
    SPELL_LAVA_BURST              = 107980, 
};

enum thrall_eevents
{
    EVENT_LAVA_BURST              = 107980,
};

// Not correct
Position const SpawnPositions[2] =
{
    {4784.08f, 57.30f, 71.01f, 2.22f},
    {4768.98f, 57.30f, 71.01f, 2.22f},

};

class boss_arcurion : public CreatureScript
{
public:
    boss_arcurion() : CreatureScript("boss_arcurion") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_arcurionAI (creature);
    }

    struct boss_arcurionAI : public BossAI
    {
        boss_arcurionAI(Creature* creature) : BossAI(creature, DATA_ARCURION_EVENT)
        {
            instance = creature->GetInstanceScript();			
        }
		
        uint32 m_uiHealthAmountModifier;
        InstanceScript* instance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
            m_uiHealthAmountModifier = 1;
        }
		
        void EnterCombat(Unit* /*Ent*/)
        {
            if (instance)
            instance->SetData(DATA_ARCURION_EVENT, IN_PROGRESS);
            Talk(SAY_FORCES);	
            Talk(SAY_AGGRO);
		    events.ScheduleEvent(EVENT_SUMMON, 5000);
            DoCast(SPELL_HANDS_OF_FROST);
            events.ScheduleEvent(EVENT_HANDS_OF_FROST, urand(5000,10000));
            events.ScheduleEvent(EVENT_CHAINS_OF_FROST, urand(12000,19000));
            events.ScheduleEvent(EVENT_ICY_TOMB, 1000);
		}

                void JustSummoned(Creature *summon)
                {
                    summons.Summon(summon);
                    summon->setActive(true);

                    if (me->isInCombat())
                        summon->AI()->DoZoneInCombat();

                    switch (summon->GetEntry())
                    {
                        case NPC_FROZEN_SERVITOR:
                            summon->CastSpell(summon, SPELL_VISUAL_ICY_BOULDER_TARGET, false);
                            break;

                        default:
                            break;
                    }
                }		
		
        void JustDied(Unit* /*Kill*/)
        {
             Talk(SAY_DEATH);
             DoCast(me, SPELL_TELE_ARCURION_DEAD_VISUAL, true);
             if (instance)
             instance->SetData(DATA_ARCURION_EVENT, DONE);
        }		
		
        void KilledUnit(Unit* /*victim*/)
        {
             Talk(SAY_KILL);
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

                case EVENT_SUMMON: // way ius this not happening what am i doing wrong???
                    for (uint8 i = 0; i < 2; i++)
                        me->SummonCreature(NPC_FROZEN_SERVITOR, SpawnPositions[i]);								
                        events.ScheduleEvent(EVENT_SUMMON, 10000);
                        break;				
				
                 case EVENT_HANDS_OF_FROST:
                     if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(SPELL_HANDS_OF_FROST);
                        events.ScheduleEvent(EVENT_HANDS_OF_FROST, 1500);
                        break;
    
                 case EVENT_CHAINS_OF_FROST:
                     if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(SPELL_CHAINS_OF_FROST);
                        events.ScheduleEvent(EVENT_CHAINS_OF_FROST, 17000);
                        break;
												
                    case EVENT_ICY_TOMB:
                        DoCast(SPELL_ICY_TOMB);
                        events.ScheduleEvent(EVENT_ICY_TOMB, urand(111000, 113000));
                        break;						

						
					default:
                       break;
				}
			}
            // Health check
            if (HealthBelowPct(30 * m_uiHealthAmountModifier))
            {
                Talk(SAY_HP_LOW);
                DoCast(SPELL_TORRENT_OF_FROST);
            }			
			
            DoMeleeAttackIfReady();
        }
    };
};

class npc_frozen_servitor : public CreatureScript
{
    public:
        npc_frozen_servitor() : CreatureScript("npc_frozen_servitor") { }

        struct npc_frozen_servitorAI : public ScriptedAI
        {
            npc_frozen_servitorAI(Creature* creature) : ScriptedAI(creature){}
			
        private:
            EventMap events;
			
            void IsSummonedBy(Unit* /*summoner*/) 
            {
                events.ScheduleEvent(EVENT_ICY_BOULDER, 4000);
            }

            void UpdateAI(const uint32 diff) 
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_ICY_BOULDER:
                          if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                             DoCast(target, SPELL_VISUAL_ICY_BOULDER_CRASH); // Temp untill  SPELL ICY_BOULDERS is scripted
                             events.ScheduleEvent(EVENT_ICY_BOULDER, 4000);
                            break;

                        default:
                            break;
                    }
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const 
        {
            return new npc_frozen_servitorAI(creature);
        }
};

void AddSC_boss_arcurion() 
{
    new boss_arcurion();
    new npc_frozen_servitor();
}
