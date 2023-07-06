--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskshamanHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.01 07:07:12
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/LoneTusk2.lua")

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
AddTimer(NPC,MakeRandomInt(15000,20000),"EmoteLoop")
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,5)
        if choice == 1 then
            CastSpell(NPC, 110002, 5, NPC)
        elseif choice == 2 then
            CastSpell(NPC, 110003, 5, NPC)
            PlayFlavor(NPC,"","","yawn",0,0)
--          PlayAnimation(NPC, 891)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
--          PlayAnimation(NPC, 713)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","sniff",0,0)
--          PlayAnimation(NPC, 553)
end
    AddTimer(NPC,MakeRandomInt(15000,20000),"EmoteLoop")    
else
    AddTimer(NPC,MakeRandomInt(15000,20000),"EmoteLoop") 
end
end