--[[
    Script Name    : SpawnScripts/TempleSt/arat.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 11:10:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints1(NPC)
    DespawnCheck(NPC)
end


function respawn(NPC)
	spawn(NPC)
end

function DespawnCheck(NPC)
    if GetSpawnLocationID(NPC) ==420362 then
        AddTimer(NPC,184000,"Despawning")
    elseif GetSpawnLocationID(NPC) ==420349 then
        AddTimer(NPC,123000,"Despawning")
   end
end

function Despawning(NPC)
    Despawn(NPC)
end

function waypoints1(NPC)
    if GetSpawnLocationID(NPC) ==420362 then
    MoveToLocation(NPC,28.6, 3, 61.12, 1)
    elseif GetSpawnLocationID(NPC) ==420349 then
    MoveToLocation(NPC,33.31, 3.00, 71.43, 4)
	elseif GetSpawnLocationID(NPC) ==420418 then --roamer
	MovementLoopAddLocation(NPC, 50.22, 3, 60.54, 2, 0)
	MovementLoopAddLocation(NPC, 46.6, 3, 54.03, 2, 0)
	MovementLoopAddLocation(NPC, 50.28, 3, 42.38, 2, 18)
	MovementLoopAddLocation(NPC, 48.27, 3, 48.06, 4, 0)
	MovementLoopAddLocation(NPC, 47.57, 3, 51.15, 4, 0)
	MovementLoopAddLocation(NPC, 50.07, 3, 59.61, 4, 0)
	MovementLoopAddLocation(NPC, 53.1, 3, 63.73, 4, 0)
	MovementLoopAddLocation(NPC, 53.17, 3, 68.48, 4, 0)
	MovementLoopAddLocation(NPC, 47.78, 3, 72.85, 4, 6)
	MovementLoopAddLocation(NPC, 42.18, 3.00, 75.57, 2, 0)
	MovementLoopAddLocation(NPC, 48.35, 3, 86.43, 2, 18)
	MovementLoopAddLocation(NPC, 43.67, 3, 80.19, 2, 0)
	MovementLoopAddLocation(NPC, 45.03, 3, 71.96, 4, 0)
	MovementLoopAddLocation(NPC, 53.2, 3, 66.09, 4, 0)
	MovementLoopAddLocation(NPC, 58.40, 3.00, 61.48, 4, 0)
	MovementLoopAddLocation(NPC, 65.21, 3, 60, 2, 0)
	MovementLoopAddLocation(NPC, 65.21, 3, 60, 2, 18)
	MovementLoopAddLocation(NPC, 59.17, 3, 60.8, 2, 0)
	MovementLoopAddLocation(NPC, 54.7, 3, 63.07, 2, 0)
	MovementLoopAddLocation(NPC, 51.18, 3, 62.03, 4, 0)
	MovementLoopAddLocation(NPC, 48.25, 3, 55.38, 4, 0)
	MovementLoopAddLocation(NPC, 42.85, 3, 49.97, 4, 0)
	MovementLoopAddLocation(NPC, 37.28, 3, 50.96, 4, 0)
	MovementLoopAddLocation(NPC, 29.87, 2.99, 48.11, 2, 0)
	MovementLoopAddLocation(NPC, 23.79, 2.92, 39.37, 2, 0)
	MovementLoopAddLocation(NPC, 20.73, 2.92, 39.49, 2, 18)
	MovementLoopAddLocation(NPC, 18.33, 2.92, 36.27, 4, 0)
	MovementLoopAddLocation(NPC, 4.64, 2.92, 28.45, 4, 0)
	MovementLoopAddLocation(NPC, 4.79, 2.92, 27.57, 2, 18)
	MovementLoopAddLocation(NPC, 7.39, 2.92, 30.12, 2, 0)
	MovementLoopAddLocation(NPC, 19.62, 2.92, 34.94, 2, 0)
	MovementLoopAddLocation(NPC, 34.67, 2.92, 28.9, 2, 18)
	MovementLoopAddLocation(NPC, 30.63, 2.92, 31.15, 4, 0)
	MovementLoopAddLocation(NPC, 29.61, 2.92, 35.36, 4, 0)
	MovementLoopAddLocation(NPC, 33.03, 2.95, 45.05, 4, 0)
	MovementLoopAddLocation(NPC, 38.31, 3, 49.99, 4, 0)
	MovementLoopAddLocation(NPC, 42.27, 3.00, 49.37, 4, 0)
	MovementLoopAddLocation(NPC, 50.8, 3, 58.39, 2, 18)
	end
end

function waypoints2(NPC)
    if GetSpawnLocationID(NPC) ==420362 then
	MovementLoopAddLocation(NPC, 31.95, 3, 55.2, 6, 0)
	MovementLoopAddLocation(NPC, 39.86, 3, 50.85, 6, 0)
	MovementLoopAddLocation(NPC, 44.76, 3, 52.29, 6, 0)
	MovementLoopAddLocation(NPC, 50.85, 3, 60.83, 6, 0)
	MovementLoopAddLocation(NPC, 54.89, 3, 64.29, 6, 0)
	MovementLoopAddLocation(NPC, 63.8, 2.77, 67.88, 6, 0)
	MovementLoopAddLocation(NPC, 70.13, 1.63, 70.44, 6, 0)
	MovementLoopAddLocation(NPC, 72.76, 0.37, 74.76, 4, 0)
	MovementLoopAddLocation(NPC, 75.94, -2.87, 84.52, 4, 0)
	MovementLoopAddLocation(NPC, 81.62, -4.57, 92.12, 4, 0)
	MovementLoopAddLocation(NPC, 81.83, -4.57, 101.89, 4, 0)
	MovementLoopAddLocation(NPC, 76.4, -4.57, 109.38, 4, 0)
	MovementLoopAddLocation(NPC, 74.74, -4.57, 119.51, 4, 0)
	MovementLoopAddLocation(NPC, 79.26, -4.57, 129.48, 4, 0)
	MovementLoopAddLocation(NPC, 81.52, -4.57, 129.65, 4, 0)
	MovementLoopAddLocation(NPC, 80.34, -4.57, 127.54, 4, 30)
	MovementLoopAddLocation(NPC, 76.3, -4.57, 119.97, 1, 0)
	MovementLoopAddLocation(NPC, 75.12, -4.57, 112.32, 1, 0)
	MovementLoopAddLocation(NPC, 75.38, -4.57, 108.35, 1, 10)
	MovementLoopAddLocation(NPC, 79.18, -4.57, 103.91, 1, 0)
	MovementLoopAddLocation(NPC, 80.15, -4.57, 100.38, 1, 0)
	MovementLoopAddLocation(NPC, 77.45, -4.56, 94.18, 1, 0)
	MovementLoopAddLocation(NPC, 73.76, -3.52, 87.56, 1, 0)
	MovementLoopAddLocation(NPC, 73.33, -3.11, 86.74, 1, 5)
	MovementLoopAddLocation(NPC, 71.66, -0.27, 77.96, 1, 0)
	MovementLoopAddLocation(NPC, 71.52, 0.81, 73.98, 1, 0)
	MovementLoopAddLocation(NPC, 70.47, 1.33, 72.3, 1, 0)
	MovementLoopAddLocation(NPC, 64.81, 2.71, 69.86, 1, 0)
	MovementLoopAddLocation(NPC, 63.46, 3, 61.49, 1, 10)
	MovementLoopAddLocation(NPC, 59.5, 3, 60.81, 1, 0)
	MovementLoopAddLocation(NPC, 53, 3, 66.82, 1, 0)
	MovementLoopAddLocation(NPC, 47.39, 3, 72.82, 1, 0)
	MovementLoopAddLocation(NPC, 38.52, 3, 76.35, 1, 0)
	MovementLoopAddLocation(NPC, 34.5, 3, 68.86, 1, 0)
	MovementLoopAddLocation(NPC, 36.18, 3, 64.02, 1, 0)
	MovementLoopAddLocation(NPC, 36.18, 3, 64.02, 1, 4)
    elseif GetSpawnLocationID(NPC) ==420349 then
	MovementLoopAddLocation(NPC, 30.93, 3, 69.23, 6, 0)
	MovementLoopAddLocation(NPC, 28.76, 3, 61.79, 6, 0)
	MovementLoopAddLocation(NPC, 24.7, 3, 61.78, 6, 0)
	MovementLoopAddLocation(NPC, 21.63, 2.93, 66.95, 6, 0)
	MovementLoopAddLocation(NPC, 17.96, 3.01, 72.13, 6, 0)
	MovementLoopAddLocation(NPC, 5.76, 3, 67.83, 6, 0)
	MovementLoopAddLocation(NPC, -2.09, 3, 61.88, 6, 0)
	MovementLoopAddLocation(NPC, -1.3, 3, 57.67, 6, 0)
	MovementLoopAddLocation(NPC, -5.37, 3, 56.58, 6, 0)
	MovementLoopAddLocation(NPC, -6.35, 3, 58.17, 6, 0)
	MovementLoopAddLocation(NPC, -6.35, 3, 58.17, 6, 10)	
	MovementLoopAddLocation(NPC, -0.77, 3.00, 57.48, 1, 0)	
	MovementLoopAddLocation(NPC, 4.15, 3.00, 52.91, 6, 999)	
end
end

