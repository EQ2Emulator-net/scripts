--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aBrokentuskpawnPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.10 11:07:48
    Script Purpose : 
                   : 
--]]

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
	MovementLoopAddLocation(NPC, -45.55, -2.73, 148.9, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -45.55, -2.73, 148.9, 2, 0)
	MovementLoopAddLocation(NPC, -46.1, -2.74, 150.32, 2, 0)
	MovementLoopAddLocation(NPC, -54.93, -2.67, 157.47, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -54.93, -2.67, 157.47, 2, 0)
	MovementLoopAddLocation(NPC, -52.12, -2.67, 152.89, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -52.12, -2.67, 152.89, 2, 0)
	MovementLoopAddLocation(NPC, -51.27, -2.67, 159.18, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -51.27, -2.67, 159.18, 2, 0)
	MovementLoopAddLocation(NPC, -52.92, -2.67, 157.98, 2, 0)
	MovementLoopAddLocation(NPC, -58.98, -2.67, 156.81, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -58.98, -2.67, 156.81, 2, 0)
	MovementLoopAddLocation(NPC, -56.02, -2.67, 154.52, 2, 0)
	MovementLoopAddLocation(NPC, -52.67, -2.67, 148.81, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -52.67, -2.67, 148.81, 2, 0)
	MovementLoopAddLocation(NPC, -52.85, -2.67, 144.96, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -52.85, -2.67, 144.96, 2, 0)
	MovementLoopAddLocation(NPC, -52.85, -2.67, 144.96, 2, 0)
	MovementLoopAddLocation(NPC, -61.58, -2.52, 144.2, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -61.58, -2.52, 144.2, 2, 0)
	MovementLoopAddLocation(NPC, -58.63, -2.65, 146.28, 2, 0)
	MovementLoopAddLocation(NPC, -50.61, -2.67, 155.9, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, -50.61, -2.67, 155.9, 2, 0)
end


