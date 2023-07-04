--[[
	Script Name		: SpawnScripts/LongshadowAlley/ImnatDVren.lua
	Script Purpose	: Imnat D`Vren
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local ADramaticPerformance = 5679
local AShadyClearing = 5680
local TheTruthisoutThere = 5684

function spawn(NPC)
    ProvidesQuest(NPC, AShadyClearing)
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
	Dialog.AddDialog("Bah! That Maliz keeps breaking everything. He's not allowed near what little furniture we have left! What do you want? Can't you see I'm busy!")
    PlayFlavor(NPC, "","","grumble",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/imnat_d_vren/fprt_hood05/100_std_de_male_imnat_dvren_callout_c7828a4.mp3",3649396705, 3766219054)
	
    if GetQuestStep(Spawn, TheTruthisoutThere)==1 then
	Dialog.AddOption("I found out the culprit is Kirs G'viz, here in Longshadow Alley.", "Dialog2")
    end

	Dialog.AddOption("I was just leaving.")
	Dialog.Start()
end 
 
function Dialog2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I wondered if the Militia would ever confront this menace.  It's about time!  I grow weary of all this chatter about Thexians rebuilding Neriak.  Neriak is gone forever!  We must forget it!  Freeport is our home now.  Tell your dear Captain to arrest one Kirs G'Vis who nests with his fellow Thexian vermin right here in Longshadow.  He's your liar. May he face the wrath of Lucan.")
	Dialog.AddVoiceover("voiceover/english/imnat_d_vren/fprt_hood05/quests/captainlnek/imnat_lnek_x1_initial.mp3",3046593267,1007171639)
    PlayFlavor(NPC, "","","sniff",0,0, Spawn)
	Dialog.AddOption("Your information is most welcome.")
	Dialog.Start()
	if GetQuestStep(Spawn, TheTruthisoutThere) == 1 then
        SetStepComplete(Spawn, TheTruthisoutThere, 1)
    end
end
    
--[[    if HasCompletedQuest(Spawn, ADramaticPerformance) then
        if not HasQuest(Spawn, AShadyClearing) and not HasCompletedQuest(Spawn, AShadyClearing) then
           OfferQuest(NPC, Spawn, AShadyClearing)
        end
    end
    
	if GetQuestStep(Spawn, AShadyClearing) == 2 then
        SetStepComplete(Spawn, AShadyClearing, 2)
    end
    
	if GetQuestStep(Spawn, TheTruthisoutThere) == 1 then
        SetStepComplete(Spawn, TheTruthisoutThere, 1)
    end

		PlayFlavor(NPC, "voiceover/english/imnat_d_vren/fprt_hood05/100_std_de_male_imnat_dvren_callout_c7828a4.mp3", "Bah! That Maliz keeps breaking everything. He's not allowed near what little furniture we have left! What do you want? Can't you see I'm busy!", "", 3649396705, 3766219054, Spawn, 0)
	end
end]]--