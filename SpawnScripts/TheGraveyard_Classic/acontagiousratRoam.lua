--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/acontagiousratRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.19 09:08:51
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

ChooseMovement(NPC)
  
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
    MovementLoopAddLocation(NPC, X + 3.5, Y, Z, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X , Y, Z + 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 2, Y, Z -3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z + 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
    MovementLoopAddLocation(NPC, X - 3.5, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z - 2, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z -3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X , Y, Z - 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(10,20),  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X -3.5, Y, Z - 3.5, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X + 2, Y, Z -3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z - 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z -2, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z + 3.5, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z + 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end
