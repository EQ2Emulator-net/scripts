--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431141.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431141.lua
	Script Author	:	Rylec
	Script Date	:	11-19-2020 05:12:27 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MoveToLocation(NPC, 167.47, -2.42, 189.47, 2)
	MoveToLocation(NPC, 129.19, -3.67, 176.18, 2)
	MoveToLocation(NPC, 124.34, -3.65, 175.93, 2)
	MoveToLocation(NPC, 78.56, -4.36, 157.78, 2)
	MoveToLocation(NPC, 73.31, -4.36, 164.62, 2)
	MoveToLocation(NPC, 72.34, -4.3, 169.86, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
