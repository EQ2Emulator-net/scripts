--[[
    Script Name    : SpawnScripts/Generic/CombatModule.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.09.19 08:09:17
    Script Purpose : Base Population Combat Common Features
                   : 
--]]

globalMod = 1.0 -- Global Damage Multiplier- make global adjustments to all NPC autoattack damage.
globalStatMod = 1.0 --  Adjust this multiplier to adjust NPC attributes
level = GetLevel(NPC) --NPC level
difficulty = FunctionToBeDetermined(NPC) --NPC difficulty tier

    --[[
        NPC Difficulty Tier Reference
        1-3 = vvv
        4 = vv
        5 = v 
        6 = Standard
        7 = ^
        8 = ^^
        9 = ^^^- Not used in Classic.
        10+ = Epic.  Epic NPCs should be tuned manually, this module does not support these difficulties.                   : 
    --]]



--Determine damage function based on NPC level.
function levelSwitch(NPC, Spawn)
    if  level  <= 3 then
        TierOneA()
    elseif level >= 4 and level  <= 5 then
        TierOneB()
    elseif level >= 6 and level  <= 9 then
        TierOneC()
    elseif level >= 10 and level <= 14 then
        TierTwoA()
    elseif level >= 15 and level <= 19 then
        TierTwoB()
    elseif level >= 20 and level <= 14 then
        TierThreeA()
    elseif level >= 25 and level  <= 29 then
        TierThreeB()
    end
end



-- Set attributes based on NPC level and difficulty
function calculateAttributes(NPC,  Spawn)
    if  level <= 4 then
        baseStat = 19 else
            baseStat = level + 15
    end
    
    local low = baseStat - 15 --Difficulty 1-3 vvv
    local four = baseStat - 10 -- Difficulty 4 vv
    local five = baseStat - 5 -- Difficulty 5 v
    local seven = baseStat + 10 -- Difficulty 7 ^
    local eight = baseStat + 20 -- Difficulty 8 ^^
    local nine = baseStat + 30 -- Difficulty 9 ^^^
    
    lowStat = math.floor(low * globalStatMod)
    fourStat = math.floor(four * globalStatMod)
    fiveStat = math.floor(five * globalStatMod)
    sixStat = math.floor(baseStat * globalStatMod)
    sevenStat = math.floor(seven * globalStatMod)
    eightStat = math.floor(eight * globalStatMod)
    nineStat = math.floor(nine * globalStatMod)
    
    return
   
end

function attributes(NPC, Spawn)
    calculateAttributes()
    
    -- Determine attribute by difficulty
    if difficulty <= 3 then
        finalStat = lowStat
    elseif difficulty == 4 then
        finalStat = fourStat
    elseif difficulty == 5 then
        finalStat = fiveStat
    elseif difficulty == 6 then
        finalStat = sixStat
    elseif difficulty == 7 then
        finalStat = sevenStat
    elseif difficulty == 8 then
        finalStat = eightStat
    elseif difficulty == 9 then
        finalStat = nineStat
    end
    
    -- Set attributes
    SpawnSet(NPC,"strength", finalStat)
    SpawnSet(NPC,"stamina", finalStat)
    SpawnSet(NPC,"agility", finalStat)
    SpawnSet(NPC,"wisdom", finalStat)
    SpawnSet(NPC,"intelligence", finalStat)
    
end



--Basic shared stats and abilities
function core(NPC, Spawn)
    
    -- In-combat health regeneration
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructSInt(NPC, "hp_regen", 0) --Set Regen Ammount. Default 0
    
    -- In-combat power regeneration
    SetInfoStructUInt(NPC, "pw_regen_override", 1)
    SetInfoStructSInt(NPC, "pw_regen", 0) --Set Regen Ammount. Default 0
    
    -- In-combat run speed.

end



--Damage functions based on NPC level range.

--Level 1-3
function TierOneA(NPC, Spawn)
-- 0-1 damage
end


--Level 4-5
function TierOneB(NPC, Spawn)
 -- 2-4 damage
end


--Level 6-9
function TierOneC(NPC, Spawn)
 -- 2-7 damage
end


--Level 10-14
function TierTwoA(NPC, Spawn)

end


--Level 15-19
function TierTwoB(NPC, Spawn)

end

--Level 20-24
function TierThreeA(NPC, Spawn)
 
end

--Level 25-29
function TierThreeB(NPC, Spawn)

end


