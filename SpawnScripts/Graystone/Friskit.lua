--[[
	Script Name	: SpawnScripts/Graystone/Friskit.lua
	Script Purpose	: Friskit
	Script Author	: Scatman
	Script Date	: 2009.05.30
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 852.34, -23.79, -147.56, 1, 0)
	MovementLoopAddLocation(NPC, 854.18, -24.23, -152.11, 1, 0)
	MovementLoopAddLocation(NPC, 866.69, -22.48, -152.71, 1, math.random(5, 20))
	MovementLoopAddLocation(NPC, 876.82, -24.92, -152.7, 2, 0)
	MovementLoopAddLocation(NPC, 886.12, -24.47, -145.53, 2, 0)
	MovementLoopAddLocation(NPC, 891.32, -22.64, -141, 1, 0)
	MovementLoopAddLocation(NPC, 894.26, -21.47, -120.52, 1, math.random(5, 20))
	MovementLoopAddLocation(NPC, 888.65, -22.26, -98.61, 1, 0)
	MovementLoopAddLocation(NPC, 886.03, -22.15, -98.35, 1, 0)
	MovementLoopAddLocation(NPC, 880.78, -24.5, -100.12, 1, 0)
	MovementLoopAddLocation(NPC, 866.08, -24.99, -105.47, 1, 0)
	MovementLoopAddLocation(NPC, 852.66, -24.95, -105.34, 1, 0)
	MovementLoopAddLocation(NPC, 847.61, -23.04, -107.87, 1, math.random(5, 20))
	MovementLoopAddLocation(NPC, 843.25, -22.49, -114.5, 1, 0)
	MovementLoopAddLocation(NPC, 838.41, -20.73, -114.15, 2, 0)
	MovementLoopAddLocation(NPC, 834.11, -20.97, -120.78, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 839.23, -20.93, -130.53, 1, 0)
	MovementLoopAddLocation(NPC, 839.13, -20.93, -142.28, 1, 0)
	MovementLoopAddLocation(NPC, 841.17, -20.86, -143.26, 1, 0)
	MovementLoopAddLocation(NPC, 844.56, -22.54, -144.9, 1, 0)
	MovementLoopAddLocation(NPC, 843.44, -22.55, -147.44, 1, 0)
--loop 2	
		MovementLoopAddLocation(NPC, 852.34, -23.79, -147.56, 1, 0)
	MovementLoopAddLocation(NPC, 854.18, -24.23, -152.11, 1, 0)
	MovementLoopAddLocation(NPC, 866.69, -22.48, -152.71, 1, 0)
	MovementLoopAddLocation(NPC, 876.82, -24.92, -152.7, 2, 0)
	MovementLoopAddLocation(NPC, 886.12, -24.47, -145.53, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 891.32, -22.64, -141, 1, 0)
	MovementLoopAddLocation(NPC, 894.26, -21.47, -120.52, 1,0)
	MovementLoopAddLocation(NPC, 888.65, -22.26, -98.61, 1, 0)
	MovementLoopAddLocation(NPC, 886.03, -22.15, -98.35, 1, 0)
	MovementLoopAddLocation(NPC, 880.78, -24.5, -100.12, 1, 0)
	MovementLoopAddLocation(NPC, 866.08, -24.99, -105.47, 1,  math.random(5, 20))
	MovementLoopAddLocation(NPC, 852.66, -24.95, -105.34, 1, 0)
	MovementLoopAddLocation(NPC, 847.61, -23.04, -107.87, 1, 0)
	MovementLoopAddLocation(NPC, 843.25, -22.49, -114.5, 1, 0)
	MovementLoopAddLocation(NPC, 838.41, -20.73, -114.15, 2, 0)
	MovementLoopAddLocation(NPC, 834.11, -20.97, -120.78, 2, 0)
	MovementLoopAddLocation(NPC, 839.23, -20.93, -130.53, 1, 0)
	MovementLoopAddLocation(NPC, 839.13, -20.93, -142.28, 1, 0)
	MovementLoopAddLocation(NPC, 841.17, -20.86, -143.26, 1, math.random(5, 20))
	MovementLoopAddLocation(NPC, 844.56, -22.54, -144.9, 1, 0)
	MovementLoopAddLocation(NPC, 843.44, -22.55, -147.44, 1, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end