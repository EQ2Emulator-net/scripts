--[[
    Script Name    : SpawnScripts/TempleSt/MerchantVlepo.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

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