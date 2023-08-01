--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskcrusherRekrin.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.01 12:08:38
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/LoneTusk2.lua")

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
   AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop")
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayAnimation(NPC, 717)
        elseif choice == 2 then
            PlayAnimation(NPC, 717)
        elseif choice == 3 then
            PlayAnimation(NPC, 891)
        elseif choice == 4 then
            PlayAnimation(NPC, 713)
        elseif choice == 5 then
            PlayAnimation(NPC, 553)
end
    AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop")    
else
    AddTimer(NPC,MakeRandomInt(10000,15000),"EmoteLoop") 
end
end