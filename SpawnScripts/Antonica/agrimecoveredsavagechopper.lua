--[[
    Script Name    : SpawnScripts/Antonica/agrimecoveredsavagechopper.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 05:05:59
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/HighwaymanAntonica.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)

    
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
    if RaceCheck ==1 then
        SpawnSet(NPC,"race",0)
        human(NPC, Spawn)
    else
        SpawnSet(NPC,"race",9)
        barbarian(NPC, Spawn)  
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