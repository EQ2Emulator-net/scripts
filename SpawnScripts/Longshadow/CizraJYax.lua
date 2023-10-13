--[[
	Script Name		: SpawnScripts/LongshadowAlley/CizraJYax.lua
	Script Purpose	: Cizra J`Yax
	Script Author	: torsten
	Script Date		: 2022.07.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local TimeCheck = false                                                       -- used to delay between hail uses
local CalloutTimeCheck = false                                                -- used to delay between callout uses

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
--    waypoints(NPC)
end

function InRange(NPC, Spawn)
	if GetFactionAmount(Spawn,12) <0 then
     	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
    else       
        if MakeRandomInt(1, 100) <= 66 and CalloutTimeCheck == false then
        CalloutTimeCheck = true
        FaceTarget(NPC, Spawn)			            
	    AddTimer(NPC,50000,"ResetCalloutTimer")      
		Talk(NPC, Spawn)
	    end
    end
end

function ResetTimer(NPC)                                                      -- resets hail timer after initial use
   TimeCheck = false 
end

function ResetCalloutTimer(NPC)                                               -- resets callout timer after use
   CalloutTimeCheck = false 
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetFactionAmount(Spawn,12) <0 then
     	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
    else    
	    if TimeCheck == false then                                              -- checks timer
        TimeCheck = true                                                        -- turns on timer to stop player spamming
	    AddTimer(NPC,2500,"ResetTimer")   
	    FaceTarget(NPC, Spawn)
	    Talk(NPC, Spawn)
        end
    end
end

function Talk(NPC, Spawn)
local FP_MageFaction = GetFactionAmount(Spawn, 104)
    if FP_MageFaction >=30000 then
	local choice = math.random(1, 7)
	elseif FP_MageFaction >=10000 then
	local choice = math.random(1, 6)
    else
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_ec2a8705.mp3", "Mindless brutes that feed on the weak make up the ranks of the Freeport Militia.", "", 3674227482, 1789009112, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_6ad11033.mp3", "When it comes to arcane knowledge, no one knows more about it than Arcane Scientists.", "", 458970350, 57476188, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_dfb5c3b3.mp3", "The Seafuries are just a bunch of ruffians that pirate ships and trade on the black market.", "", 1213807064, 3494632294, Spawn, 0)
	elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_4dd0033.mp3", "How is it any different to overprice your goods than to steal a few coin from an unsuspecting customer? Such are the ways of the Coalition of Tradefolke. Be careful if you ever deal with them.", "", 2508521854, 2690377311, Spawn)
	elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_1035b801.mp3", "The Dismal Rage is such a group of pure evil, that how can they be trusted to heal anyone?", "", 3091455674, 3623617426, Spawn)
	elseif choice == 6 then
    	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_10_gf_f5fd7a50.mp3", "To aid the Concordium is to unleash the force for good that burns within us all!", "thank", 3469670242, 3251902799, Spawn)
	elseif choice == 7 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_30_gf_1e49a37f.mp3", "Your couragous actions have assisted the Concordium in its quest for all knowledge!", "cheer", 1170821333, 3893107670, Spawn)
	    end
    end
end
