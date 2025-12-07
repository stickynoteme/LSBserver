-----------------------------------
-- Trust: Lion
-- Jobs: WHM/DNC
-----------------------------------
require('scripts/globals/trust')
require('scripts/enum/slot')
require('scripts/enum/magic')
require('scripts/enum/mod')

---@type TSpellTrust
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled(true)
    -- Set main job to enable job-specific abilities and spells
    mob:changeJob(xi.job.WHM)
    mob:changeSJob(xi.job.DNC)
    mob:setSpellList(1)

    mob:addMod(xi.mod.MP, 1000) -- Default MP for caster job
    mob:addMod(xi.mod.CURE_POTENCY, 30)
    mob:addMod(xi.mod.CURE_POTENCY_II, 10)
    mob:addMod(xi.mod.FASTCAST, 20)
    mob:addMod(xi.mod.MND, 20)
    mob:addMod(xi.mod.REFRESH, 3)
    mob:addMod(xi.mod.CHR, 10)

    -- Visuals (setModelId)
    mob:setModelId(310, xi.slot.MAIN) -- camaraderie_katana
    mob:setModelId(66, xi.slot.HEAD) -- anchorites_crown
    mob:setModelId(107, xi.slot.BODY) -- apogee_dalmatica_+1
    mob:setModelId(292, xi.slot.HANDS) -- amini_glovelettes_+1
    mob:setModelId(81, xi.slot.LEGS) -- ankusa_trousers_+3
    mob:setModelId(71, xi.slot.FEET) -- archmages_sabots_+1

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.1, 72) -- head: anchorites_crown
    mob:addMod(xi.mod.HP, 17) -- head: anchorites_crown
    mob:addMod(xi.mod.STR, 17) -- head: anchorites_crown
    mob:addMod(xi.mod.DEX, 14) -- head: anchorites_crown
    mob:addMod(xi.mod.VIT, 16) -- head: anchorites_crown
    mob:addMod(xi.mod.AGI, 16) -- head: anchorites_crown
    mob:addMod(xi.mod.INT, 15) -- head: anchorites_crown
    mob:addMod(xi.mod.MND, 18) -- head: anchorites_crown
    mob:addMod(xi.mod.CHR, 15) -- head: anchorites_crown
    mob:addMod(xi.mod.MDEF, 2) -- head: anchorites_crown
    mob:addMod(xi.mod.MEVA, 29) -- head: anchorites_crown
    mob:addMod(xi.mod.EVA, 17) -- head: anchorites_crown
    mob:addMod(xi.mod.HASTE_GEAR, 700) -- head: anchorites_crown
    mob:addMod(xi.mod.FOCUS_EFFECT, 15) -- head: anchorites_crown
    mob:addMod(xi.mod.1, 125) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.HP, -160) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.MP, 85) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.STR, 21) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.DEX, 21) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.VIT, 21) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.AGI, 21) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.INT, 38) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.MND, 38) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.CHR, 38) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.MDEF, 7) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.MEVA, 91) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.EVA, 41) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.REFRESH, 4) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.HASTE_GEAR, 300) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.BP_DELAY_II, 3) -- body: apogee_dalmatica_+1
    mob:addMod(xi.mod.1, 88) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.HP, 22) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.STR, 16) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.DEX, 34) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.VIT, 28) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.AGI, 15) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.INT, 8) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.MND, 29) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.CHR, 16) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.MDEF, 2) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.MEVA, 43) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.EVA, 27) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.STORETP, 9) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.ARCHERY, 28) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.HASTE_GEAR, 500) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.BOUNTY_SHOT_TH_BONUS, 2) -- hands: amini_glovelettes_+1
    mob:addMod(xi.mod.1, 132) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.HP, 67) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.STR, 39) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.DEX, 20) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.VIT, 26) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.AGI, 30) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.INT, 40) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.MND, 27) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.CHR, 21) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.ATT, 59) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.ACC, 39) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.MDEF, 7) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.MACC, 39) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.MEVA, 89) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.EVA, 58) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.CHARM_TIME, 14) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.HASTE_GEAR, 600) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.REWARD_RECAST, 21) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.FAMILIAR_BONUS, 12) -- legs: ankusa_trousers_+3
    mob:addMod(xi.mod.1, 63) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.HP, 13) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.MP, 14) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.STR, 10) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.DEX, 11) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.VIT, 10) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.AGI, 33) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.INT, 20) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.MND, 19) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.CHR, 34) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.ENMITY, -4) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.MATT, 12) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.MDEF, 5) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.MACC, 12) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.MEVA, 107) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.EVA, 55) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.DIVINE, 13) -- feet: archmages_sabots_+1
    mob:addMod(xi.mod.HASTE_GEAR, 300) -- feet: archmages_sabots_+1
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
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 60 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.CURING_WALTZ_III })
    mob:addGambit(ai.t.TARGET, { ai.c.NO_SAMBA, 0 }, { ai.r.JA, ai.s.BEST_SAMBA, 0 })

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
