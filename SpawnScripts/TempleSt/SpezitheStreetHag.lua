--[[
    Script Name    : SpawnScripts/TempleSt/SpezitheStreetHag.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.22 05:10:59
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "flirt")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Take a good look!  There are nots many as attractive as I, Spezi. You want somes company?")
	Dialog.AddVoiceover("voiceover/english/spezi_the_street_hag/fprt_hood03/qst_streethagspezi.mp3", 1064590659, 1345460348)
	Dialog.AddLanguage(26)
    PlayFlavor(NPC,"","","flirt",0,0,Spawn)
    if GetQuestStep(Spawn, TheMissingBook) == 1 then
    Dialog.AddOption("Enough! Where is the stolen tome from Longshadow Alley?","Dialog2")
    end
    Dialog.AddOption("Yes, there are very few with your level of attractiveness.  I have to be someplace else now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I do nots know who you speaks of! You mistakes me for someoneses else!")
	Dialog.AddVoiceover("voiceover/english/spezi_the_street_hag/fprt_hood05/quests/lotniklria/falseratonga_lotni_x1_initial.mp3", 1342345543, 1293466742)
	Dialog.AddLanguage(26)
    PlayFlavor(NPC,"","","confused",0,0,Spawn)
    Dialog.AddOption("Alright.")
	Dialog.Start()
end