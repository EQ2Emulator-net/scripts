--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGuttersnipecrookPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.10 04:11:39
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
	MovementLoopAddLocation(NPC, -83.41, -5.02, -13.62, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -83.41, -5.02, -13.62, 2, 0)
	MovementLoopAddLocation(NPC, -90.06, -5.29, -19.28, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -90.06, -5.29, -19.28, 2, 0)
	MovementLoopAddLocation(NPC, -83.67, -4.83, -12.07, 2, 0)
	MovementLoopAddLocation(NPC, -83.96, -4.24, 3.98, 2, 0)
	MovementLoopAddLocation(NPC, -79.49, -4.24, 8.29, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -79.49, -4.24, 8.29, 2, 0)
	MovementLoopAddLocation(NPC, -82.79, -4.24, 6.55, 2, 0)
	MovementLoopAddLocation(NPC, -88.38, -4.26, 10.9, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -88.38, -4.26, 10.9, 2, 0)
	MovementLoopAddLocation(NPC, -85.52, -4.24, 1.29, 2, 0)
	MovementLoopAddLocation(NPC, -83.59, -4.73, -11.24, 2, 0)
	MovementLoopAddLocation(NPC, -81.12, -4.99, -11.41, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -81.12, -4.99, -11.41, 2, 0)
	MovementLoopAddLocation(NPC, -82.85, -4.7, -10.62, 2, 0)
	MovementLoopAddLocation(NPC, -83.92, -4.28, -4.22, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -83.92, -4.28, -4.22, 2, 0)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
end

