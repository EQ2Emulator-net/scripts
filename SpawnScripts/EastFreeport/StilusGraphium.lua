--[[
    Script Name    : SpawnScripts/EastFreeport/StilusGraphium.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.27 04:09:26
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Part1 = 5889

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "tapfoot")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetAlignment(Spawn)~=0 then
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
else
    Dialog1(NPC,Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Hail, hail, and all that.  I'm very busy right now.  I must get today's edition out by at least tomorrow.  If you want to chat, try the guards.  They're always up for good banter.")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium.mp3", 626338698, 3291446303)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    Dialog.AddOption("Fine. I was just leaving.")	
    Dialog.AddOption("Whose side are you on, anyway?","Dialog2")	
	Dialog.Start()
end

function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("People who don't choose a side end up breathing dirt in some fitlhy alley. This is the one thing the Quintet agree on. Choose a side when they tell you, or die.  Then again, there is another way...")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium000.mp3", 343230773, 2344751061)
    Dialog.AddOption("I don't like where this is going. I'm leaving.")	
    Dialog.AddOption("What other side are you talking about?","Dialog3")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Qeynos.  You can always choose Qeynos.  Look around you, friend!  Do what the guards say, or they kill you.  Carry out the evil wishes of the Quintet, or they kill you.  Worship Lucan as a god, or he kills you.  We're all slaves to the Overlord in this godsforsaken city!  Is that how you want to live?")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium001.mp3", 2011282956, 1928628774)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("No way!  I don't want to go to Qeynos.")	
    Dialog.AddOption("Are you some sort of spy?","Dialog4")	
	Dialog.Start()
end

function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("If by spy you mean someone who wants the evil ways of Freeport stopped, then yes, I am a spy.  I fight for the ideals of goodwill rather than the empty promises of evil.  If you feel the same way, then you must join us in Qeynos, friend.  What do you say? ")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium002.mp3", 393133427, 3433323586)
    Dialog.AddOption("Qeynos is for the weak.  My home is Freeport.  And you are a traitor!","Dialog5")	
    Dialog.AddOption("Yes.  I cannot stand the evil of Freeport.  I want to fight for good, not evil!","Betray1")	
	Dialog.Start()
end

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A traitor?  How am I a traitor?  I'm not the refugee who hopped off a boat not too long ago, you are.  I'm not the one who was snooping around town asking lots of questions about the Quintet, you are.")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium003.mp3", 1760281781, 1305326262)
    PlayFlavor(NPC, "", "", "whome", 0, 0, Spawn)
    Dialog.AddOption("You are the one who brought up Qeynos!","Dialog6")	
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I am, however, the one who informed the Lucanic Knights that you are the spy they're looking for. As we speak, they're waiting to hear from me.")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium004.mp3", 3111410834, 984123691)
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    Dialog.AddOption("I should kill you where you stand.","Dialog7")	
    Dialog.AddOption("I want nothing more to do with this!")	
	Dialog.Start()
end

function Dialog7(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("If you kill me, I'll never get the chance to clear your name, will I?  On the other hand, if you walk away and pretend we never talked, I'll tell Lucan's Knights that the spy was someone else.  So walk away, keep your mouth shut, and we're both happy.  Good bye, stranger.")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium005.mp3", 2090418381, 2124257979)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    Dialog.AddOption("Fine, but sleep with one eye open.")	
	Dialog.Start()
end

function Betray1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You must understand that just speaking these words makes you a traitor.  You know what the Overlord does to traitors, right? Do you believe in your heart that following the path of goodwill to  Qeynos is for you?")
	Dialog.AddVoiceover("voiceover/english/stilus_graphium/fprt_east/qst_stilusgraphium006.mp3", 730354074, 1124651336)
    Dialog.AddOption("What was I thinking?!  I would never choose to leave Freeport!  TRAITOR!","Dialog5")	
    Dialog.AddOption("Yes.  I wish to forsake evil by helping Qeynos in their struggle!","Betray2")	
	Dialog.Start()
end

function Offer(NPC,Spawn)
    OfferQuest(NPC,Spawn,Part1)
end

--I have a list of names here, if you'd like to record this in your journal.  You should speak with these people and then make a choice as to which side you want to join.  Make sure you think well before you choose.  Once you pick a side, you can never work for the other members of the Quintet.