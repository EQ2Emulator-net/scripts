--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/aFreeportraiderDarkElf.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.28 08:10:33
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"
dofile("SpawnScripts/Generic/MonsterCallouts/BaseDarkElf1.lua")

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    Appearance(NPC)
    SpawnSet(NPC, "heroic", 1)
    
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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
--ChooseMovement(NPC)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12))
    MovementLoopAddLocation(NPC, X + 5, Y, Z, 2,math.random(7,12))
	MovementLoopAddLocation(NPC, X , Y, Z + 5, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X + 5, Y, Z -5, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 3, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12))
    MovementLoopAddLocation(NPC, X - 5, Y, Z, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X, Y, Z - 5, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X - 5, Y, Z -2, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X , Y, Z - 3, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12),  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X -5, Y, Z - 2, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X + 5, Y, Z -4, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 5, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X - 4, Y, Z -5, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 3, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,12), "ChooseMovement")
end


function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",116)    
    else
    SpawnSet(NPC,"model_type",115)    
    end
end