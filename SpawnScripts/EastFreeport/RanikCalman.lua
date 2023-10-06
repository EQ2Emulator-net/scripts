--[[
    Script Name    : SpawnScripts/EastFreeport/RanikCalman.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.05 03:10:05
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
	Dialog.AddDialog("Aye. Welcome to the Seafarer's Roost. Been out at sea for a while, or just stopping through? Put some coin in my hand and I'll sell ye drinks until ye sail out again.")
	Dialog.AddVoiceover("voiceover/english/merchant_ranik_calman/fprt_east/ranikcalman000.mp3", 2125799617, 970361473)
	if HasQuest(Spawn,Fighter) and GetQuestStep(Spawn,Fighter)>=3 and  GetQuestStep(Spawn,Fighter)<=5  and GetQuestStepProgress(Spawn,Fighter,4)==0 then
	Dialog.AddOption("I have a message for you from the Overlord.","Dialog2")
	end
	Dialog.AddOption("Thanks for the info.")
	Dialog.Start()
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("From the Overlord? Really? Umm ... I'm afraid to ask what the message is...")
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/merchant_ranik_calman/fprt_east/ranikcalman001.mp3", 2775106195, 3777373516)
	Dialog.AddOption("You should be. How about a kick to the groin!","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(Spawn, "", "", "kick", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog2b",1,Spawn)
end


function Dialog2b(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(NPC, "", "", "gutcramp", 0, 0, Spawn)
    ApplySpellVisual(NPC,249)
    AddTimer(NPC,800,"Dialog3",1,Spawn)
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ow! What kind of message was that?")
	SetStepComplete(Spawn,Fighter,4)
	Dialog.AddVoiceover("voiceover/english/merchant_ranik_calman/fprt_east/ranikcalman002.mp3", 2302749969, 1537670483)
	Dialog.AddOption("No more serving Guttersnipes!")
	Dialog.Start()
end