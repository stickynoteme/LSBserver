-----------------------------------
-- Trust: Lion
-- Jobs: WHM/DNC
-----------------------------------
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

    mob:addMod(xi.mod.CURE_POTENCY, 30)
    mob:addMod(xi.mod.CURE_POTENCY_II, 10)
    mob:addMod(xi.mod.FASTCAST, 20)
    mob:addMod(xi.mod.MND, 20)
    mob:addMod(xi.mod.REFRESH, 3)
    mob:addMod(xi.mod.CHR, 10)

    -- Faux Gear Look
    mob:setLook({ main = 785, head = 50, body = 225, hands = 12778, legs = 8, feet = 104 })

    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.ENMITY, -1) -- head: pumpkin_head
    mob:addMod(xi.mod.1, 2) -- body: custom_top_+1
    mob:addMod(xi.mod.1, 1) -- hands: apathy_gauntlets
    mob:addMod(xi.mod.1, 2) -- legs: galkan_braguette
    mob:addMod(xi.mod.1, 1) -- feet: vagabonds_boots
    mob:addMod(xi.mod.HPHEAL, 1) -- feet: vagabonds_boots
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
