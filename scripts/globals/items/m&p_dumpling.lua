-----------------------------------------
-- ID: 5641
-- Item: M&P Dumpling
-- Food Effect: 3Min, All Races
-----------------------------------------
-- Intelligence 5
-- Agility -5
-- MP 30
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.FOOD,0,0,180,5641)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.MP, 30)
    target:addMod(tpz.mod.INT, 5)
    target:addMod(tpz.mod.AGI, -5)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.MP, 30)
    target:delMod(tpz.mod.INT, 5)
    target:delMod(tpz.mod.AGI, -5)
end
