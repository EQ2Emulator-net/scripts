--[[
	Script Name	: SpawnScripts/Longshadow/VorsharLFaz.lua
	Script Purpose	: Vorshar L`Faz 
	Script Author	: Dorbin
	Script Date	: 2022.10.13
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local TimeCheck = false                                                       -- used to delay between hail uses
local CalloutTimeCheck = false                                                -- used to delay between callout uses

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
    --waypoints(NPC)
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
local FP_CrafterFaction = GetFactionAmount(Spawn, 101)
    if FP_CrafterFaction >=10000 then
	local choice = math.random(1, 6)
    else
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_a8fbb723.mp3", "The arcane scientists hone their minds through the study of arcane arts, but they will never become as cunning as a skilled trader.", "", 4254147398, 134359674, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_cd3a748b.mp3", "The withering hands of the Dismal Rage priests look more like hands of death than hands that can heal people.", "", 2122145851, 2411357575, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_263a8bb0.mp3", "Although they serve to protect the city, the individuals of the Freeport Militia are only loyal to their own self interest and nothing more.", "", 3104017481, 741752503, Spawn)
	elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_8702506b.mp3", "Those Seafury Buccaneers wouldn't know what a fair deal was if it hit them on the head.", "", 3039159838, 1799277697, Spawn)
	elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_73c8a151.mp3", "There's nothing that the Coalition of Tradesfolke can't make a profit out of.", "", 1077955965, 3866305338, Spawn)
	elseif choice == 6 then
	    if FP_CrafterFaction >=40000 then
    	FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_40_gm_3397b8bb.mp3", "The Coalition is fortunate to have your dedication! The sway you wield with them is worthy of awe!", "cheer", 0, 0, Spawn)
	    elseif FP_CrafterFaction >=30000 then
	    FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_30_gm_deefc882.mp3", "You have achieved quite a reputation for your work with the Coalition.", "", 0, 0, Spawn)
	    elseif FP_CrafterFaction >=20000 then
	    FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_20_gm_376317f5.mp3", "Although you still have quite a distance to go, the reputation you have managed to achieve is nevertheless impressive.", "", 2535649617, 1724444157, Spawn)
	    elseif FP_CrafterFaction >=10000 then
	    FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_10_gm_bda4135a.mp3", "Are you willing to sacrifice yourself for the glory of Freeport, and the profit of the Coalition? Are you willing to endure days locked within a leaky cellar, your fingers bleeding as you work the loom and the forge?", "", 0, 0, Spawn)
	    end
	    end
    end
end
