--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/afiendishghoul.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 07:08:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 430
    local power2 = 160
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
    SetSpawnAnimation(NPC, 13016)

    AddTimer(NPC, MakeRandomInt(3000,6000), "ChooseMovement")

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
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X , Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 2, Y, Z -4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z - 2, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z -4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X , Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(10,20),  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X -4, Y, Z - 4, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X + 2, Y, Z -4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z -2, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2,math.random(10,20))
	MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end