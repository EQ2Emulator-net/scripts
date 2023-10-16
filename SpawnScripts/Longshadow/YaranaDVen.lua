--[[
	Script Name		: SpawnScripts/LongshadowAlley/YaranaDVen.lua
	Script Purpose	: Yarana D'Ven
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

local NoRivalsForYarana = 5675

function spawn(NPC)
    ProvidesQuest(NPC, NoRivalsForYarana)
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
	Dialog.AddDialog("Do not waste my precious time by begging for attention.")
    PlayFlavor(NPC, "","","no",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/yarana_d_ven/fprt_hood05/quests/yaranadven/yarana_dven.mp3",1141324184,3432577979)
	
    if CanReceiveQuest(Spawn, NoRivalsForYarana) then
	Dialog.AddOption("Oh, sorry to bother you.", "Dialog1a")
    elseif GetQuestStepProgress(Spawn, NoRivalsForYarana)==2 then
	Dialog.AddOption("I found the Ratonga, but she didn't have the book.", "Dialog2")
    elseif GetQuestStepProgress(Spawn, NoRivalsForYarana)==4 then
	Dialog.AddOption("I found the Ratonga, but she didn't have the book.", "Dialog2")
    elseif GetQuestStepProgress(Spawn, NoRivalsForYarana)==5 then
	Dialog.AddOption("I found the Ratonga, but she didn't have the book.", "Dialog2")
    end

	Dialog.AddOption("I wasn't even talking to you.")
	Dialog.Start()
end



function Dialog1a(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wait! Are you looking for work?  My husband is an official in Longshadow. If you do as I ask, you won't find yourself on the wrong side of the militia, if you know what I mean...")
	Dialog.AddVoiceover("voiceover/english/yarana_d_ven/fprt_hood05/quests/yaranadven/yarana_dven000.mp3",1434779341,1687984253)
	Dialog.AddOption("What is it you need?", "Dialog1b")
	Dialog.AddOption("Seems like your husband has his hands full!","Pout")
	Dialog.AddOption("I don't want ANYTHING to do with you!")
	Dialog.Start()
end

function Pout (NPC,Spawn)
    PlayFlavor(NPC, "","","pout",0,0, Spawn)
end

function Dialog1b(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I cannot risk being overheard.  Come closer and I will whisper to you what I need. You must write these instructions down in your journal.  Do what I say, and I will reward you.")
	Dialog.AddVoiceover("voiceover/english/yarana_d_ven/fprt_hood05/quests/yaranadven/yarana_dven001.mp3",4193738982,2153468807)
    PlayFlavor(NPC, "","","snicker",0,0, Spawn)
	Dialog.AddOption("It sounds like I don't have a choice.", "OfferQuest1")
	Dialog.AddOption("I don't want ANYTHING to do with you!")
	Dialog.Start()
end


function OfferQuest1(NPC,Spawn)
    if CanReceiveQuest(Spawn, NoRivalsForYarana) then
    OfferQuest(NPC, Spawn, NoRivalsForYarana)
    end
end

function Dialog1a(NPC,Spawn)
    SetStepComplete(Spawn,NoRivalsForYarana,2)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Excellent. It seems one of my rivals is harvesting these things for revolutionary necromantic research--research I wish to halt. This brings me to your next task...")
	Dialog.AddVoiceover("voiceover/english/yarana_d_ven/fprt_hood05/quests/yaranadven/yarana_dven002.mp3",1415851457,630090694)
	Dialog.AddOption("Fine. Here is my journal. Write down what is needed.")
	Dialog.Start()
end