--[[
	Script Name	: SpawnScripts/BeggarsCourt/MarcusLevidius.lua
	Script Purpose	: Marcus Levidius 
	Script Author	: John Adams
	Script Date	: 2009.04.05 (18.7.2022 by torsten, waypoints)(New setup 27.11.2023 by Dorbin)
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericEcologyCallout(NPC, Spawn, faction)
end
    
function respawn(NPC)
		spawn(NPC)
	end
	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -27.1, -5, 11.44, 2, 1)
	MovementLoopAddLocation(NPC, -27.1, -5, 11.44, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -26.97, -5, 12.35, 2, 0)
	MovementLoopAddLocation(NPC, -29.35, -5, 13.85, 2, 0)
	MovementLoopAddLocation(NPC, -27.49, -5, 15.97, 2, 0)
	MovementLoopAddLocation(NPC, -22.58, -5, 16.37, 2, 0)
	MovementLoopAddLocation(NPC, -15.73, -5, 16.57, 2, 0)
	MovementLoopAddLocation(NPC, -11.15, -5.5, 20.23, 2, 0)
	MovementLoopAddLocation(NPC, -1.17, -5.5, 22.13, 2, 0)
	MovementLoopAddLocation(NPC, 2.35, -5.5, 22.98, 2, 0)
	MovementLoopAddLocation(NPC, 5.33, -5.5, 27.74, 2, 0)
	MovementLoopAddLocation(NPC, 8.08, -5.5, 30.1, 2, 0)
	MovementLoopAddLocation(NPC, 14.44, -5.5, 32.63, 2, 0)
	MovementLoopAddLocation(NPC, 20.18, -5.75, 33.33, 2, 0)
	MovementLoopAddLocation(NPC, 22.17, -6, 37.28, 2, 1)
	MovementLoopAddLocation(NPC, 22.17, -6, 37.28, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 22.43, -6, 37.65, 2, 0)
	MovementLoopAddLocation(NPC, 22.68, -6, 39.18, 2, 0)
	MovementLoopAddLocation(NPC, 21.35, -6, 39.81, 2, 1)
	MovementLoopAddLocation(NPC, 21.35, -6, 39.81, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 21.35, -6, 39.81, 2, 0)
	MovementLoopAddLocation(NPC, 21.76, -6, 42.26, 2, 0)
	MovementLoopAddLocation(NPC, 17.62, -6.89, 50.15, 2, 0)
	MovementLoopAddLocation(NPC, 16.1, -7, 51.15, 2, 0)
	MovementLoopAddLocation(NPC, 3.3, -7, 52.41, 2, 0)
	MovementLoopAddLocation(NPC, -4.53, -7, 48.12, 2, 0)
	MovementLoopAddLocation(NPC, -10.06, -7, 52.32, 2, 0)
	MovementLoopAddLocation(NPC, -14.75, -7, 54.81, 2, 0)
	MovementLoopAddLocation(NPC, -14.97, -7, 50.53, 2, 1)
	MovementLoopAddLocation(NPC, -14.97, -7, 50.53, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -14.97, -7, 50.53, 2, 0)
	MovementLoopAddLocation(NPC, -14.67, -7, 52.3, 2, 0)
	MovementLoopAddLocation(NPC, -12.68, -7, 53.78, 2, 0)
	MovementLoopAddLocation(NPC, -11.17, -7, 51.86, 2, 0)
	MovementLoopAddLocation(NPC, -10.36, -7, 44.81, 2, 0)
	MovementLoopAddLocation(NPC, -13.84, -7, 39.83, 2, 0)
	MovementLoopAddLocation(NPC, -19.36, -7, 36.38, 2, 0)
	MovementLoopAddLocation(NPC, -28.54, -5.75, 25.17, 2, 0)
	MovementLoopAddLocation(NPC, -34.48, -5.5, 18.8, 2, 0)
	MovementLoopAddLocation(NPC, -34.48, -5.5, 18.8, 2, 1)
	MovementLoopAddLocation(NPC, -34.48, -5.5, 18.8, 2, 20,"EcologyEmotes")
	
	MovementLoopAddLocation(NPC, -28.54, -5.75, 25.17, 2, 0)
	MovementLoopAddLocation(NPC, -19.36, -7, 36.38, 2, 0)
	MovementLoopAddLocation(NPC, -13.84, -7, 39.83, 2, 0)
	MovementLoopAddLocation(NPC, -10.36, -7, 44.81, 2, 0)
	MovementLoopAddLocation(NPC, -11.17, -7, 51.86, 2, 0)
	MovementLoopAddLocation(NPC, -12.68, -7, 53.78, 2, 0)
	MovementLoopAddLocation(NPC, -14.67, -7, 52.3, 2, 0)
	MovementLoopAddLocation(NPC, -14.97, -7, 50.53, 2, 0)
	MovementLoopAddLocation(NPC, -14.97, -7, 50.53, 2, 1)
	MovementLoopAddLocation(NPC, -14.97, -7, 50.53, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -14.75, -7, 54.81, 2, 0)
	MovementLoopAddLocation(NPC, -10.06, -7, 52.32, 2, 0)
	MovementLoopAddLocation(NPC, -4.53, -7, 48.12, 2, 0)
	MovementLoopAddLocation(NPC, 3.3, -7, 52.41, 2, 0)
	MovementLoopAddLocation(NPC, 16.1, -7, 51.15, 2, 0)
	MovementLoopAddLocation(NPC, 17.62, -6.89, 50.15, 2, 0)
	MovementLoopAddLocation(NPC, 21.76, -6, 42.26, 2, 0)
	MovementLoopAddLocation(NPC, 21.35, -6, 39.81, 2, 0)
	MovementLoopAddLocation(NPC, 21.35, -6, 39.81, 2, 1)
	MovementLoopAddLocation(NPC, 21.35, -6, 39.81, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 22.68, -6, 39.18, 2, 0)
	MovementLoopAddLocation(NPC, 22.43, -6, 37.65, 2, 0)
	MovementLoopAddLocation(NPC, 22.17, -6, 37.28, 2, 1)
	MovementLoopAddLocation(NPC, 22.17, -6, 37.28, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 20.18, -5.75, 33.33, 2, 0)
	MovementLoopAddLocation(NPC, 14.44, -5.5, 32.63, 2, 0)
	MovementLoopAddLocation(NPC, 8.08, -5.5, 30.1, 2, 0)
	MovementLoopAddLocation(NPC, 5.33, -5.5, 27.74, 2, 0)
	MovementLoopAddLocation(NPC, 2.35, -5.5, 22.98, 2, 0)
	MovementLoopAddLocation(NPC, -1.17, -5.5, 22.13, 2, 0)
	MovementLoopAddLocation(NPC, -11.15, -5.5, 20.23, 2, 0)
	MovementLoopAddLocation(NPC, -15.73, -5, 16.57, 2, 0)
	MovementLoopAddLocation(NPC, -22.58, -5, 16.37, 2, 0)
	MovementLoopAddLocation(NPC, -27.49, -5, 15.97, 2, 0)
	MovementLoopAddLocation(NPC, -29.35, -5, 13.85, 2, 0)
	MovementLoopAddLocation(NPC, -26.97, -5, 12.35, 2, 0)
end


