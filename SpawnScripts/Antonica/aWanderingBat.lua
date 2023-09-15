--[[
    Script Name    : SpawnScripts/Antonica/aWanderingBat.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.05 04:07:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/CatalogueQuestUpdates.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 6
    local hp1 = 275
    local power1 = 110
    local difficulty2 = 6
    local hp2 = 370
    local power2 = 130
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
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 7, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 7, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z - 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z - 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10),"ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z - 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z - 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10),"ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z + 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z + 4, 3, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(5,10),  "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end