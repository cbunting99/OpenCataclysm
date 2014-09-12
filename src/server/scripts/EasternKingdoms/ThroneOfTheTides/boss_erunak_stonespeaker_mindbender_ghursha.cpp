/* ScriptData
SDName: Boss Erunak Stonespeaker & Mindbender Ghur'sha
SD%Complete: 100%
SDComment:
SDCategory: Throne of the Tides
EndScriptData */

#include "ScriptMgr.h"
#include "Vehicle.h"
#include "throne_of_the_tides.h"

enum Spells
{
// Erunak Stonespeaker
    SPELL_EARTH_SHARDS           = 84931, // VISUAL - missle?
    SPELL_EARTH_SHARD_AURA       = 84935,
    SPELL_EARTH_SHARD_SUMMON     = 84934,
    SPELL_EMBERSTRIKE            = 76165,
    SPELL_LAVA_BOLT              = 76171,
    SPELL_LAVA_BOLT_H            = 91412,
    SPELL_MAGMA_SPLASH           = 76170,
    // Mindbender Ghur'sha
    SPELL_ENSLAVE                = 76207,
    SPELL_ENSLAVE_H              = 91413,
    SPELL_ENSLAVE_BUFF           = 76213 , // Should be in SPELL_LINKED_SPELL with SPELL_ENSLAVE
    SPELL_ENSLAVE_VEHICLE        = 76206,
    SPELL_ABSORB_MAGIC           = 76307,
    SPELL_ABSORB_MAGIC_H         = 76307,
    SPELL_MIND_FOG_SUMMON        = 76234,
    SPELL_MIND_FOG_AURA          = 76230, // Done in ct_addon aura
    SPELL_MIND_FOG_VISUAL        = 76231, // Done in ct_addon aura
    SPELL_UNRELENTING_AGONY      = 76339
};

enum eEncounterYells
{
    SAY_PHASE_1_END_MINDBENDER  = 0,
    SAY_PHASE_1_END_ERUNAK      = 1,
    SAY_MIND_CONTROL_1          = 2,
    SAY_MIND_CONTROL_2          = 3,
    SAY_MIND_CONTROL_3          = 4,
    SAY_MIND_FOG                = 5,
    SAY_DEATH_MINDBENDER        = 6,
    SAY_DEATH_ERUNAK            = 7,
    SAY_KILL_PLAYER_1           = 8,
    SAY_KILL_PLAYER_2           = 9,
};

// predicate function to select not charmed target
struct NotCharmedTargetSelector : public std::unary_function<Unit*, bool>
{
    NotCharmedTargetSelector() {}

    bool operator()(Unit const* target) const
    {
        return !target->isCharmed();
    }
};

class boss_erunak_stonespeaker : public CreatureScript
{
public:
    boss_erunak_stonespeaker() : CreatureScript("boss_erunak_stonespeaker") { }

    struct boss_erunak_stonespeakerAI : public ScriptedAI
    {
        boss_erunak_stonespeakerAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        std::list<uint64> SummonList;

        uint32 EarthShardsTimer;
        uint32 EmberstrikeTimer;
        uint32 LavaBoltTimer;
        uint32 MagmaSplashTimer;

        bool isEnslaved;

        InstanceScript *pInstance;

        void Reset()
        {
            EarthShardsTimer = 20000;
            EmberstrikeTimer = urand(12000,20000);
            LavaBoltTimer = 10000;
            MagmaSplashTimer = 15000;
            isEnslaved = true;

            if (pInstance)
                pInstance->SetData(DATA_ERUNAK_STONESPEAKER_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoZoneInCombat();

            EarthShardsTimer = 20000;
            EmberstrikeTimer = 11000;
            LavaBoltTimer = 6500;
            MagmaSplashTimer = 17000;

            if (pInstance)
            {
                pInstance->HandleGameObject(pInstance->GetData64(GO_ERUNAK_STONESPEAKER_DOOR), false);
                pInstance->SetData(DATA_ERUNAK_STONESPEAKER_EVENT, IN_PROGRESS);
            }
        }

        void JustSummoned(Creature* pSummon)
        {
            switch (pSummon->GetEntry())
            {
                case NPC_EARTH_SHARD:
                    SummonList.push_back(pSummon->GetGUID());
                    break;
            }
        }

        void KilledUnit(Unit * /*victim*/)
        {
            if (Unit * mindbender = me->GetVehicleKit()->GetPassenger(0))
                Talk(RAND(SAY_KILL_PLAYER_1, SAY_KILL_PLAYER_2));
        }

        void UpdateAI(uint32 const diff) 
        {
            if (!UpdateVictim())
                return;

            if (!isEnslaved)
                return;

            if (EarthShardsTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_EARTH_SHARDS);
                EarthShardsTimer = 20000;
            } else EarthShardsTimer -= diff;

            if (EmberstrikeTimer <= diff)
            {
                DoCastVictim(SPELL_EMBERSTRIKE);
                EmberstrikeTimer = 15000;
            } else EmberstrikeTimer -= diff;

            if (LavaBoltTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_LAVA_BOLT);
                LavaBoltTimer = 10000;
            } else LavaBoltTimer -= diff;

