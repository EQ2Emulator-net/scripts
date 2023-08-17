--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/aputridzombieNarrowPath.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 09:08:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local level3 = 10
    local difficulty1 = 8
    local hp1 = 485
    local power1 = 200
    local difficulty2 = 8
    local hp2 = 555
    local power2 = 240
    local difficulty3 = 8
    local hp3 = 645
    local power3 = 300
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end
    SetSpawnAnimation(NPC, 13016)

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
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z -3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z + 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
    MovementLoopAddLocation(NPC, X - 3.5, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z - 3.5, 2, math.random(10,20))
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
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z -3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z - 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z -3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z + 3.5, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X + 3.5, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 3.5, Y, Z + 3.5, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


