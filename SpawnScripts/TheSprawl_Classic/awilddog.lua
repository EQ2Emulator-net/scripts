--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/awilddog.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.08 08:11:38
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(8,15))
    MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2,math.random(8,15))
	MovementLoopAddLocation(NPC, X , Y, Z + 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z -4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(8,15), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(8,15))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z -4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X , Y, Z - 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X- 4, Y, Z, 2, 0,  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X -4, Y, Z - 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z +4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X, Y, Z + 3, 2, math.random(8,15), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z -4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(8,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(8,15), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end