            if (MagmaSplashTimer <= diff)
            {
                DoCastVictim(SPELL_MAGMA_SPLASH);
                MagmaSplashTimer = 15000;
            } else MagmaSplashTimer -= diff;

            if (HealthBelowPct(50))
            {
                if(Unit * mindbender = me->GetVehicleKit()->GetPassenger(0))
                {
                    mindbender->ExitVehicle();
                    mindbender->setFaction(14);
                }

                me->CombatStop(true);
                me->SetReactState(REACT_PASSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->setFaction(35);
                Talk(SAY_PHASE_1_END_ERUNAK);
                isEnslaved = false;
                me->SetStandState(UNIT_STAND_STATE_KNEEL);
                return;
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_erunak_stonespeakerAI (pCreature);
    }
};


class boss_mindbender_ghursha : public CreatureScript
{
public:
    boss_mindbender_ghursha() : CreatureScript("boss_mindbender_ghursha") { }

    struct boss_mindbender_ghurshaAI : public ScriptedAI
    {
        boss_mindbender_ghurshaAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        std::list<uint64> SummonList;

        InstanceScript *pInstance;

        uint32 EnslaveTimer;
        uint32 AbsorbMagicTimer;
        uint32 MindFogTimer;
        uint32 UnrelentingAgonyTimer;
        uint32 CastTimer;
        uint64 EnslaveTargetGUID;

        void Reset()
        {
            RemoveSummons();
            EnslaveTargetGUID = 0;
        }

        void KilledUnit(Unit * /*victim*/)
        {
            Talk(RAND(SAY_KILL_PLAYER_1, SAY_KILL_PLAYER_2));
        }

        void SetSpellTimers()
        {
            AbsorbMagicTimer = 20000;
            MindFogTimer = urand(6000,12000);
            UnrelentingAgonyTimer = 10000;
        }

