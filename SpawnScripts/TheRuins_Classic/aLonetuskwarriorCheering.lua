--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskwarriorCheering.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.04 07:07:20
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/LoneTusk2.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)

    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local level3 = 11
    local difficulty1 = 6
    local hp1 = 275
    local power1 = 110
    local difficulty2 = 6
    local hp2 = 370
    local power2 = 130
    local difficulty3 = 6
    local hp3 = 430
    local power3 = 160
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end
AddTimer(NPC,MakeRandomInt(1000,3500),"EmoteLoop")
end

function EmoteLoop(NPC,Spawn)
    local zone = GetZone(NPC)
    local Dancer = GetSpawnByLocationID(zone,133785473)
if IsInCombat(NPC)==false then
    if Dancer ~=nil and IsAlive(Dancer)then
        choice = MakeRandomInt(1,3)
        if choice == 1 then
            PlayFlavor(NPC,"","","cheer",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","woowoo",0,0)        
        elseif choice == 3 then
            PlayFlavor(NPC,"","","happy",0,0)  
        end
    else
        choice = MakeRandomInt(1,3)
        if choice == 1 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","grumble",0,0)        
        elseif choice == 3 then
            PlayFlavor(NPC,"","","peer",0,0)
        end
    end
end
    AddTimer(NPC, MakeRandomInt(5500,8500),"EmoteLoop")
end

function respawn(NPC)
	spawn(NPC)
end

