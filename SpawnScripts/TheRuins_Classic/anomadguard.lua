--[[
    Script Name    : SpawnScripts/TheRuins_Classic/anomadguard.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.09 07:07:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 80
    local difficulty2 = 6
    local hp2 = 200
    local power2 = 90
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
    
    Appearance(NPC)
    AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
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