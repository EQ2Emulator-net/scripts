--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aBrokentuskguard.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.30 09:07:33
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BrokenTusk1.lua")

function spawn(NPC)
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