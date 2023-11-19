--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/aGiantslayerthugHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.18 10:11:24
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    barbarian(NPC)
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
    AddTimer(NPC,MakeRandomInt(3500,10000),"EmoteLoop")
end

function EmoteLoop(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","scheme",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","brandish",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","swear",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","ponder",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"EmoteLoop")
end


function race(NPC)
    local race = MakeRandomInt(1,3)
    if race == 1 then
        barbarian(NPC)
        elseif race == 2 then
            ogre(NPC)
            elseif race == 3 then
                troll(NPC)
    end
end
    
    
function barbarian(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",111)    
    else
    SpawnSet(NPC,"model_type",112)    
    end
    
end


function ogre(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",123)    
    else
    SpawnSet(NPC,"model_type",124)    
    end
    
end


function troll(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",105)    
    else
    SpawnSet(NPC,"model_type",106)    
    end

end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end