--[[
    Script Name    : SpawnScripts/Longshadow/aspiderhatchling.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.15 01:10:53
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    AddTimer(NPC,MakeRandomInt(0,3500),"ChooseMovement")
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
    MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(6,10))
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(10,20))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(6,10))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(10,20))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(6,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(10,20))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(6,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 6, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 6, math.random(10,20))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end
