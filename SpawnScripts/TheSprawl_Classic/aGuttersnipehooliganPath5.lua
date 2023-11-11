--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGuttersnipehooliganPath5.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.10 07:11:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    --SpawnSet(NPC, "heroic", 1)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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
	MovementLoopAddLocation(NPC, -71.86, -4.42, 73.95, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -71.86, -4.42, 73.95, 2, 0)
	MovementLoopAddLocation(NPC, -69.51, -4.42, 86.58, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -69.51, -4.42, 86.58, 2, 0)
	MovementLoopAddLocation(NPC, -71.29, -4.42, 79.04, 2, 0)
	MovementLoopAddLocation(NPC, -79.43, -4.42, 70.16, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -79.43, -4.42, 70.16, 2, 0)
	MovementLoopAddLocation(NPC, -72.75, -4.42, 72.22, 2, 0)
	MovementLoopAddLocation(NPC, -61.2, -4.19, 80.74, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -61.2, -4.19, 80.74, 2, 0)
	MovementLoopAddLocation(NPC, -69.07, -4.42, 79.25, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -69.07, -4.42, 79.25, 2, 0)
	MovementLoopAddLocation(NPC, -61.43, -4.22, 81.96, 2, 0)
	MovementLoopAddLocation(NPC, -53.99, -2.79, 84.6, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -53.99, -2.79, 84.6, 2, 0)
	MovementLoopAddLocation(NPC, -59.52, -3.85, 83.78, 2, 0)
	MovementLoopAddLocation(NPC, -68.65, -4.42, 75.45, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -68.65, -4.42, 75.45, 2, 0)
	MovementLoopAddLocation(NPC, -68.68, -4.42, 81.99, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -68.68, -4.42, 81.99, 2, 0)
	MovementLoopAddLocation(NPC, -70.72, -4.42, 74, 2, 0)
	MovementLoopAddLocation(NPC, -75.14, -4.42, 66.68, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -75.14, -4.42, 66.68, 2, 0)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
end