        void HandleEnslave(Unit * target, bool apply)
        {
            EnslaveTargetGUID = (apply ? target->GetGUID() : 0);
            if (apply)
            {
                me->CastSpell(target, SPELL_ENSLAVE_BUFF, true);
                target->CastSpell(target, SPELL_ENSLAVE_VEHICLE, true);
                me->EnterVehicle(target);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }
            else
            {
                me->ExitVehicle();
                target->RemoveAurasDueToSpell(SPELL_ENSLAVE_BUFF);
                target->RemoveAurasDueToSpell(SPELL_ENSLAVE_VEHICLE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }
        }

        void JustReachedHome()
        {
            if(pInstance)
            {
                if(Creature * pErunak = pInstance->instance->GetCreature(pInstance->GetData64(DATA_ERUNAK_STONESPEAKER)))
                {
                    pErunak->SetReactState(REACT_AGGRESSIVE);
                    pErunak->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    pErunak->setFaction(16);
                    pErunak->Respawn(true);
                    me->DespawnOrUnsummon();
                }

                pInstance->HandleGameObject(pInstance->GetData64(GO_ERUNAK_STONESPEAKER_DOOR), true);
                pInstance->SetData(DATA_ERUNAK_STONESPEAKER_EVENT, NOT_STARTED);
            }
        }

        void EnterCombat(Unit* /*who*/)
        {
            Talk(SAY_PHASE_1_END_MINDBENDER);
            EnslaveTimer = 5000;
            SetSpellTimers();
        }

        void RemoveSummons()
        {
            if (SummonList.empty())
                return;

            for (std::list<uint64>::const_iterator itr = SummonList.begin(); itr != SummonList.end(); ++itr)
            {
                if (Creature* pTemp = Unit::GetCreature(*me, *itr))
                    if (pTemp)
                        pTemp->DisappearAndDie();
            }
            SummonList.clear();
        }

        void JustSummoned(Creature* pSummon)
        {
            SummonList.push_back(pSummon->GetGUID());
        }

        void UpdateAI(uint32 const diff) 
        {
            if (!UpdateVictim())
                return;

            if (!EnslaveTargetGUID)
            {
                if (EnslaveTimer <= diff)
                {
                    if(Unit * EnslaveTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    {
                        DoZoneInCombat();
                        DoCast(EnslaveTarget, SPELL_ENSLAVE);
                        Talk(RAND(SAY_MIND_CONTROL_1,SAY_MIND_CONTROL_2,SAY_MIND_CONTROL_3));
                        EnslaveTimer = 60000;
                        SetSpellTimers();
                        CastTimer = 2000;
                    }
                } else EnslaveTimer -= diff;
            }

            if (Unit * EnslaveTarget = Unit::GetUnit(*me, EnslaveTargetGUID))
                if (EnslaveTarget->HealthBelowPct(50))
                    EnslaveTarget->RemoveAurasDueToSpell(IsHeroic() ? SPELL_ENSLAVE_H : SPELL_ENSLAVE);

            if (CastTimer <= diff && EnslaveTargetGUID)
            {
                if (Unit * EnslaveTarget = Unit::GetUnit(*me, EnslaveTargetGUID))
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, NotCharmedTargetSelector()))
                {
                    switch(EnslaveTarget->getClass())
                    {
                        case CLASS_DRUID:
                            if (urand(0,1))
                                EnslaveTarget->CastSpell(pTarget, 8921, false);
                            else
                                EnslaveTarget->CastSpell(me, 774, false);
                            break;
                        case CLASS_HUNTER:
                            EnslaveTarget->CastSpell(pTarget, RAND(2643, 1978), false);
                            break;
                        case CLASS_MAGE:
                            EnslaveTarget->CastSpell(pTarget, RAND(44614, 30455), false);
                            break;
                        case CLASS_WARLOCK:
                            EnslaveTarget->CastSpell(pTarget, RAND(980, 686), true);
                            break;
                        case CLASS_WARRIOR:
                            EnslaveTarget->CastSpell(pTarget, RAND(46924, 845), false);
                            break;
                        case CLASS_PALADIN:
                            if (urand(0,1))
                                EnslaveTarget->CastSpell(pTarget, 853, false);
                            else
                                EnslaveTarget->CastSpell(me, 20473, false);
                            break;
                        case CLASS_PRIEST:
                            if (urand(0,1))
                                EnslaveTarget->CastSpell(pTarget, 34914, false);
                            else
                                EnslaveTarget->CastSpell(me, 139, false);
                            break;
                        case CLASS_SHAMAN:
                            if (urand(0,1))
                                EnslaveTarget->CastSpell(pTarget, 421, false);
                            else
                                EnslaveTarget->CastSpell(me, 61295, false);
                            break;
                        case CLASS_ROGUE:
                            EnslaveTarget->CastSpell(pTarget, RAND(16511, 1329), false);
                            break;
                        case CLASS_DEATH_KNIGHT:
                            if (urand(0,1))
                                EnslaveTarget->CastSpell(pTarget, 45462, true);
                            else
                                EnslaveTarget->CastSpell(pTarget, 49184, true);
                            break;
                    }
                }
                CastTimer = 3000;
            } else CastTimer -= diff;

            if (EnslaveTargetGUID)
                return;

            if (AbsorbMagicTimer <= diff)
            {
                DoCast(me, SPELL_ABSORB_MAGIC);
                AbsorbMagicTimer = urand(15000,20000);
            } else AbsorbMagicTimer -= diff;

            if (MindFogTimer <= diff)
            {
                DoCast(me, SPELL_MIND_FOG_SUMMON);
                Talk(SAY_MIND_FOG);
                MindFogTimer = 18000;
            } else MindFogTimer -= diff;

            if (UnrelentingAgonyTimer <= diff)
            {
                DoCastAOE(SPELL_UNRELENTING_AGONY);
                UnrelentingAgonyTimer = 20000;
            } else UnrelentingAgonyTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*pKiller*/)
        {
            Talk(SAY_DEATH_MINDBENDER);
            if (pInstance)
            {
                pInstance->HandleGameObject(pInstance->GetData64(GO_ERUNAK_STONESPEAKER_DOOR), true);
                pInstance->SetData(DATA_ERUNAK_STONESPEAKER_EVENT, DONE);
                if (Creature * pErunak = pInstance->instance->GetCreature(pInstance->GetData64(DATA_ERUNAK_STONESPEAKER)))
                    Talk(SAY_DEATH_ERUNAK);
            }
            RemoveSummons();
        }
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_mindbender_ghurshaAI (pCreature);
    }
};

#define mindbenderAI boss_mindbender_ghursha::boss_mindbender_ghurshaAI

class spell_mindbender_enslave : public SpellScriptLoader
{
    public:
        spell_mindbender_enslave() : SpellScriptLoader("spell_mindbender_enslave") { }

        class spell_mindbender_enslave_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_mindbender_enslave_AuraScript);

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* target = GetTarget();
                Unit* caster = GetCaster();
                if(!caster || !target || caster->GetTypeId() != TYPEID_UNIT)
                    return;

                if (mindbenderAI * pAI = CAST_AI(mindbenderAI, caster->ToCreature()->AI()))
                    pAI->HandleEnslave(target, true);
            }

            void HandleEffectRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* target = GetTarget();
                Unit* caster = GetCaster();
                if(!caster || !target || caster->GetTypeId() != TYPEID_UNIT)
                    return;

                if (mindbenderAI * pAI = CAST_AI(mindbenderAI, caster->ToCreature()->AI()))
                {
                    pAI->HandleEnslave(target, false);
                    // Kill target in heroic mode if aura expired
                    if(GetId() == 91413 && GetDuration() == 0)
                        caster->Kill(target, true);
                }
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_mindbender_enslave_AuraScript::HandleEffectApply, EFFECT_1, SPELL_AURA_MOD_CHARM, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_mindbender_enslave_AuraScript::HandleEffectRemove, EFFECT_1, SPELL_AURA_MOD_CHARM, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_mindbender_enslave_AuraScript();
        }
};

void AddSC_boss_erunak_stonespeaker()
{
    new boss_erunak_stonespeaker();
    new boss_mindbender_ghursha();
    new spell_mindbender_enslave();
}
