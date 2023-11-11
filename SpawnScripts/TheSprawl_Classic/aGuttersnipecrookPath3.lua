--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGuttersnipecrookPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.10 07:11:03
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
	MovementLoopAddLocation(NPC, -82.15, -4.24, 45.42, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -82.15, -4.24, 45.42, 2, 0)
	MovementLoopAddLocation(NPC, -89.7, -4.42, 41.81, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -89.7, -4.42, 41.81, 2, 0)
	MovementLoopAddLocation(NPC, -83.6, -4.24, 45.72, 2, 0)
	MovementLoopAddLocation(NPC, -74.27, -4.42, 45.08, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -74.27, -4.42, 45.08, 2, 0)
	MovementLoopAddLocation(NPC, -80.13, -4.28, 45.03, 2, 0)
	MovementLoopAddLocation(NPC, -82.81, -4.24, 47.67, 2, 0)
	MovementLoopAddLocation(NPC, -82.47, -4.24, 60.83, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -82.47, -4.24, 60.83, 2, 0)
	MovementLoopAddLocation(NPC, -82.23, -4.24, 58.34, 2, 0)
	MovementLoopAddLocation(NPC, -75.78, -4.25, 55.02, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -75.78, -4.25, 55.02, 2, 0)
	MovementLoopAddLocation(NPC, -80.8, -4.24, 57.8, 2, 0)
	MovementLoopAddLocation(NPC, -80.57, -4.42, 68.19, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -80.57, -4.42, 68.19, 2, 0)
	MovementLoopAddLocation(NPC, -80.21, -4.24, 62.85, 2, 0)
	MovementLoopAddLocation(NPC, -84.14, -4.24, 41.95, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -84.14, -4.24, 41.95, 2, 0)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
end

