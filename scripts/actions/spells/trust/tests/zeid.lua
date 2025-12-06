-----------------------------------
-- Trust: Zeid
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



    -- Faux Gear Look
    mob:setLook({ main = 17807 })
    -- Gear Mods (from item_mods.sql)
    mob:addMod(xi.mod.ATT, 4) -- main: gold_musketeers_uchigatana
    mob:addMod(xi.mod.ACC, 4) -- main: gold_musketeers_uchigatana
    mob:addMod(xi.mod.1, 13) -- waist: kentarch_belt
    mob:addMod(xi.mod.ACC, 13) -- waist: kentarch_belt
    mob:addMod(xi.mod.DOUBLE_ATTACK, 2) -- waist: kentarch_belt


    -- Custom Code
    
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
