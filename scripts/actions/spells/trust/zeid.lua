-----------------------------------
-- Trust: Zeid
-- Jobs: WHM/RDM
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
    mob:changeSJob(xi.job.RDM)
    mob:setSpellList(1)

    mob:addMod(xi.mod.MP, 1000) -- Default MP for caster job
    mob:addMod(xi.mod.CURE_POTENCY, 30)
    mob:addMod(xi.mod.CURE_POTENCY_II, 10)
    mob:addMod(xi.mod.FASTCAST, 10)
    mob:addMod(xi.mod.MND, 20)
    mob:addMod(xi.mod.REFRESH, 3)

    -- Visuals (setModelId)
    mob:setModelId(463, xi.slot.MAIN) -- blurred_claymore_+1
    mob:setModelId(120, xi.slot.HEAD) -- brego_helm
    mob:setModelId(336, xi.slot.BODY) -- dux_scale_mail_+1
    mob:setModelId(95, xi.slot.HANDS) -- ice_gauntlets
    mob:setModelId(221, xi.slot.LEGS) -- iron_ram_hose

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.ACC, 25) -- main: blurred_claymore_+1
    mob:addMod(xi.mod.1, 32) -- head: brego_helm
    mob:addMod(xi.mod.STR, 6) -- head: brego_helm
    mob:addMod(xi.mod.DEX, 6) -- head: brego_helm
    mob:addMod(xi.mod.SUBTLE_BLOW, 4) -- head: brego_helm
    mob:addMod(xi.mod.HASTE_GEAR, 500) -- head: brego_helm
    mob:addMod(xi.mod.1, 69) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.STR, 10) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.VIT, 10) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.ATT, 16) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.ENMITY, 7) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.DMGPHYS, -500) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.DMGRANGE, -500) -- body: dux_scale_mail_+1
    mob:addMod(xi.mod.1, 16) -- hands: ice_gauntlets
    mob:addMod(xi.mod.STR, 4) -- hands: ice_gauntlets
    mob:addMod(xi.mod.VIT, 4) -- hands: ice_gauntlets
    mob:addMod(xi.mod.ACC, 4) -- hands: ice_gauntlets
    mob:addMod(xi.mod.MPHEAL, 1) -- hands: ice_gauntlets
    mob:addMod(xi.mod.ITEM_SUBEFFECT, 2) -- hands: ice_gauntlets
    mob:addMod(xi.mod.ITEM_ADDEFFECT_DMG, 15) -- hands: ice_gauntlets
    mob:addMod(xi.mod.ITEM_ADDEFFECT_CHANCE, 15) -- hands: ice_gauntlets
    mob:addMod(xi.mod.1, 36) -- legs: iron_ram_hose
    mob:addMod(xi.mod.HP, 28) -- legs: iron_ram_hose
    mob:addMod(xi.mod.ENMITY, 4) -- legs: iron_ram_hose
    mob:addMod(xi.mod.MDEF, 4) -- legs: iron_ram_hose
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
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.REFRESH }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REFRESH })

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
