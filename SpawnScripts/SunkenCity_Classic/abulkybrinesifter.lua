--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/abulkybrinesifter.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.12 04:10:04
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 8
    local hp1 = 405
    local power1 = 180
    local difficulty2 = 8
    local hp2 = 485
    local power2 = 200
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
    local SpawnID = GetSpawnLocationID(NPC)
    if SpawnID < 133787438 or SpawnID > 133787441  then 
    AddTimer(NPC,MakeRandomInt(0,4000),"ChooseMovement")
    else                                                        --TABLE SPAWNING CRABS
--    SetInfoStructString(NPC, "action_state", "combat_idle")
    AddTimer(NPC,MakeRandomInt(1000,4000),"CombatScream")       --TABLE SPAWNING CRABS ATTACK CRY
    AddTimer(NPC,5000,"CombatCheck")
   end
end

function CombatScream(NPC)
    PlaySound(NPC,"sounds/critters/crab/crab_scream01.wav",GetX(NPC),GetY(NPC),GetZ(NPC))
end

function CombatCheck(NPC)                                       --TABLE SPAWNING CRABS CHECKS FOR COMBAT
    if IsInCombat(NPC)== true then
    AddTimer(NPC,30000,"CombatCheck")
        else
    Despawn(NPC)
    end
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