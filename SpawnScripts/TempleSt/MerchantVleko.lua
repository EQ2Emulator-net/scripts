--[[
    Script Name    : SpawnScripts/TempleSt/MerchantVleko.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 11:10:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local VlekoPlan = 5873

function spawn(NPC)
    ProvidesQuest(NPC, VlekoPlan)
	SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else    
end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else
    Dialog1(NPC,Spawn)
    end
end


function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Kahhh!!! I hate those Togglesmeets! Their items are shoddy.  We only makes the finest quality items. Togglesmeets will sell you the unsafes!  My poppa sells you good quality!")
	Dialog.AddVoiceover("voiceover/english/merchant_vleko/fprt_hood03/mer_merchantvleko.mp3",4226142003,2683221742)
	

    if CanReceiveQuest(Spawn, VlekoPlan) then
	Dialog.AddOption("Rediculous! Convince them to move their stall!", "Dialog1a")
    elseif GetQuestStep(Spawn, VlekoPlan)==2 then
	Dialog.AddOption("Here is the orcish sword you requested.", "Dialog2")
    end
	Dialog.AddOption("How about I just browse your wares.")
	Dialog.Start()
end



function Dialog1a(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We do! We do! We tell them to leave, or they maybe have an accident. Accidents happen all the time. They don't believe us, but poppa says to wait and watch. Geheeea! Maybe you help me pass the time?")
	Dialog.AddVoiceover("voiceover/english/merchant_vleko/fprt_hood03/quests/vleko/vleko_x1_initial.mp3",86797808,1238006206)
    PlayFlavor(NPC, "","","nod",0,0, Spawn)
	Dialog.AddOption("I could be persuaded... What do you have in mind?", "OfferQuest1")
	Dialog.AddOption("I have better thing to do.")
	Dialog.Start()
end

function OfferQuest1(NPC,Spawn)
    if CanReceiveQuest(Spawn, VlekoPlan) then
    OfferQuest(NPC, Spawn, VlekoPlan)
    end
end

function Dialog2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hide it! Hide it! If Togglesmeets see it then poppa will know what I'm doing! Okay, pass it to me. Good. Now, take this money and keep your mouth shut. I don't know you, and I've never seen you. Hehehehe ... soon, accidents happen to Togglesmeets.")
 	Dialog.AddVoiceover("voiceover/english/merchant_vleko/fprt_hood03/quests/vleko/vleko_x1_finish.mp3",1524753071,3531869216)
    PlayFlavor(NPC, "","","scheme",0,0, Spawn)
	Dialog.AddOption("Thanks. Good luck with your feud, or whatever!")
	Dialog.Start()
    SetStepComplete(Spawn, VlekoPlan, 2)
end