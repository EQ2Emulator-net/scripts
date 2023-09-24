--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawrunecaster.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.14 11:07:05
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 17
    local level2 = 18
    local level3 = 19
    local difficulty = 6
    local hp1 = 1105
    local power1 = 360
    local hp2 = 1180
    local power2 = 410
    local hp3 = 1315
    local power3 = 425
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
        elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end


end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end