--[[
    Script Name    : SpawnScripts/TheRuins_Classic/ArmsdealerNylzs.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.04 05:07:56
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/weaponsmith/iksar_weaponsmith_service_evil_1_hail_gf_9d2ef5c4.mp3", "A good weapon at your side is the only real friend you'll ever have!", "agree", 2385093989, 1118392906, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/weaponsmith/iksar_weaponsmith_service_evil_1_hail_gf_febc50f4.mp3", "We have a nice selection of previously owned weapons for those with modest funds.", "snicker", 2847109590, 711726906, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/weaponsmith/iksar_weaponsmith_service_evil_1_hail_gf_de25bbfc.mp3", "The only thing separating you from death in this city are your wits.  I wouldn't call that adequate protection.", "sarcasm", 4065302715, 459656345, Spawn, 0)
    end
end

    
function respawn(NPC)
	spawn(NPC)
end