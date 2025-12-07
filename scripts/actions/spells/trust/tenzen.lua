-----------------------------------
-- Trust: Tenzen
-- Jobs: WHM/NONE
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
    mob:setAutoAttackEnabled(false)
    -- Set main job to enable job-specific abilities and spells
    mob:changeJob(xi.job.WHM)
    mob:setSpellList(1)

    mob:addMod(xi.mod.CURE_POTENCY, 30)
    mob:addMod(xi.mod.CURE_POTENCY_II, 10)
    mob:addMod(xi.mod.FASTCAST, 20)
    mob:addMod(xi.mod.MND, 20)
    mob:addMod(xi.mod.REFRESH, 3)
    mob:addMod(xi.mod.HEALING, 424)
    mob:addMod(xi.mod.DIVINE, 424)
    mob:addMod(xi.mod.ENHANCE, 400)
    mob:addMod(xi.mod.ENFEEBLE, 400)

    -- Visuals (setModelId)
    -- mob:setModelId(115, xi.slot.BODY) -- lore_robe_+1

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.DEF, 41)        -- body: lore_robe_+1
    mob:addMod(xi.mod.MP, 17)         -- body: lore_robe_+1
    mob:addMod(xi.mod.ENMITY, -10)    -- body: lore_robe_+1
    mob:addMod(xi.mod.MPHEAL, 7)      -- body: lore_robe_+1
    mob:addMod(xi.mod.DMGMAGIC, -300) -- body: lore_robe_+1
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

    -- Custom Code
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
