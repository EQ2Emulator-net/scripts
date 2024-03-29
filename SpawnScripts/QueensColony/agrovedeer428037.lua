--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428037.lua
	Script Purpose	:	Waypoint Path for agrovedeer428037.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:00 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 83, -4.55, 219.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 75.93, -4.51, 222.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.23, -4.4, 213.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 65.96, -4.17, 221.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 69.81, -4.29, 222.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 70.76, -3.8, 217.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 70.95, -4.5, 227.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 58.31, -4.13, 214, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 57.6, -4.45, 223.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.2, -4.53, 224.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 76.56, -3.8, 214.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 67.26, -3.8, 216.86, 2, math.random(10, 24))
end


