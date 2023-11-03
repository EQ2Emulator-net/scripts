--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/acursedcutthroat.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.17 07:10:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"
dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton1.lua")

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 80
    local difficulty2 = 6
    local hp2 = 200
    local power2 = 90
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
AddTimer(NPC,MakeRandomInt(0,4000),"ChooseMovement")
    SetSpawnAnimation(NPC, 13016)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15))
    MovementLoopAddLocation(NPC, X + 5, Y, Z, 2,math.random(10,15))
	MovementLoopAddLocation(NPC, X , Y, Z + 5, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X + 5, Y, Z -5, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 3, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15))
    MovementLoopAddLocation(NPC, X - 5, Y, Z, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X, Y, Z - 5, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X - 5, Y, Z -2, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X , Y, Z - 3, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15),  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X -5, Y, Z - 2, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X + 5, Y, Z -4, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 5, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z -5, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 3, 2,math.random(10,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,15), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end