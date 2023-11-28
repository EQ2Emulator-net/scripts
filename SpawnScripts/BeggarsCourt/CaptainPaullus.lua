--[[
	Script Name		: SpawnScripts/BeggarsCourt/CaptainPaullus.lua
	Script Purpose	: Captain Paullus
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
end
end

function spawn(NPC)
	waypoints(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 70.47, -7.08, 94.74, 2, 0)
	MovementLoopAddLocation(NPC, 73.88, -7.08, 99.74, 2, 0)
	MovementLoopAddLocation(NPC, 73.75, -7.08, 103.23, 2, 8)
	MovementLoopAddLocation(NPC, 72.18, -7.08, 98.09, 2, 0)
	MovementLoopAddLocation(NPC, 67.44, -7.08, 94.13, 2, 0)
	MovementLoopAddLocation(NPC, 61.6, -7.08, 94.84, 2, 0)
	MovementLoopAddLocation(NPC, 57.64, -7.08, 97.9, 2, 0)
	MovementLoopAddLocation(NPC, 55.38, -7.08, 102.21, 2, 0)
	MovementLoopAddLocation(NPC, 53.98, -7.08, 108.71, 2, 8)
	MovementLoopAddLocation(NPC, 55.71, -7.08, 101.37, 2, 0)
	MovementLoopAddLocation(NPC, 58.92, -7.08, 96.99, 2, 0)
	MovementLoopAddLocation(NPC, 61.75, -7.08, 94.79, 2, 0)
	MovementLoopAddLocation(NPC, 63.69, -7.08, 92.53, 2, 0)
	MovementLoopAddLocation(NPC, 62.13, -7.02, 84.47, 2, 22)
	MovementLoopAddLocation(NPC, 62.36, -7.07, 86.6, 2, 0)
	MovementLoopAddLocation(NPC, 62.64, -7.08, 91.06, 2, 0)
end
