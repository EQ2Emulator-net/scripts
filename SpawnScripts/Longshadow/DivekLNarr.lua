--[[
	Script Name		: SpawnScripts/LongshadowAlley/DivekLNarr.lua
	Script Purpose	: Divek L`Narr
	Script Author	: torsten\\Dorbin - Added Dialog (Mostly fabricated)
	Script Date		: 2022.07.18
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

local DeadManEyes = 5674

function spawn(NPC)
    ProvidesQuest(NPC, DeadManEyes)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else  
--    if not HasLanguage(Spawn,2)then
--    Garbled(NPC,Spawn)
--else
    Dialog1(NPC,Spawn)
    end
 --   end
end

function Dialog1(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't you see I'm busy organizing my collections of wisdom? I've no time for chatting. Leave me alone!")
	Dialog.AddVoiceover("voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_multhail1_becd50b2.mp3", 3010394589, 1905118172)
	Dialog.AddLanguage(2)
    if CanReceiveQuest(Spawn, DeadManEyes) then
	Dialog.AddOption("What are you going on about?", "Dialog2")
    elseif GetQuestStep(Spawn, DeadManEyes) == 2 then
	Dialog.AddOption("Here are the eyes you requested.", "Dialog8")
    end
	Dialog.AddOption("Perhaps you should lock your door then!")
	Dialog.Start()
	
end

--That advice is precisely what I'd expect from a lowborn such as yourself.  However, my methods are more subtle.  After years of tracking down the murderer, I've concluded that his secret indeed lies within the ancient ruins of Neriak.  If I can gain passage into its depths, I should be able to catch the murderer unaware and avenge my brother.
--You have an impertinent manner.  Still, I may be able to use you.  I have applied myself to the dark arts so that I may one day channel my departed brother's spirit for further clues.  There is a special reagent I need to perform the channeling ritual.  If you gather it for me, you will be handsomely paid.
--Allow me to inspect them ... yes, these will suffice.  Now, take your coin and go.  I must perform this ritual undisturbed.  If you hear any screams, do not attempt to interfere.  If you disrupt the delicate procedure, I will use you as my next source of Dead Man's Eyes.  Do you understand?
function Dialog2(NPC,Spawn)
    if HasLanguage(Spawn, 2) then --Thexian
        if not HasQuest(Spawn, DeadManEyes) and not HasCompletedQuest(Spawn, DeadManEyes) then
           OfferQuest(NPC, Spawn, DeadManEyes)
        end
        if GetQuestStep(Spawn, DeadManEyes) == 2 then
            SetStepComplete(Spawn, DeadManEyes, 2)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", 0, 0, Spawn)
	end
end