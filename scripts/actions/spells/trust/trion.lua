-----------------------------------
-- Trust: Trion
-- Jobs: BLM/NONE
-----------------------------------
require('scripts/globals/trust')
require('scripts/enum/slot')
require('scripts/enum/magic')
require('scripts/enum/mod')
require('scripts/enum/job')
require('scripts/enum/skill')

---@type TSpellTrust
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    mob:setAutoAttackEnabled(false)
    -- Set main job to enable job-specific abilities and spells
    mob:changeJob(xi.job.BLM)
    mob:setSpellList(2)

    mob:addMod(xi.mod.MP, 1000) -- Default MP for caster job
    mob:addMod(xi.mod.MATT, 35)
    mob:addMod(xi.mod.MACC, 30)
    mob:addMod(xi.mod.FASTCAST, 20)

    -- Visuals (setModelId)
    mob:setModelId(291, xi.slot.MAIN) -- onion_staff
    mob:addGambit(ai.t.TARGET, { ai.c.HPP_GTE, 80 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SLEEP_II })
    mob:addGambit(ai.t.TARGET, { ai.c.MB_AVAILABLE, 0 }, { ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_SC_AVAILABLE, 0 }, { ai.r.MA, ai.s.BEST_AGAINST_TARGET, 0 })
    mob:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.FIRE })

    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
