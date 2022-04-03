--[[
	Script Name		:	klenthall.lua
	Script Purpose	:	Waypoint Path for klenthall.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 02:44:46 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 618.33, -12.24, 145.93, 2, 0)
	MovementLoopAddLocation(NPC, 621.58, -16.61, 198.95, 2, 0)
	MovementLoopAddLocation(NPC, 605.95, -15.67, 202.3, 2, 0)
	MovementLoopAddLocation(NPC, 559.95, -15.43, 208.07, 2, 0)
	MovementLoopAddLocation(NPC, 536.41, -15.43, 207.61, 2, 0)
	MovementLoopAddLocation(NPC, 498.73, -16.33, 201.77, 2, 0)
	MovementLoopAddLocation(NPC, 476.23, -20.97, 194.43, 2, 0)
	MovementLoopAddLocation(NPC, 466.76, -20.82, 190.3, 2, 0)
	MovementLoopAddLocation(NPC, 446.72, -20.46, 178.56, 2, 0)
	MovementLoopAddLocation(NPC, 440.55, -20.49, 178.44, 2, 0)
	MovementLoopAddLocation(NPC, 436.41, -20.57, 181.77, 2, 0)
	MovementLoopAddLocation(NPC, 434.12, -20.66, 185.54, 2, 0)
	MovementLoopAddLocation(NPC, 434.76, -20.67, 190.54, 2, 0)
	MovementLoopAddLocation(NPC, 437.1, -20.55, 197.3, 2, 0)
	MovementLoopAddLocation(NPC, 454.62, -22.02, 233.32, 2, 0)
	MovementLoopAddLocation(NPC, 503.53, -19.63, 242.41, 2, 0)
	MovementLoopAddLocation(NPC, 539.52, -18.05, 242.73, 2, 0)
	MovementLoopAddLocation(NPC, 568.54, -17.88, 242.97, 2, 0)
	MovementLoopAddLocation(NPC, 592.34, -18.04, 239.25, 2, 0)
	MovementLoopAddLocation(NPC, 617.29, -18.47, 234.71, 2, 0)
	MovementLoopAddLocation(NPC, 651.73, -19.14, 227.43, 2, 0)
	MovementLoopAddLocation(NPC, 675.76, -19.71, 221.36, 2, 0)
	MovementLoopAddLocation(NPC, 683.65, -19.61, 218.11, 2, 0)
	MovementLoopAddLocation(NPC, 693.47, -19.52, 196.31, 2, 0)
	MovementLoopAddLocation(NPC, 705.29, -19.53, 192.43, 2, 0)
	MovementLoopAddLocation(NPC, 706.06, -19.53, 193.13, 2, 0)
	MovementLoopAddLocation(NPC, 708.64, -19.53, 195.1, 2, 0)
	MovementLoopAddLocation(NPC, 711.75, -19.52, 196.57, 2, 0)
	MovementLoopAddLocation(NPC, 715.54, -19.52, 197.29, 2, 0)
	MovementLoopAddLocation(NPC, 719.67, -19.52, 196.55, 2, 0)
	MovementLoopAddLocation(NPC, 723.59, -19.6, 194.13, 2, 0)
	MovementLoopAddLocation(NPC, 712.23, -19.41, 178.41, 2, 0)
	MovementLoopAddLocation(NPC, 679.41, -20.65, 159.21, 2, 0)
	MovementLoopAddLocation(NPC, 672.93, -21.19, 142.14, 2, 0)
	MovementLoopAddLocation(NPC, 668.19, -21.31, 130.46, 2, 0)
	MovementLoopAddLocation(NPC, 662.02, -20.96, 103.28, 2, 0)
	MovementLoopAddLocation(NPC, 668.19, -21.31, 130.46, 2, 0)
	MovementLoopAddLocation(NPC, 672.93, -21.19, 142.14, 2, 0)
	MovementLoopAddLocation(NPC, 679.41, -20.65, 159.21, 2, 0)
	MovementLoopAddLocation(NPC, 712.23, -19.41, 178.41, 2, 0)
	MovementLoopAddLocation(NPC, 723.59, -19.6, 194.13, 2, 0)
	MovementLoopAddLocation(NPC, 719.67, -19.52, 196.55, 2, 0)
	MovementLoopAddLocation(NPC, 715.54, -19.52, 197.29, 2, 0)
	MovementLoopAddLocation(NPC, 711.75, -19.52, 196.57, 2, 0)
	MovementLoopAddLocation(NPC, 708.64, -19.53, 195.1, 2, 0)
	MovementLoopAddLocation(NPC, 706.06, -19.53, 193.13, 2, 0)
	MovementLoopAddLocation(NPC, 705.29, -19.53, 192.43, 2, 0)
	MovementLoopAddLocation(NPC, 693.47, -19.52, 196.31, 2, 0)
	MovementLoopAddLocation(NPC, 683.65, -19.61, 218.11, 2, 0)
	MovementLoopAddLocation(NPC, 675.76, -19.71, 221.36, 2, 0)
	MovementLoopAddLocation(NPC, 651.73, -19.14, 227.43, 2, 0)
	MovementLoopAddLocation(NPC, 617.29, -18.47, 234.71, 2, 0)
	MovementLoopAddLocation(NPC, 592.34, -18.04, 239.25, 2, 0)
	MovementLoopAddLocation(NPC, 568.54, -17.88, 242.97, 2, 0)
	MovementLoopAddLocation(NPC, 539.52, -18.05, 242.73, 2, 0)
	MovementLoopAddLocation(NPC, 503.53, -19.63, 242.41, 2, 0)
	MovementLoopAddLocation(NPC, 454.62, -22.02, 233.32, 2, 0)
	MovementLoopAddLocation(NPC, 437.1, -20.55, 197.3, 2, 0)
	MovementLoopAddLocation(NPC, 434.76, -20.67, 190.54, 2, 0)
	MovementLoopAddLocation(NPC, 434.12, -20.66, 185.54, 2, 0)
	MovementLoopAddLocation(NPC, 436.41, -20.57, 181.77, 2, 0)
	MovementLoopAddLocation(NPC, 440.55, -20.49, 178.44, 2, 0)
	MovementLoopAddLocation(NPC, 446.72, -20.46, 178.56, 2, 0)
	MovementLoopAddLocation(NPC, 466.76, -20.82, 190.3, 2, 0)
	MovementLoopAddLocation(NPC, 476.23, -20.97, 194.43, 2, 0)
	MovementLoopAddLocation(NPC, 498.73, -16.33, 201.77, 2, 0)
	MovementLoopAddLocation(NPC, 536.41, -15.43, 207.61, 2, 0)
	MovementLoopAddLocation(NPC, 559.95, -15.43, 208.07, 2, 0)
	MovementLoopAddLocation(NPC, 605.95, -15.67, 202.3, 2, 0)
	MovementLoopAddLocation(NPC, 621.58, -16.61, 198.95, 2, 0)
	MovementLoopAddLocation(NPC, 618.33, -12.24, 145.93, 2, 0)
end


