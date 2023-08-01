--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aBrokentuskpawnPath4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.10 11:07:18
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BrokenTusk1.lua")

function spawn(NPC)
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

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -47.79, -2.65, 149.56, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -47.79, -2.65, 149.56, 2, 0)
	MovementLoopAddLocation(NPC, -43.71, -2.87, 147.4, 2, 0)
	MovementLoopAddLocation(NPC, -36.65, -3.73, 148.23, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -36.65, -3.73, 148.23, 2, 0)
	MovementLoopAddLocation(NPC, -39.73, -3.43, 146.65, 2, 0)
	MovementLoopAddLocation(NPC, -47.75, -2.72, 133.38, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -47.75, -2.72, 133.38, 2, 0)
	MovementLoopAddLocation(NPC, -45.74, -2.6, 137.92, 2, 0)
	MovementLoopAddLocation(NPC, -42.54, -2.97, 142.66, 2, 0)
	MovementLoopAddLocation(NPC, -39.71, -3.52, 143.08, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -39.71, -3.52, 143.08, 2, 0)
	MovementLoopAddLocation(NPC, -44.59, -2.7, 143.34, 2, 0)
	MovementLoopAddLocation(NPC, -55.28, -2.57, 138.06, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -55.28, -2.57, 138.06, 2, 0)
	MovementLoopAddLocation(NPC, -55.08, -2.54, 133.38, 2, 0)
	MovementLoopAddLocation(NPC, -53.79, -2.53, 129.9, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -53.79, -2.53, 129.9, 2, 0)
	MovementLoopAddLocation(NPC, -50.83, -2.54, 135.83, 2, 0)
	MovementLoopAddLocation(NPC, -50.74, -2.67, 149.16, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -50.74, -2.67, 149.16, 2, 0)
end

