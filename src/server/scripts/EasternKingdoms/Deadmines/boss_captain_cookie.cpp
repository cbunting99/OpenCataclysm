#include "ScriptPCH.h"
#include "deadmines.h"

enum eSpell
{
    SPELL_COOKIES_HAT        = 88873,
    SPELL_WHOS_THAT          = 89339,
    SPELL_COOKIES_CAULDRON   = 89250,
    SPELL_ACHIEVEMENT_AURA   = 95650,

    SPELL_RIE_VEHICLE_HARD   = 46598,
    // 89251

    SPELL_CAULDRON_FIRE      = 89252,
    SPELL_VISUAL_FIRE        = 89251,

    SPELL_SATIATED           = 92834,
    SPELL_NAUSEATED          = 92066,
};


const uint32 FoodSpells[13] =
{
    90557, 90560, 90680, 90606, 90605, 90604, 90603, 90559, 89263, 90555, 90555, 89739, 90602
};

enum Events
{
    EVENT_NULL,
    EVENT_FOOD,
};

const Position CookiesPos[2] =
{
    {-67.435249f, -822.357178f, 40.861347f, 0.0f},
    {-64.2552f, -820.245f, 41.17154f, 0.0f}
};

class boss_captain_cookie : public CreatureScript
{
public:
    boss_captain_cookie() : CreatureScript("boss_captain_cookie") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_captain_cookieAI (creature);
    }

    struct boss_captain_cookieAI : public BossAI
    {
        boss_captain_cookieAI(Creature* creature) : BossAI(creature, DATA_COOKIE) { }

        uint32 Phase;
        Creature* bunny;

        void Reset()
        {
            if (!me || !instance)
                return;
            _Reset();

            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PACIFIED);
            Phase = 0;
            me->AddAura(SPELL_COOKIES_HAT, me);
            me->AddAura(SPELL_WHOS_THAT, me);
            if (bunny = me->SummonCreature(NPC_GENERAL_PURPOSE_BUNNY_JMF, CookiesPos[1]))
            {
                bunny->AI()->Talk(1);
            }
            if (Creature* vehicle = me->FindNearestCreature(47754, 5.0f))
            {
                vehicle->DespawnOrUnsummon();
            }
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);
        }

        void JustDied(Unit* /*Killer*/)
        {
            if (!me)
                return;

            _JustDied();
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            summons.DespawnAll();
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (!me || !instance)
                return;

            _EnterCombat();
            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
            me->RemoveAura(SPELL_COOKIES_HAT);
            me->RemoveAura(SPELL_WHOS_THAT);

            std::list<Player*> players;
            Trinity::AnyPlayerInObjectRangeCheck checker(me, 150.0f);
            Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
            me->VisitNearbyWorldObject(150.0f, searcher);

            for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                me->CastSpell((*itr), SPELL_ACHIEVEMENT_AURA, true);
        }

        void UpdateAI(uint32 const uiDiff)
        {
            if (!me || !instance)
                return;

            events.Update(uiDiff);

            if (Creature* cauldron = me->FindNearestCreature(47754, 150.0f))
                cauldron->SetTarget(0);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_FOOD:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            me->CastSpell(target, FoodSpells[urand(0, 13)], TRIGGERED_IGNORE_CASTER_MOUNTED_OR_ON_VEHICLE);
                            events.ScheduleEvent(EVENT_FOOD, 2200);
                        break;
                }
            }

            switch (Phase)
            {
                case 0:
                    me->GetMotionMaster()->MovePoint(0, CookiesPos[0]);
                    Phase++;
                    break;
                case 1:
                    if (me->GetDistance2d(CookiesPos[0].GetPositionX(), CookiesPos[0].GetPositionY()) <= 2.0f)
                    {
                        if (bunny)
                        {
                            me->CastSpell(bunny, SPELL_COOKIES_CAULDRON);
                            if (Creature* vehicle = me->FindNearestCreature(47754, 5.0f))
                            {
                                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                                me->SetReactState(REACT_AGGRESSIVE);
                                SetCombatMovement(false);
                                me->CastSpell(vehicle, SPELL_RIE_VEHICLE_HARD);
                                vehicle->AddAura(SPELL_CAULDRON_FIRE, me);
                                vehicle->CastSpell(vehicle, SPELL_VISUAL_FIRE);
                                events.ScheduleEvent(EVENT_FOOD, 100);
                                Phase++;
                            }
                        }
                    }
                    break;
            }
        }
    };
};

// Bad Food 48295, 48276, 48299, 48293, 48298, 48302
class npc_captain_cookie_bad_food : public CreatureScript
{
public:
    npc_captain_cookie_bad_food() : CreatureScript("npc_captain_cookie_bad_food") { }

    bool OnGossipHello(Player* player, Creature* me)
    {
        if (!me || !player)
            return false;

        player->CastSpell(player, SPELL_NAUSEATED);

        Aura *aura = player->GetAura(SPELL_NAUSEATED);
        if (aura && aura->GetStackAmount() >= 2)
        {
            player->RemoveAura(SPELL_ACHIEVEMENT_AURA);
        }

        me->DespawnOrUnsummon();
        return true;
    }
};

// Good Food 48301, 48297, 48300, 48296, 48006, 48294
class npc_captain_cookie_good_food : public CreatureScript
{
public:
    npc_captain_cookie_good_food() : CreatureScript("npc_captain_cookie_good_food") { }

    bool OnGossipHello(Player* player, Creature* me)
    {
        if (!me || !player)
            return false;

        player->CastSpell(player, SPELL_SATIATED);
        me->DespawnOrUnsummon();
        return true;
    }
};

class mob_cookie_cauldron : public CreatureScript
{
public:
    mob_cookie_cauldron() : CreatureScript("mob_cookie_cauldron") { }

    struct mob_cookie_cauldronAI : public ScriptedAI
    {
        mob_cookie_cauldronAI(Creature* creature) : ScriptedAI(creature)
        {
            SetCombatMovement(false);
            me->SetReactState(REACT_DEFENSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_IMMUNE_TO_PC);
        }

        void Reset() { }

        void EnterCombat(Unit* /*who*/) { }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            if(me->HasUnitState(UNIT_STATE_CASTING))
                return;
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_cookie_cauldronAI (creature);
    }
};


void AddSC_boss_captain_cookie()
{
    new npc_captain_cookie_bad_food();
    new npc_captain_cookie_good_food();
    new boss_captain_cookie();
    new mob_cookie_cauldron();
}
