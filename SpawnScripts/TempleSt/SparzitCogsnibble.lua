--[[
    Script Name    : SpawnScripts/TempleSt/SparzitCogsnibble.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.08 03:07:42
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Teeth = 5876


function spawn(NPC)
    ProvidesQuest(NPC,Teeth)
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
	Dialog.AddDialog("What? Of course I would like a beer. All of those nasty little voices are so much easier to ignore after I've had a few. Now serve up, my good rat.")
	Dialog.AddVoiceover("voiceover/english/sparzit_cogsnibble/fprt_hood03/qst_barpatronsparzitcogsnibble.mp3", 1913284555, 4209865742)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
        if CanReceiveQuest(Spawn,Teeth) then
        Dialog.AddOption("What voices are you talking about?","Dialog2")
        elseif GetQuestStep(Spawn,Teeth) == 2 then
        Dialog.AddOption("Here are some of fine snake teeth you asked for.","Quest1Done")
        end        
    Dialog.AddOption("Perhaps you've had enough...")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, just the voice that whispers in my ear while I whip up gadgets. They say things like, \"more spikes\" and \"make a larger explosion\" ... Hee hee hee ... little things like that. On my latest gadget, the voice says: \"make the fangs sharper\" and \"kill, kill, kill!\"")
	Dialog.AddVoiceover("voiceover/english/sparzit_cogsnibble/fprt_hood03/quests/sparzitcogsnibble/sparzit_x1_initial.mp3", 3048716634, 4074203837)
    PlayFlavor(NPC,"","","shrug",0,0,Spawn)
    Dialog.AddOption("Those voices must keep you busy! What are you working on?","Dialog3")
    Dialog.AddOption("Right. I should be going... now.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm building a contraption to solve an annoying problem. Living in such a small neighborhood, people constantly barge into my home, thinking it's theirs. In turn, I'm creating a clockwork snake that keeps people from glancing -- AHA! You can help me!")
	Dialog.AddVoiceover("voiceover/english/sparzit_cogsnibble/fprt_hood03/quests/sparzitcogsnibble/sparzit_x1_initial2.mp3", 2187428014, 4274175998)
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
    Dialog.AddOption("What is it your voices... er you need?","Offer")
    Dialog.AddOption("Clockwork snake? I'll pass.")
	Dialog.Start()
end

function Offer(NPC,Spawn)
  	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Teeth)
end

function Quest1Done(NPC, Spawn)
    SetStepComplete(Spawn,Teeth,2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmmm ... let's see ... yes ... yes ... these teeth are very basic. Hmmm ... I must extend the teeth and draw out its tips ... yesssss ... I see where I went wrong. The barbs I use stick after puncturing a person's vitals. Woohoo! I'm on to something. Here, friend, take this coin for your time.")
	Dialog.AddVoiceover("voiceover/english/sparzit_cogsnibble/fprt_hood03/quests/sparzitcogsnibble/sparzit_x1_finish.mp3", 2748213193, 2852199972)
    PlayFlavor(NPC,"","","ponder",0,0,Spawn)
    Dialog.AddOption("I'll be sure to stay away once you've perfected them.")
	Dialog.Start()
end
