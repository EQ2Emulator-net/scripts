--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aBrokentusksentry.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.30 10:07:35
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BrokenTusk1.lua")
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

AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop")
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","glare",0,0)
--            PlayAnimation(NPC, 310)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","peer",0,0)
--            PlayAnimation(NPC, 411)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","yawn",0,0)
--            PlayAnimation(NPC, 891)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
--            PlayAnimation(NPC, 713)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","sniff",0,0)
--            PlayAnimation(NPC, 553)
end
    AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop")    
else
    AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop") 
end
end