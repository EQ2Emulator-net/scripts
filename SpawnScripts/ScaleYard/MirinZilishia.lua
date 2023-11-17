--[[
	Script Name		: SpawnScripts/ScaleYard/MirinZilishia.lua
	Script Purpose	: Mirin Zilishia
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local AntiusPackage = 5651
local WillWorkforWar = 5703

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, WillWorkforWar) == 2 then
        SetStepComplete(Spawn, WillWorkforWar, 2)
    end

    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If you bother me, I will act upon the thoughts that have been coursing through my head from the moment I saw you.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", 0, 0)
	if GetQuestStep(Spawn,AntiusPackage) ==1 then
	Dialog.AddOption("Here's a package for you. What in blazes is going on? I'm confused.", "Dialog2")
    end
	Dialog.AddOption("I'm not sure I want to know what those are. Bye.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why did Antius send you? Well, I guess you have the password, so I'll assume you're the one. What's that weasel up to? Ahhhhhh ... I think I see what he was doing. Hmmm ... Maybe he's smarter than he looks. Okay ... let him know it's getting bigger and that I'll need more of the hooks.")
    PlayFlavor(NPC, "","","ponder",0,0, Spawn)
    SetStepComplete(Spawn, AntiusPackage, 1)
	Dialog.AddOption("I'm not sure what this is all about... but I'll tell him.")
	Dialog.Start()
end


