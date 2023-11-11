--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGuttersnipecrookPath4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.10 07:11:57
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    --SpawnSet(NPC, "heroic", 1)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
    Appearance(NPC)
    waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -77.85, -4.29, 62.21, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -77.85, -4.29, 62.21, 2, 0)
	MovementLoopAddLocation(NPC, -72.6, -4.42, 67.17, 2, 0)
	MovementLoopAddLocation(NPC, -68.36, -4.42, 74.23, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -68.36, -4.42, 74.23, 2, 0)
	MovementLoopAddLocation(NPC, -72.31, -4.42, 69.09, 2, 0)
	MovementLoopAddLocation(NPC, -86.31, -4.24, 56.54, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -86.31, -4.24, 56.54, 2, 0)
	MovementLoopAddLocation(NPC, -79.99, -4.24, 61.65, 2, 0)
	MovementLoopAddLocation(NPC, -77.69, -4.42, 72.62, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -77.69, -4.42, 72.62, 2, 0)
	MovementLoopAddLocation(NPC, -73.83, -4.42, 64.21, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -73.83, -4.42, 64.21, 2, 0)
	MovementLoopAddLocation(NPC, -74.09, -4.42, 70.83, 2, 0)
	MovementLoopAddLocation(NPC, -72.8, -4.42, 76.81, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -72.8, -4.42, 76.81, 2, 0)
	MovementLoopAddLocation(NPC, -78.88, -4.24, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, -76.32, -4.31, 53.17, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -76.32, -4.31, 53.17, 2, 0)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
end
