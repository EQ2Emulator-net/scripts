--[[
    Script Name    : SpawnScripts/IsleRefuge1/anoxiouscobra.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 03:09:33
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"


function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructSInt(NPC, "hp_regen", 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end