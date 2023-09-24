--[[
    Script Name    : SpawnScripts/Antonica/afieldshrike.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.22 03:01:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6))
    MovementLoopAddLocation(NPC, X + 16, Y+2, Z, 3,math.random(3,6))
	MovementLoopAddLocation(NPC, X + 16, Y+2, Z + 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X + 16, Y, Z + 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6))
    MovementLoopAddLocation(NPC, X - 16, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 16, Y, Z - 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 20, Y+2, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 16, Y, Z - 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X + 16, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X + 16, Y+2, Z - 4, 3,math.random(3,6))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X + 16, Y-2, Z - 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 16, Y, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 16, Y+2, Z + 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 20, Y-2, Z, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X - 16, Y, Z + 4, 3, math.random(3,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 3, math.random(3,6), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end