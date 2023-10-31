--[[
	Script Name		: SpawnScripts/TempleStreet/ArmsdealerShinska.lua
	Script Purpose	: Armsdealer Shinska
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TrollsAndArms = 5618

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, TrollsAndArms) and not HasCompletedQuest(Spawn, TrollsAndArms) then
        SetStepComplete(Spawn, TrollsAndArms, 1)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/optional5/arms_dealer_shinska/ks_rarmdlrshinska_callout_64.mp3", "You need weapons on your journey. You come see Shinska... you come see her now!", "", 1984880476, 917173949, Spawn, 0)
end