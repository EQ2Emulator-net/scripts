--[[
    Script Name    : SpawnScripts/TheRuins_Classic/avagrantsquatterComplainer.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.10 03:07:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
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
    


AddTimer(NPC,MakeRandomInt(7000,10000),"EmoteLoop")
Appearance(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","frustrated",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","curse",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","scold",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","shakefist",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","swear",0,0)

end
    AddTimer(NPC,MakeRandomInt(7000,10000),"EmoteLoop")    
else
    AddTimer(NPC,MakeRandomInt(7000,10000),"EmoteLoop") 
end
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
end