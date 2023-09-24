--[[
    Script Name    : SpawnScripts/Antonica/aSparrowHawk.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.04 05:07:44
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local level3 = 11
    local level4 = 12
    local level5 = 13
    local difficulty = 6
    local hp1 = 275
    local power1 = 110
    local hp2 = 370
    local power2 = 130
    local hp3 = 430
    local power3= 160
    local hp4= 550
    local power4 = 185
    local hp5 = 680
    local power5 = 205
    
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    elseif Level == level4
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp4)
    SpawnSet(NPC, "power", power4)
    elseif Level == level5
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp5)
    SpawnSet(NPC, "power", power5)
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