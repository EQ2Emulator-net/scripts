--[[
    Script Name    : SpawnScripts/TempleSt/Tarakh.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:27
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog2(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tarakh/fprt_hood03/100_barpatrontarakh_callout_843c542c.mp3", "Keep your tongue to yourself, lest you find it missing.", "", 84248268, 2425627383, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Try me!  First I'll gut you then I'll return to your grave to rob it!  Though it's unlikely you would have anything of value in your pine box.")
	Dialog.AddVoiceover("voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh000.mp3", 33100111, 1117280474)
    PlayFlavor(NPC,"","","threaten",0,0,Spawn)
	Dialog.AddOption("It doesn't surprise me that you are a dirty little grave robber. ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Keep your tongue to yourself, lest you find it missing.")
	Dialog.AddVoiceover("voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh.mp3", 3608596443, 357856972)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	Dialog.AddOption("Big talk from a little rat.", "Dialog1")
	Dialog.AddOption("My apologies, I will move on.")
	Dialog.Start()
end
