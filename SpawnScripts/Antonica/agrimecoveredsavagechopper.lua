--[[
    Script Name    : SpawnScripts/Antonica/agrimecoveredsavagechopper.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 05:05:59
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