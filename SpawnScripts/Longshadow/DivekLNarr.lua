--[[
	Script Name		: SpawnScripts/LongshadowAlley/DivekLNarr.lua
	Script Purpose	: Divek L`Narr
	Script Author	: torsten\\Dorbin - Added Dialog (Mostly fabricated)
	Script Date		: 2022.07.18
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

local DeadManEyes = 5674

function spawn(NPC)
    ProvidesQuest(NPC, DeadManEyes)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else  
    if not HasLanguage(Spawn,2)then
    Garbled(NPC,Spawn)
    else
    Dialog1(NPC,Spawn)
    end
    end
end

function Dialog1(NPC,Spawn)
    if HasLanguage(Spawn, 2) then --Thexian
        if not HasQuest(Spawn, DeadManEyes) and not HasCompletedQuest(Spawn, DeadManEyes) then
           OfferQuest(NPC, Spawn, DeadManEyes)
        end
        if GetQuestStep(Spawn, DeadManEyes) == 2 then
            SetStepComplete(Spawn, DeadManEyes, 2)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", 0, 0, Spawn)
	end
end