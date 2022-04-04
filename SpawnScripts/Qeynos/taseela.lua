--[[
	Script Name		:	taseela.lua
	Script Purpose	:	Waypoint Path for taseela.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 04:00:49 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")


function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
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
	MovementLoopAddLocation(NPC, 471.7, -20.99, 193.86, 2, 0)
	MovementLoopAddLocation(NPC, 493.1, -12.32, 147.33, 2, 0)
	MovementLoopAddLocation(NPC, 491.13, -11.45, 135.98, 2, 0)
	MovementLoopAddLocation(NPC, 490.3, -11.5, 129.03, 2, 0)
	MovementLoopAddLocation(NPC, 488.84, -11.52, 124.02, 2, 0)
	MovementLoopAddLocation(NPC, 486.64, -11.53, 120.61, 2, 0)
	MovementLoopAddLocation(NPC, 483.51, -11.52, 116.17, 2, 0)
	MovementLoopAddLocation(NPC, 482.23, -11.27, 114.12, 2, 0)
	MovementLoopAddLocation(NPC, 483.44, -11.52, 115.16, 2, 0)
	MovementLoopAddLocation(NPC, 486.92, -11.52, 118.06, 2, 0)
	MovementLoopAddLocation(NPC, 488.82, -11.52, 121.46, 2, 0)
	MovementLoopAddLocation(NPC, 489.71, -11.52, 125.6, 2, 0)
	MovementLoopAddLocation(NPC, 489.21, -11.51, 129.2, 2, 0)
	MovementLoopAddLocation(NPC, 487.71, -11.5, 133.86, 2, 0)
	MovementLoopAddLocation(NPC, 486.19, -11.48, 139.06, 2, 0)
	MovementLoopAddLocation(NPC, 485.61, -11.43, 141.46, 2, 0)
	MovementLoopAddLocation(NPC, 493.67, -11.68, 143.72, 2, 0)
	MovementLoopAddLocation(NPC, 516.38, -10.45, 149.36, 2, 0)
	MovementLoopAddLocation(NPC, 528.67, -10.51, 150.52, 2, 0)
	MovementLoopAddLocation(NPC, 540.31, -10.49, 150.73, 2, 0)
	MovementLoopAddLocation(NPC, 545.51, -10.54, 150.86, 2, 0)
	MovementLoopAddLocation(NPC, 546.39, -9.56, 136.3, 2, 0)
	MovementLoopAddLocation(NPC, 538.73, -9.56, 132.99, 2, 0)
	MovementLoopAddLocation(NPC, 538.95, -9.56, 130.4, 2, 0)
	MovementLoopAddLocation(NPC, 546.87, -8.54, 130.88, 2, 0)
	MovementLoopAddLocation(NPC, 555.09, -9.56, 130.96, 2, 0)
	MovementLoopAddLocation(NPC, 555.19, -9.56, 134.75, 2, 0)
	MovementLoopAddLocation(NPC, 546.18, -9.56, 134.86, 2, 0)
	MovementLoopAddLocation(NPC, 546.45, -10.56, 151.11, 2, 0)
	MovementLoopAddLocation(NPC, 585.38, -10.44, 147.7, 2, 0)
	MovementLoopAddLocation(NPC, 617.72, -12.21, 145.89, 2, 0)
	MovementLoopAddLocation(NPC, 620.85, -12.71, 159.02, 2, 0)
	MovementLoopAddLocation(NPC, 623.31, -15.72, 183.69, 2, 0)
	MovementLoopAddLocation(NPC, 626.2, -16.55, 194.05, 2, 0)
	MovementLoopAddLocation(NPC, 627.65, -16.46, 194.55, 2, 0)
	MovementLoopAddLocation(NPC, 637.49, -16.8, 194.18, 2, 0)
	MovementLoopAddLocation(NPC, 666.3, -18.35, 186.84, 2, 0)
	MovementLoopAddLocation(NPC, 677.83, -19.33, 184.59, 2, 0)
	MovementLoopAddLocation(NPC, 682.89, -19.33, 197.87, 2, 0)
	MovementLoopAddLocation(NPC, 706.09, -19.54, 190.22, 2, 0)
	MovementLoopAddLocation(NPC, 711.17, -19.89, 168.56, 2, 0)
	MovementLoopAddLocation(NPC, 712.74, -20.86, 161.78, 2, 1)
	MovementLoopAddLocation(NPC, 712.74, -20.86, 161.78, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 712.74, -20.86, 161.78, 2, 1)
	MovementLoopAddLocation(NPC, 715.26, -19.93, 167.66, 2, 0)
	MovementLoopAddLocation(NPC, 723.3, -19.61, 192.39, 2, 0)
	MovementLoopAddLocation(NPC, 709.6, -19.52, 197.11, 2, 0)
	MovementLoopAddLocation(NPC, 706.5, -19.54, 192.05, 2, 0)
	MovementLoopAddLocation(NPC, 700.81, -19.53, 194.11, 2, 0)
	MovementLoopAddLocation(NPC, 689.99, -19.52, 197.91, 2, 0)
	MovementLoopAddLocation(NPC, 689.12, -19.52, 205.42, 2, 0)
	MovementLoopAddLocation(NPC, 687.59, -19.52, 212.44, 2, 0)
	MovementLoopAddLocation(NPC, 682.22, -19.55, 217, 2, 0)
	MovementLoopAddLocation(NPC, 676.11, -19.6, 219.38, 2, 0)
	MovementLoopAddLocation(NPC, 610.55, -18.19, 238.03, 2, 0)
	MovementLoopAddLocation(NPC, 568.96, -17.89, 242.95, 2, 0)
	MovementLoopAddLocation(NPC, 536.28, -18.21, 242.2, 2, 0)
	MovementLoopAddLocation(NPC, 483.43, -20.74, 238.36, 2, 0)
	MovementLoopAddLocation(NPC, 461.83, -21.89, 232.14, 2, 0)
	MovementLoopAddLocation(NPC, 462.87, -21.32, 219.81, 2, 0)
	MovementLoopAddLocation(NPC, 472.51, -21.16, 195.49, 2, 0)
	MovementLoopAddLocation(NPC, 462.87, -21.32, 219.81, 2, 0)
	MovementLoopAddLocation(NPC, 461.83, -21.89, 232.14, 2, 0)
	MovementLoopAddLocation(NPC, 483.43, -20.74, 238.36, 2, 0)
	MovementLoopAddLocation(NPC, 536.28, -18.21, 242.2, 2, 0)
	MovementLoopAddLocation(NPC, 568.96, -17.89, 242.95, 2, 0)
	MovementLoopAddLocation(NPC, 610.55, -18.19, 238.03, 2, 0)
	MovementLoopAddLocation(NPC, 676.11, -19.6, 219.38, 2, 0)
	MovementLoopAddLocation(NPC, 682.22, -19.55, 217, 2, 0)
	MovementLoopAddLocation(NPC, 687.59, -19.52, 212.44, 2, 0)
	MovementLoopAddLocation(NPC, 689.12, -19.52, 205.42, 2, 0)
	MovementLoopAddLocation(NPC, 689.99, -19.52, 197.91, 2, 0)
	MovementLoopAddLocation(NPC, 700.81, -19.53, 194.11, 2, 0)
	MovementLoopAddLocation(NPC, 706.5, -19.54, 192.05, 2, 0)
	MovementLoopAddLocation(NPC, 709.6, -19.52, 197.11, 2, 0)
	MovementLoopAddLocation(NPC, 723.3, -19.61, 192.39, 2, 0)
	MovementLoopAddLocation(NPC, 715.26, -19.93, 167.66, 2, 0)
	MovementLoopAddLocation(NPC, 712.74, -20.86, 161.78, 2, 1)
	MovementLoopAddLocation(NPC, 712.74, -20.86, 161.78, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 712.74, -20.86, 161.78, 2, 1)
	MovementLoopAddLocation(NPC, 711.17, -19.89, 168.56, 2, 0)
	MovementLoopAddLocation(NPC, 706.09, -19.54, 190.22, 2, 0)
	MovementLoopAddLocation(NPC, 682.89, -19.33, 197.87, 2, 0)
	MovementLoopAddLocation(NPC, 677.83, -19.33, 184.59, 2, 0)
	MovementLoopAddLocation(NPC, 666.3, -18.35, 186.84, 2, 0)
	MovementLoopAddLocation(NPC, 637.49, -16.8, 194.18, 2, 0)
	MovementLoopAddLocation(NPC, 627.65, -16.46, 194.55, 2, 0)
	MovementLoopAddLocation(NPC, 626.2, -16.55, 194.05, 2, 0)
	MovementLoopAddLocation(NPC, 623.31, -15.72, 183.69, 2, 0)
	MovementLoopAddLocation(NPC, 620.85, -12.71, 159.02, 2, 0)
	MovementLoopAddLocation(NPC, 617.72, -12.21, 145.89, 2, 0)
	MovementLoopAddLocation(NPC, 585.38, -10.44, 147.7, 2, 0)
	MovementLoopAddLocation(NPC, 546.45, -10.56, 151.11, 2, 0)
	MovementLoopAddLocation(NPC, 546.18, -9.56, 134.86, 2, 0)
	MovementLoopAddLocation(NPC, 555.19, -9.56, 134.75, 2, 0)
	MovementLoopAddLocation(NPC, 555.09, -9.56, 130.96, 2, 0)
	MovementLoopAddLocation(NPC, 546.87, -8.54, 130.88, 2, 0)
	MovementLoopAddLocation(NPC, 538.95, -9.56, 130.4, 2, 0)
	MovementLoopAddLocation(NPC, 538.73, -9.56, 132.99, 2, 0)
	MovementLoopAddLocation(NPC, 546.39, -9.56, 136.3, 2, 0)
	MovementLoopAddLocation(NPC, 545.51, -10.54, 150.86, 2, 0)
	MovementLoopAddLocation(NPC, 540.31, -10.49, 150.73, 2, 0)
	MovementLoopAddLocation(NPC, 528.67, -10.51, 150.52, 2, 0)
	MovementLoopAddLocation(NPC, 516.38, -10.45, 149.36, 2, 0)
	MovementLoopAddLocation(NPC, 493.67, -11.68, 143.72, 2, 0)
	MovementLoopAddLocation(NPC, 485.61, -11.43, 141.46, 2, 0)
	MovementLoopAddLocation(NPC, 486.19, -11.48, 139.06, 2, 0)
	MovementLoopAddLocation(NPC, 487.71, -11.5, 133.86, 2, 0)
	MovementLoopAddLocation(NPC, 489.21, -11.51, 129.2, 2, 0)
	MovementLoopAddLocation(NPC, 489.71, -11.52, 125.6, 2, 0)
	MovementLoopAddLocation(NPC, 488.82, -11.52, 121.46, 2, 0)
	MovementLoopAddLocation(NPC, 486.92, -11.52, 118.06, 2, 0)
	MovementLoopAddLocation(NPC, 483.44, -11.52, 115.16, 2, 0)
	MovementLoopAddLocation(NPC, 482.23, -11.27, 114.12, 2, 0)
	MovementLoopAddLocation(NPC, 483.51, -11.52, 116.17, 2, 0)
	MovementLoopAddLocation(NPC, 486.64, -11.53, 120.61, 2, 0)
	MovementLoopAddLocation(NPC, 488.84, -11.52, 124.02, 2, 0)
	MovementLoopAddLocation(NPC, 490.3, -11.5, 129.03, 2, 0)
	MovementLoopAddLocation(NPC, 491.13, -11.45, 135.98, 2, 0)
	MovementLoopAddLocation(NPC, 493.1, -12.32, 147.33, 2, 0)
	MovementLoopAddLocation(NPC, 471.7, -20.99, 193.86, 2, 0)
end


