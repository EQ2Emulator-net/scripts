--[[
    Script Name    : SpawnScripts/Antonica/agrimecoveredsavageRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.08.25 08:08:01
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/HighwaymanAntonica.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)  
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 18
    local difficulty1 = 7
    local hp1 = 1180
    local power1 = 360
    local difficulty2 = 8
    local hp2 = 1290
    local power2 = 410
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
    local RaceCheck = MakeRandomInt(1,2)
    local GenderCheck = MakeRandomInt(1,2)
    if GenderCheck == 1 then
        SpawnSet(NPC,"gender",1)
    else
        SpawnSet(NPC,"gender",2)
    end
    
    local RaceChoice = MakeRandomInt(1,5)
    if RaceCheck ==1 then
        SpawnSet(NPC,"race",0)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",MakeRandomInt(1467,1471))
        else
        SpawnSet(NPC,"model_type",MakeRandomInt(1462,1466))
        end
    else
        SpawnSet(NPC,"race",9)
        if GetGender(NPC)==1 then
        SpawnSet(NPC,"model_type",134)
        else
        SpawnSet(NPC,"model_type",132)
        end     

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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 14, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    if IsInCombat(NPC)== false then
	FaceTarget(NPC, Spawn)
	Attack(NPC,Spawn)
	end
end