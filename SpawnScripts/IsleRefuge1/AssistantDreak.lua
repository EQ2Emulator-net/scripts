--[[
    Script Name    : SpawnScripts/IsleRefuge1/AssistantDreak.lua
    Script Author  : Ememjr
    Script Date    : 2022.03.27 09:03:56
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Cellar =5749


function spawn(NPC)
    ProvidesQuest(NPC,Cellar)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if not HasQuest(Player,Cellar) and not HasCompletedQuest(Player,Cellar) then
    PlayFlavor(NPC,"voiceover/english/assistant_dreak/tutorial_island02/030_wizard_assistant_dreak_aoicallout_e3958bf.mp3","Such a mess! Malvonicus is going to kill me!","grumble",541493613,293203409, Spawn)
end
end

function hailed(NPC, Player)
if not HasQuest(Player,Cellar) and not HasCompletedQuest(Player,Cellar) then
Dialog1(NPC,Player)
end
end

function Dialog1(NPC, Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak001.mp3","","",2907679285,3779656812, Player)
    AddConversationOption(conversation,"Why, what happened to the workshop?","WhatHappened")
    StartConversation(conversation, NPC, Player,"Oh, hello there. Welcome to the mage tower.  If you're looking for masters Mizan or Malvonicus, they can both be found upstairs.  If you've come to use the workshop ... well, I'm afraid you're out of luck for the time being.")
end



function WhatHappened(NPC, Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak002.mp3","","",402125016,2910805792, Player)
    AddConversationOption(conversation,"What's this workshop for anyways?","ItsMyFault")
    StartConversation(conversation, NPC, Player,"It's all my fault, really.  I could've sworn I wrote down the directions for that alacrity potion correctly.  I mean, honestly, who could've expected such a spectacular explosion?  Now the lab's a mess, and no one can use the workshop.  I can't even clean it up now, because I'm supposed to be welcoming the refugees.")
end
function ItsMyFault(NPC, Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak003.mp3","","",1218168009,4084296157, Player)
    AddConversationOption(conversation,"All right, it's a deal.","ForCrafting")
    StartConversation(conversation, NPC, Player,"For crafting, of course!  With the right recipes and materials, you can make just about anything you want down there, from metal working to brewing.  Say... if you're interested in learning more about crafting yourself, I'd be willing to make you a deal.  I'll give you free, unlimited access to the workshop, if you'd be willing to clean up the place.  What do you say?")
end

function ForCrafting(NPC, Player)
    FaceTarget(NPC,Player)
    OfferQuest(NPC,Player,Cellar)
end


function respawn(NPC)
	spawn(NPC)
end