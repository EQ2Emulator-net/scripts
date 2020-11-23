--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431110.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431110.lua
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
	MoveToLocation(NPC, 174.06, -3.2, 160.45, 2)
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
