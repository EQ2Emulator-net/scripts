--[[
    Script Name    : SpawnScripts/IsleRefuge1/amammothbeetleLongerPath.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.02 04:08:14
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"


function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 2
    local level2 = 3
    local difficulty1 = 6
    local hp1 = 45
    local power1 = 35
    local difficulty2 = 6
    local hp2 = 75
    local power2 = 45
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
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructSInt(NPC, "hp_regen", 0)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X + 8, Y, Z - 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 8, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 8, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(10,20), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 8, Y, Z - 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 8, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end