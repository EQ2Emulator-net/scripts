--[[
    Script Name    : SpawnScripts/WestFreeport/GrumZoomly.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.05 05:10:43
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Fighter = 5898

function spawn(NPC)
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
	Dialog.AddDialog("I don't want any trouble here in my bar, understand?  People really hate it when I get angry.")
	Dialog.AddVoiceover("voiceover/english/grum_zoomly/fprt_west/grumzoomly000.mp3", 894167480, 1838777111)
	if HasQuest(Spawn,Fighter) and GetQuestStep(Spawn,Fighter)>=3 and  GetQuestStep(Spawn,Fighter)<=5  and GetQuestStepProgress(Spawn,Fighter,5)==0 then
	Dialog.AddOption("Lucan is disappointed that you've been serving the Guttersnipes.","Dialog2")
	end
	Dialog.AddOption("Got it.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What Lucan doesn't know won't hurt him.")
    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/grum_zoomly/fprt_west/grumzoomly001.mp3", 144241661, 2143125475)
	Dialog.AddOption("You're right, but it'll hurt you. How about a punch to the gut!","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(Spawn, "", "", "pugilist_attack02", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog2b",1,Spawn)
end


function Dialog2b(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(NPC, "", "", "ouch", 0, 0, Spawn)
    ApplySpellVisual(NPC,249)
    AddTimer(NPC,800,"Dialog3",1,Spawn)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ughhh! Stop it!!!  I take it this is his idea of a warning?  Fine, I'll stop serving them.")
    PlayFlavor(NPC, "", "", "gutcramp", 0, 0, Spawn)
	SetStepComplete(Spawn,Fighter,5)
	Dialog.AddVoiceover("voiceover/english/grum_zoomly/fprt_west/grumzoomly002.mp3", 3096589689, 3928464974)
	Dialog.AddOption("I'm glad we could come to an understanding.")
	Dialog.Start()
end