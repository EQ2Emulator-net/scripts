--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/aFreeportraiderTroll.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.28 08:10:46
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"
dofile("SpawnScripts/Generic/MonsterCallouts/BaseTroll1.lua")

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    Appearance(NPC)
    SpawnSet(NPC, "heroic", 1)
    
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
AddTimer(NPC,MakeRandomInt(3500,10000),"EmoteLoop")
end

function EmoteLoop(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","scratch",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","confused",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","sniff",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","grumble",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"EmoteLoop")
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
    SpawnSet(NPC,"model_type",105)    
    else
    SpawnSet(NPC,"model_type",106)    
    end
end