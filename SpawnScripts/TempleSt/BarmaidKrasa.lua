--[[
    Script Name    : SpawnScripts/TempleSt/BarmaidKrasa.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:13
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

dofile("SpawnScripts/Generic/UnknownLanguage.lua")


function spawn(NPC)
    SetPlayerProximityFunction(NPC,9, "InRange", "LeaveRange")
    SetInfoStructString(NPC, "action_state", "ponder")
end


function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,12)<0 then
    FactionCheckCallout(NPC,Spawn,faction)
    else
    if not HasLanguage(Spawn,13)then
        if math.random(0,100)<80 then
        Garbled(NPC,Spawn)
        end
--    elseif CanReceiveQuest(Spawn,SinceTheWheel) then
--     	FaceTarget(NPC, Spawn)
--		PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn, 6)
end
end
end

function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
elseif not HasLanguage(Spawn,13) then
     	FaceTarget(NPC, Spawn)
        Garbled(NPC,Spawn)    
else
 --   if GetQuestStep(Spawn,SinceTheWheel) ==1 then
--    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_"..MakeRandomInt(1,3).."_1020.mp3","My tracking device does not show the Bisecter with you! Go and get it!... Please?","confused",0,0,Spawn, 6)
--    FaceTarget(NPC, Spawn)
--   else
 --       Dialog1(NPC,Spawn)
 --   end
end
end

function respawn(NPC)
	spawn(NPC)
end