--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskpounderHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.01 07:07:31
    Script Purpose : 
                   : 
--]]

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