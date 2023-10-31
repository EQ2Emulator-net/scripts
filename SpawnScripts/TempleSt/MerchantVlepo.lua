--[[
    Script Name    : SpawnScripts/TempleSt/MerchantVlepo.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:43
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local VlepoPlan = 5917

function spawn(NPC)
    ProvidesQuest(NPC, VlepoPlan)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
    SetTempVariable(NPC,"CalloutTimer","false")
    AddTimer(NPC,2000,"Qwergo")
    AddTimer(NPC,MakeRandomInt(2500,4000),"Emotes")
end

function LeaveRange(NPC,Spawn)
    Twergo(NPC,Spawn)
if GetTempVariable(NPC,"CalloutTimer")=="true" then    
   SetTempVariable(NPC,"CalloutTimer","false")
end
end

function InRange(NPC,Spawn)
end

function ResetCallout(NPC,Spawn)
   SetTempVariable(NPC,"CalloutTimer","false")
end

function Emotes(NPC,Spawn)
    local Choice = MakeRandomInt(1,5)

if GetTempVariable(NPC,"CalloutTimer")=="false" then    
if Choice == 1 then
    if not IsPlayer(GetTarget(NPC)) then
        PlayFlavor(NPC, "","","tantrum",0,0)
    end
        AddTimer(NPC,2200,"Emotes")
        
elseif Choice == 2 then   
    if not IsPlayer(GetTarget(NPC)) then
       PlayFlavor(NPC, "","","shakefist",0,0)
    end
        AddTimer(NPC,5200,"Emotes")
        
elseif Choice == 3 then   
    if not IsPlayer(GetTarget(NPC)) then
        PlayFlavor(NPC, "","","point",0,0)
    end
        AddTimer(NPC,5000,"Emotes")
        
elseif Choice == 4 then   
    if not IsPlayer(GetTarget(NPC)) then
        PlayFlavor(NPC, "","","taunt",0,0)
    end
        AddTimer(NPC,7300,"Emotes")

elseif Choice == 5 then   
    if not IsPlayer(GetTarget(NPC)) then
        PlayFlavor(NPC, "","","glare",0,0)
    end
        AddTimer(NPC,6300,"Emotes")
    end
    
else --If Recently Called Out to Player
        AddTimer(NPC,7000,"Emotes")
    end    
end

function Qwergo(NPC,Spawn)
    local zone = GetZone(NPC)
    local QwergoGnome = GetSpawnByLocationID(zone,420562)
    SetTarget(NPC,QwergoGnome)
    FaceTarget(NPC, QwergoGnome)
end    

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else
    RandomGreeting(NPC, Spawn)
end
end


function Dialog1(NPC,Spawn)
    SetTarget(NPC,Spawn)
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

--Why do we even care?  Those gnomes will blow themselves up one of these days, anyway.
--Oh, yes we do. My son and I were here first. We were selling all types of items, then those gnomes moved in. I'll put a stop to it soon! Maybe for some money you help me?
function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "You like good wares? You come to my stall!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/service/alchemist/ratonga_alchemist_service_evil_2_hail_gm_edc44700.mp3", "I need to get some eye of griffin, a bear's paw, the heart of an innocent man--that'll be tough in this city!", "confused", 3775164756, 640959658, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/service/alchemist/ratonga_alchemist_service_evil_2_hail_gm_2a2e86d7.mp3", "Poison testers, it's been my biggest seller for the past several months.  Of course, poison was a close second. ", "ponder", 968328188, 2082601565, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/service/alchemist/ratonga_alchemist_service_evil_2_hail_gm_3e1da8c1.mp3", "Be careful what you touch in here.  You're liable to kill us all!", "tapfoot", 299699712, 1352254492, Spawn, 0)
    end
end