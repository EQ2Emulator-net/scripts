--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGuttersnipehooliganPath6.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.10 08:11:37
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
	MovementLoopAddLocation(NPC, -84.38, -4.24, 109.5, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -84.38, -4.24, 109.5, 2, 0)
	MovementLoopAddLocation(NPC, -79.74, -4.24, 107.78, 2, 0)
	MovementLoopAddLocation(NPC, -74.8, -4.24, 104.19, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -74.8, -4.24, 104.19, 2, 0)
	MovementLoopAddLocation(NPC, -78.64, -4.24, 107.01, 2, 0)
	MovementLoopAddLocation(NPC, -86.33, -4.24, 108.63, 2, 0)
	MovementLoopAddLocation(NPC, -92.7, -4.24, 111.32, 2, 0)
	MovementLoopAddLocation(NPC, -94.5, -4.3, 113.47, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -94.5, -4.3, 113.47, 2, 0)
	MovementLoopAddLocation(NPC, -93.16, -4.24, 110.35, 2, 0)
	MovementLoopAddLocation(NPC, -90.94, -4.42, 101.91, 2, 0)
	MovementLoopAddLocation(NPC, -89.38, -4.42, 101.71, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -89.38, -4.42, 101.71, 2, 0)
	MovementLoopAddLocation(NPC, -89.88, -4.42, 102.15, 2, 0)
	MovementLoopAddLocation(NPC, -89.69, -4.24, 108.86, 2, 0)
	MovementLoopAddLocation(NPC, -80.9, -4.24, 108.65, 2, 0)
	MovementLoopAddLocation(NPC, -74.12, -4.42, 111.17, 2, 0)
	MovementLoopAddLocation(NPC, -71.58, -4.42, 114.69, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -71.58, -4.42, 114.69, 2, 0)
	MovementLoopAddLocation(NPC, -75.18, -4.42, 111.51, 2, 0)
	MovementLoopAddLocation(NPC, -79.94, -4.24, 108.73, 2, 0)
	MovementLoopAddLocation(NPC, -92.17, -4.24, 107.61, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -92.17, -4.24, 107.61, 2, 0)
	MovementLoopAddLocation(NPC, -89.01, -4.24, 109.33, 2, 0)
	MovementLoopAddLocation(NPC, -80.21, -4.24, 108.17, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, -80.21, -4.24, 108.17, 2, 0)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
end