--[[
    Script Name    : SpawnScripts/Antonica/aAMBUSHhighwayman.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.01 11:05:35
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/HighwaymanAntonica.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
   CastSpell(NPC,41)


--[[    local RaceChoice = MakeRandomInt(1,5)
    if RaceChoice ==1 then
        SpawnSet(NPC,"race","0")
    elseif RaceChoice == 2 or RaceChoice == 3 then
        SpawnSet(NPC,"race","6")
    elseif RaceChoice == 4 or RaceChoice == 5 then
        SpawnSet(NPC,"race","9")
    end]]--
    
    SpawnSet(NPC,"model_type",2306)
    SpawnSet(NPC,"faction",0)
    SpawnSet(NPC,"show_name",0)
    SpawnSet(NPC,"show_level",0)
    SpawnSet(NPC,"attackable",0)
    SpawnSet(NPC,"targetable",0)
    SpawnSet(NPC,"show_command_icon",0)
    SpawnSet(NPC,"collision_radius",0)
    
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1180
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1315
    local power2 = 425
    AddTimer(NPC,MakeRandomInt(5000,11000),"Action")
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
end

function Action(NPC)
    local choice = MakeRandomInt(1, 9)
    if IsInCombat(NPC)== false then
    if choice == 1 then
        PlayFlavor(NPC, "", "", "cutthroat", 0, 0)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "stare", 0, 0)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "brandish", 0, 0)
    elseif choice == 5 then
        PlayFlavor(NPC, "", "", "taunt", 0, 0)
    elseif choice == 6 then
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0)
    elseif choice == 7 then
        PlayFlavor(NPC, "", "", "chuckle", 0, 0)
    elseif choice == 8 then
        PlayFlavor(NPC, "", "", "sneer", 0, 0)
    elseif choice == 9 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0)
    end
    end
AddTimer(NPC,MakeRandomInt(7000,11000),"Action")
end   





function respawn(NPC)
	spawn(NPC)
end