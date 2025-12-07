-----------------------------------
-- Trust: HANDBELL_SKILL
-- Jobs: WHM/WHM
-----------------------------------
---@type TSpellTrust
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled(true)
    -- Set main job to enable job-specific abilities and spells
    mob:changeJob(xi.job.WHM)
    mob:changesJob(xi.job.WHM)
    mob:setSpellList(1)

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.CURE_POTENCY, 10)
    mob:addMod(xi.mod.CURE_POTENCY_II, 10)
    mob:addMod(xi.mod.FASTCAST, 20)
    mob:addMod(xi.mod.MND, 20)
    mob:addMod(xi.mod.REFRESH, 3)
    mob:addMod(xi.mod.MP, 170)
    mob:addMod(xi.mod.HP, 55)
    mob:addMod(xi.mod.ATT, 20)
    mob:addMod(xi.mod.RATT, 20)
    mob:addMod(xi.mod.ACC, 8)
    mob:addMod(xi.mod.RACC, 8)
    mob:addMod(xi.mod.MATT, 8)
    mob:addMod(xi.mod.MACC, 16)
    mob:addMod(xi.mod.DEF, 16)
    mob:addMod(xi.mod.MEVA, 10)
    mob:addMod(xi.mod.MPHEAL, 5)
    mob:addMod(xi.mod.HEALING, 424)
    mob:addMod(xi.mod.DIVINE, 424)
    mob:addMod(xi.mod.ENHANCE, 424)
    mob:addMod(xi.mod.ENFEEBLE, 424)
    mob:addMod(xi.mod.ELEM, 424)
    mob:addMod(xi.mod.DARK, 424)
    mob:addMod(xi.mod.SUMMONING, 424)
    mob:addMod(xi.mod.NINJUTSU, 424)
    mob:addMod(xi.mod.SINGING, 424)
    mob:addMod(xi.mod.STRING, 424)
    mob:addMod(xi.mod.WIND, 424)
    mob:addMod(xi.mod.BLUE, 424)
    mob:addMod(xi.mod.GEOMANCY_SKILL, 424)
    mob:addMod(xi.mod.HANDBELL_SKILL, 424)
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 75 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 45 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURAGA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ERASE })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.POISON }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.POISONA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PARALYSIS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PARALYNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SILENCE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SILENA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.DISEASE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PETRIFICATION }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONA })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.REGEN }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REGEN })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.PROTECT }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PROTECT })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.SHELL }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SHELL })
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 60 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
