--[[
    Script Name    : SpawnScripts/IsleRefuge1/aredgill.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.19 10:09:13
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/CombatModule"


function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
if GetSpawnLocationID(NPC)== 133775919 then
	MovementLoopAddLocation(NPC, 59.63, -11.94, 24.52, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.86, -11.93, 24.56, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.92, -11.85, 21.65, 5, 0)
	MovementLoopAddLocation(NPC, 65.11, -11.97, 18.15, 5, 0)
	MovementLoopAddLocation(NPC, 65.19, -12.91, 9.83, 5, 0)
	MovementLoopAddLocation(NPC, 69.84, -13.55, 4.25, 5, 0)
	MovementLoopAddLocation(NPC, 71.21, -12.31, 3.75, 5, 0)
	MovementLoopAddLocation(NPC, 73.55, -11.54, 4.25, 5, 0)
	MovementLoopAddLocation(NPC, 84.72, -12.78, 6.21, 5, 0)
	MovementLoopAddLocation(NPC, 90.93, -12.84, 8.04, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.57, -12.77, 6.92, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.98, -13.46, 5.87, 5, 0)
	MovementLoopAddLocation(NPC, 79.31, -14.24, 3.72, 5, 0)
	MovementLoopAddLocation(NPC, 76.62, -15.03, -0.9, 5, 0)
	MovementLoopAddLocation(NPC, 75.17, -14.81, -6.65, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.13, -14.11, 5.6, 5, 0)
	MovementLoopAddLocation(NPC, 76.29, -14.01, 9.13, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.48, -13.1, 12.98, 5, 0)
	MovementLoopAddLocation(NPC, 70.11, -12.51, 16.07, 5, 0)
	MovementLoopAddLocation(NPC, 65.36, -12.31, 19.44, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775920 then
	MovementLoopAddLocation(NPC, 44.05, -12, 58.23, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.72, -11.43, 59.8, 5, 0)
	MovementLoopAddLocation(NPC, 69.9, -11.63, 64.58, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.07, -12.1, 58.01, 5, 0)
	MovementLoopAddLocation(NPC, 84.58, -12.39, 49.31, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.86, -12.27, 48.23, 5, 0)
	MovementLoopAddLocation(NPC, 62.52, -12.83, 49.18, 5, 0)
	MovementLoopAddLocation(NPC, 58.32, -12.86, 49.48, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.67, -11.38, 42.68, 5, 0)
	MovementLoopAddLocation(NPC, 40.62, -11.41, 35.22, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.01, -11.27, 41.34, 5, 0)
	MovementLoopAddLocation(NPC, 63.63, -11.34, 46.93, 5, 0)
	MovementLoopAddLocation(NPC, 69.06, -11.92, 48.24, 5, 0)
	MovementLoopAddLocation(NPC, 74.35, -12.01, 51.67, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.86, -11.49, 44.83, 5, 0)
	MovementLoopAddLocation(NPC, 71, -10.16, 21.82, 5, 0)
	MovementLoopAddLocation(NPC, 69.55, -11.65, 17.39, 5, 0)
	MovementLoopAddLocation(NPC, 69.46, -12.07, 15.72, 5, 0)
	MovementLoopAddLocation(NPC, 71.05, -12.36, 13.38, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.24, -12.8, 17.02, 5, 0)
	MovementLoopAddLocation(NPC, 84.46, -12.97, 20.57, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.84, -12.45, 30.37, 5, 0)
	MovementLoopAddLocation(NPC, 85.35, -12.34, 37.14, 5, 0)
	MovementLoopAddLocation(NPC, 83.78, -12.25, 41.09, 5, 0)
	MovementLoopAddLocation(NPC, 74.88, -11.82, 47.76, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775921 then
	MovementLoopAddLocation(NPC, -1.63, -13.04, 46.23, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.7, -13.06, 42.82, 5, 0)
	MovementLoopAddLocation(NPC, -13.23, -13.68, 40.57, 5, 0)
	MovementLoopAddLocation(NPC, -17.07, -13.87, 40.27, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.51, -13.5, 40.21, 5, 0)
	MovementLoopAddLocation(NPC, -0.68, -13.38, 41.03, 5, 0)
	MovementLoopAddLocation(NPC, 3.63, -13.68, 42.77, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.72, -13.01, 41.57, 5, 0)
	MovementLoopAddLocation(NPC, 10.69, -12.19, 40.86, 5, 0)
	MovementLoopAddLocation(NPC, 12.67, -12.1, 41.34, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.95, -12.4, 35.5, 5, 0)
	MovementLoopAddLocation(NPC, -1.1, -12.32, 29.58, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.23, -12.12, 52.83, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.03, -12.67, 47.86, 5, 0)
	MovementLoopAddLocation(NPC, 8.09, -14.04, 36.8, 5, 0)
	MovementLoopAddLocation(NPC, 10.97, -14.03, 32.65, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.92, -12.13, 41.95, 5, 0)
	MovementLoopAddLocation(NPC, 12.57, -11.99, 44.45, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.25, -12.21, 53.01, 5, 0)
	MovementLoopAddLocation(NPC, -2.19, -12.04, 60.68, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.05, -11.99, 52.54, 5, 0)
	MovementLoopAddLocation(NPC, 13.43, -11.98, 47.88, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7, -12.48, 47.65, 5, 0)
	MovementLoopAddLocation(NPC, 3.11, -12.61, 47.07, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.69, -12.97, 36.41, 5, 0)
	MovementLoopAddLocation(NPC, -3.68, -12.85, 30.71, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775922 then
	MovementLoopAddLocation(NPC, 79.55, -12.92, 43.23, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.35, -12.99, 41.85, 5, 0)
	MovementLoopAddLocation(NPC, 67.8, -13.82, 41.77, 5, 0)
	MovementLoopAddLocation(NPC, 64.33, -13.81, 42.59, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.32, -12.58, 35.73, 5, 0)
	MovementLoopAddLocation(NPC, 81.84, -12.29, 30.81, 5, 0)
	MovementLoopAddLocation(NPC, 84.56, -12.15, 28.43, 5, 0)
	MovementLoopAddLocation(NPC, 88.36, -12.66, 23.92, 5, 0)
	MovementLoopAddLocation(NPC, 92.54, -12.89, 20.54, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.26, -12.9, 18.62, 5, 0)
	MovementLoopAddLocation(NPC, 78.52, -12.99, 17.66, 5, 0)
	MovementLoopAddLocation(NPC, 74.89, -13.06, 16.13, 5, 0)
	MovementLoopAddLocation(NPC, 70.18, -12.54, 15.16, 5, 0)
	MovementLoopAddLocation(NPC, 64.97, -12.75, 13.12, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.94, -12.04, 21.39, 5, 0)
	MovementLoopAddLocation(NPC, 58.16, -11.31, 25.13, 5, 0)
	MovementLoopAddLocation(NPC, 50.78, -11.42, 34.42, 5, 0)
	MovementLoopAddLocation(NPC, 48.42, -11.45, 38.77, 5, 0)
	MovementLoopAddLocation(NPC, 45.81, -11.91, 41.93, 5, 0)
	MovementLoopAddLocation(NPC, 43.27, -12.05, 44, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.06, -11.57, 41.76, 5, 0)
	MovementLoopAddLocation(NPC, 55.62, -11.44, 26.65, 5, 0)
	MovementLoopAddLocation(NPC, 61.2, -12.25, 16.31, 5, 0)
	MovementLoopAddLocation(NPC, 63.22, -12.58, 11.45, 5, 0)
	MovementLoopAddLocation(NPC, 66.69, -14.51, 4.65, 5, 0)
	MovementLoopAddLocation(NPC, 69.97, -14.41, 1.41, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.25, -13.34, 4.32, 5, 0)
	MovementLoopAddLocation(NPC, 48.91, -13.14, 10.49, 5, 0)
	MovementLoopAddLocation(NPC, 37.3, -12.19, 15.86, 5, 0)
	MovementLoopAddLocation(NPC, 32.3, -12.37, 18.85, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.72, -12.69, 27.99, 5, 0)
	MovementLoopAddLocation(NPC, 22.92, -13.03, 44.34, 5, 0)
	MovementLoopAddLocation(NPC, 16.79, -13.04, 53.05, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.85, -12.7, 55.82, 5, 0)
	MovementLoopAddLocation(NPC, 13.07, -12.45, 59.08, 5, 0)
	MovementLoopAddLocation(NPC, 6.6, -11.9, 65.02, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.81, -10.45, 79.03, 5, 0)
	MovementLoopAddLocation(NPC, 32.31, -10.44, 85.06, 5, 0)
	MovementLoopAddLocation(NPC, 38.93, -10.67, 89.72, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.54, -10.46, 80.35, 5, 0)
	MovementLoopAddLocation(NPC, 56.48, -10.46, 70.87, 5, 0)
	MovementLoopAddLocation(NPC, 71.47, -11.6, 54.4, 5, 0)
	MovementLoopAddLocation(NPC, 78.64, -12.53, 47.4, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775923 then
	MovementLoopAddLocation(NPC, 62.89, -12.39, 2.66, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.59, -12.31, 4.54, 5, 0)
	MovementLoopAddLocation(NPC, 46.55, -12.45, 5.67, 5, 0)
	MovementLoopAddLocation(NPC, 29.87, -12.81, 8.81, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.54, -12.77, 7.83, 5, 0)
	MovementLoopAddLocation(NPC, 46.73, -12.43, 4.51, 5, 0)
	MovementLoopAddLocation(NPC, 50.08, -12.44, 3.48, 5, 0)
	MovementLoopAddLocation(NPC, 54.69, -13.15, 2.01, 5, 0)
	MovementLoopAddLocation(NPC, 63.52, -13.4, 0.83, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.41, -13.47, 0.84, 5, 0)
	MovementLoopAddLocation(NPC, 71.1, -13.2, 2.85, 5, 0)
	MovementLoopAddLocation(NPC, 76.77, -12.98, 8.15, 5, 0)
	MovementLoopAddLocation(NPC, 79.29, -12.92, 12, 5, 0)
	MovementLoopAddLocation(NPC, 91.25, -12.88, 24.87, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.48, -12.56, 5.76, 5, 0)
	MovementLoopAddLocation(NPC, 96.97, -11.97, -1.86, 5, 0)
	MovementLoopAddLocation(NPC, 97.21, -11.95, -8.64, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.04, -11.61, 9.55, 5, 0)
	MovementLoopAddLocation(NPC, 93.92, -12.47, 21.48, 5, 0)
	MovementLoopAddLocation(NPC, 91.23, -12.7, 28.64, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.59, -12.92, 18.82, 5, 0)
	MovementLoopAddLocation(NPC, 81.15, -12.34, 15.82, 5, 0)
	MovementLoopAddLocation(NPC, 78.27, -12.43, 12.67, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.07, -13.44, 13.19, 5, 0)
	MovementLoopAddLocation(NPC, 69.35, -13.9, 12.51, 5, 0)
	MovementLoopAddLocation(NPC, 67.11, -14.09, 9.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.85, -12.88, 7.99, 5, 0)
	MovementLoopAddLocation(NPC, 62.92, -12.65, 4.67, 5, 0)
	MovementLoopAddLocation(NPC, 63.29, -12.52, -1.31, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775924 then
	MovementLoopAddLocation(NPC, 42.75, -11.87, 43.38, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.99, -11.18, 45.22, 5, 0)
	MovementLoopAddLocation(NPC, 35.45, -10.53, 47.31, 5, 0)
	MovementLoopAddLocation(NPC, 25, -11.11, 49.82, 5, 0)
	MovementLoopAddLocation(NPC, 12.35, -12.54, 50.28, 5, 0)
	MovementLoopAddLocation(NPC, 9.75, -12.52, 49.22, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.39, -12.13, 56.82, 5, 0)
	MovementLoopAddLocation(NPC, 1.06, -11.36, 62.9, 5, 0)
	MovementLoopAddLocation(NPC, -3.31, -10.98, 68.29, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.66, -10.97, 76.68, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.98, -10.39, 73.2, 5, 0)
	MovementLoopAddLocation(NPC, 6.09, -11.49, 57.5, 5, 0)
	MovementLoopAddLocation(NPC, 1.79, -11.82, 54.16, 5, 0)
	MovementLoopAddLocation(NPC, -3.39, -11.81, 46.89, 5, 0)
	MovementLoopAddLocation(NPC, -6.41, -12.1, 43.52, 5, 0)
	MovementLoopAddLocation(NPC, -12.79, -13.36, 40.71, 5, 0)
	MovementLoopAddLocation(NPC, -16.13, -13.36, 41.6, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.52, -13.04, 42.04, 5, 0)
	MovementLoopAddLocation(NPC, 2.03, -13.42, 48.86, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.33, -12.71, 39.02, 5, 0)
	MovementLoopAddLocation(NPC, -10.52, -12.56, 33.87, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.9, -13.76, 35.49, 5, 0)
	MovementLoopAddLocation(NPC, 10.22, -14.19, 36.86, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.22, -13.36, 37.42, 5, 0)
	MovementLoopAddLocation(NPC, 30.35, -13.01, 39.9, 5, 0)
	MovementLoopAddLocation(NPC, 38.89, -12.19, 44.26, 5, 0)
	MovementLoopAddLocation(NPC, 41.14, -11.96, 44.25, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775925 then
	MovementLoopAddLocation(NPC, 31.27, -11.01, -42.77, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.86, -11.76, -38.4, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.83, -11.76, -16.09, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.88, -12.45, -22.81, 5, 0)
	MovementLoopAddLocation(NPC, 44.44, -12, -27.36, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.46, -11.85, -43.51, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.97, -10.52, -64.27, 5, 0)
	MovementLoopAddLocation(NPC, 14.35, -10.6, -72.92, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.03, -11.08, -67.8, 5, 0)
	MovementLoopAddLocation(NPC, 12.11, -12.31, -23.59, 5, 0)
	MovementLoopAddLocation(NPC, 13.75, -12.61, -21.14, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.84, -13.27, -18.07, 5, 0)
	MovementLoopAddLocation(NPC, 21.32, -12.94, -14.11, 5, 0)
	MovementLoopAddLocation(NPC, 21.95, -12.76, -9.62, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.27, -12.8, -14.72, 5, 0)
	MovementLoopAddLocation(NPC, 16.96, -12.59, -18.94, 5, 0)
	MovementLoopAddLocation(NPC, -1.34, -11.77, -33.4, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.09, -11.47, -39.14, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775926 then
	MovementLoopAddLocation(NPC, 31.33, -13.05, -9.67, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.74, -13.11, -21.05, 5, 0)
	MovementLoopAddLocation(NPC, 23.28, -13.21, -33.53, 5, 0)
	MovementLoopAddLocation(NPC, 18.44, -12.52, -42.32, 5, 0)
	MovementLoopAddLocation(NPC, 16.37, -12.36, -49.39, 5, 0)
	MovementLoopAddLocation(NPC, 9.1, -11.83, -67.44, 5, 0)
	MovementLoopAddLocation(NPC, 4.01, -11.45, -76.46, 5, 0)
	MovementLoopAddLocation(NPC, 0.78, -11.2, -84.72, 5, 0)
	MovementLoopAddLocation(NPC, -1.82, -11.65, -91.53, 5, 0)
	MovementLoopAddLocation(NPC, -3.51, -11.93, -95.82, 5, 0)
	MovementLoopAddLocation(NPC, -3.5099, -11.92, -95.74, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.37, -11.15, -91.26, 5, 0)
	MovementLoopAddLocation(NPC, -1.99, -10.47, -80.08, 5, 0)
	MovementLoopAddLocation(NPC, -0.47, -11.02, -71.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.99, -11.9, -44.43, 5, 0)
	MovementLoopAddLocation(NPC, -4.88, -11.87, -36.29, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.18, -12.09, -26.92, 5, 0)
	MovementLoopAddLocation(NPC, 13.5, -12.39, -21.27, 5, 0)
	MovementLoopAddLocation(NPC, 17.95, -12.57, -19.12, 5, 0)
	MovementLoopAddLocation(NPC, 27.09, -12.94, -10.25, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.32, -12.64, -26.78, 5, 0)
	MovementLoopAddLocation(NPC, 42.37, -12.02, -30.95, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.76, -12.42, -27.11, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775927 then
	MovementLoopAddLocation(NPC, 73.61, -12.75, -12.65, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.51, -12.82, -7.31, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.39, -12.35, -11.37, 5, 0)
	MovementLoopAddLocation(NPC, 64.34, -11.39, -17.34, 5, 0)
	MovementLoopAddLocation(NPC, 58.77, -11.29, -20.94, 5, 0)
	MovementLoopAddLocation(NPC, 51.59, -11.92, -25.28, 5, 0)
	MovementLoopAddLocation(NPC, 49.66, -12.15, -27.39, 5, 0)
	MovementLoopAddLocation(NPC, 48.28, -11.58, -32.27, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.17, -11.53, -41.01, 5, 0)
	MovementLoopAddLocation(NPC, 41.68, -11.44, -45.85, 5, 0)
	MovementLoopAddLocation(NPC, 39.23, -11.14, -48.7, 5, 0)
	MovementLoopAddLocation(NPC, 34.54, -10.36, -52.66, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.12, -11.41, -39.43, 5, 0)
	MovementLoopAddLocation(NPC, 30.06, -12.46, -32.93, 5, 0)
	MovementLoopAddLocation(NPC, 26.56, -11.75, -29.36, 5, 0)
	MovementLoopAddLocation(NPC, 25.06, -11.73, -28.47, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.07, -11.89, -44.63, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.49, -11.58, -51.7, 5, 0)
	MovementLoopAddLocation(NPC, -1.31, -12, -56.74, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.89, -10.21, -74.35, 5, 0)
	MovementLoopAddLocation(NPC, -0.8, -11.01, -84.15, 5, 0)
	MovementLoopAddLocation(NPC, -1.15, -11.68, -89.77, 5, 0)
	MovementLoopAddLocation(NPC, -2.52, -11.68, -93.66, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.07, -11.62, -83.43, 5, 0)
	MovementLoopAddLocation(NPC, 2.76, -11.36, -80.3, 5, 0)
	MovementLoopAddLocation(NPC, 12.83, -10.17, -72.3, 5, 0)
	MovementLoopAddLocation(NPC, 21.1, -10.2, -64.87, 5, 0)
	MovementLoopAddLocation(NPC, 27.2, -10.2, -56.98, 5, 0)
	MovementLoopAddLocation(NPC, 37.65, -10.2, -46.79, 5, 0)
	MovementLoopAddLocation(NPC, 50.03, -10.41, -29.51, 5, 0)
	MovementLoopAddLocation(NPC, 54.99, -10.2, -23.66, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.94, -10.59, -19.98, 5, 0)
	MovementLoopAddLocation(NPC, 70.16, -12.68, -14.24, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775928 then
	MovementLoopAddLocation(NPC, 63.98, -11.93, -78.03, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.28, -11.95, -67.15, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.7, -11.45, -55.73, 5, 0)
	MovementLoopAddLocation(NPC, 75.1, -11.37, -51.53, 5, 0)
	MovementLoopAddLocation(NPC, 79.24, -11.96, -35.56, 5, 0)
	MovementLoopAddLocation(NPC, 83.71, -11.99, -30.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.12, -12.92, -28.99, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.38, -12.89, -33.44, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.71, -11.94, -34.17, 5, 0)
	MovementLoopAddLocation(NPC, 101.67, -11.83, -36.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.71, -12, -40.19, 5, 0)
	MovementLoopAddLocation(NPC, 67.09, -11.85, -47.83, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.97, -10.96, -74.28, 5, 0)
	MovementLoopAddLocation(NPC, 56.33, -11.17, -82.41, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.69, -11.04, -33.11, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.42, -11.13, -47.22, 5, 0)
	MovementLoopAddLocation(NPC, 71.83, -11.17, -55.54, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775929 then
	MovementLoopAddLocation(NPC, 87.52, -12.95, -29.36, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.29, -13.01, -23.26, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.83, -12.21, -25.46, 5, 0)
	MovementLoopAddLocation(NPC, 77.94, -11.56, -31.95, 5, 0)
	MovementLoopAddLocation(NPC, 75.2, -10.98, -33.91, 5, 0)
	MovementLoopAddLocation(NPC, 74.36, -11.04, -35.72, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.91, -11.34, -35.13, 5, 0)
	MovementLoopAddLocation(NPC, 87.07, -12.35, -37.6, 5, 0)
	MovementLoopAddLocation(NPC, 95.85, -12.81, -41.11, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.58, -11.99, -40.06, 5, 0)
	MovementLoopAddLocation(NPC, 75.37, -11.97, -39.05, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.7, -12.89, -32.06, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.96, -12.88, -24.29, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.99, -12.78, -21.76, 5, 0)
	MovementLoopAddLocation(NPC, 97.08, -12.09, -17.2, 5, 0)
	MovementLoopAddLocation(NPC, 98.86, -11.79, -15.6, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775930 then
	MovementLoopAddLocation(NPC, 31.87, -12.02, -83.54, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.06, -12.05, -70.94, 5, 0)
	MovementLoopAddLocation(NPC, 52.66, -12.08, -64.47, 5, 0)
	MovementLoopAddLocation(NPC, 54.07, -12.04, -60.22, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.59, -12.19, -62.25, 5, 0)
	MovementLoopAddLocation(NPC, 52.74, -12.27, -63.95, 5, 0)
	MovementLoopAddLocation(NPC, 51.97, -12.07, -64.95, 5, 0)
	MovementLoopAddLocation(NPC, 51.66, -12.03, -66.13, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.11, -11.16, -69.03, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.95, -11.03, -65.35, 5, 0)
	MovementLoopAddLocation(NPC, 70.56, -11.11, -48.39, 5, 0)
	MovementLoopAddLocation(NPC, 74.69, -11.99, -45.24, 5, 0)
	MovementLoopAddLocation(NPC, 85.22, -12.94, -41.62, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.71, -12.31, -42.24, 5, 0)
	MovementLoopAddLocation(NPC, 80.11, -10.55, -45.21, 5, 0)
	MovementLoopAddLocation(NPC, 76.65, -10.3, -52.4, 5, 0)
	MovementLoopAddLocation(NPC, 75.07, -10.3, -59.33, 5, 0)
	MovementLoopAddLocation(NPC, 74.93, -10.59, -66.22, 5, 0)
	MovementLoopAddLocation(NPC, 71.63, -11.79, -73.09, 5, 0)
	MovementLoopAddLocation(NPC, 68.1, -12.17, -76.89, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.68, -10.36, -55.73, 5, 0)
	MovementLoopAddLocation(NPC, 77.28, -10.13, -51.18, 5, 0)
	MovementLoopAddLocation(NPC, 79.54, -10.2, -48.06, 5, 0)
	MovementLoopAddLocation(NPC, 85.55, -11.78, -43.97, 5, 0)
	MovementLoopAddLocation(NPC, 87.33, -12.57, -42.91, 5, 0)
	MovementLoopAddLocation(NPC, 94.1, -12.68, -44.1, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.35, -12.83, -43.77, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.76, -12.3, -44.11, 5, 0)
	MovementLoopAddLocation(NPC, 67.36, -11.19, -45.88, 5, 0)
	MovementLoopAddLocation(NPC, 63.84, -11.01, -45.67, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.6, -12.83, -37.61, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.64, -12.49, -42.38, 5, 0)
	MovementLoopAddLocation(NPC, 61.11, -11.96, -64.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.41, -11.49, -75.14, 5, 0)
	MovementLoopAddLocation(NPC, 41.25, -11.23, -77.03, 5, 0)
	MovementLoopAddLocation(NPC, 38.19, -11.64, -80.5, 5, 0)
elseif GetSpawnLocationID(NPC)== 133775931 then
	MovementLoopAddLocation(NPC, -25.35, -12.52, -40.85, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.21, -12.27, -24.66, 5, 0)
	MovementLoopAddLocation(NPC, -24.37, -12.05, -16.73, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.67, -12.17, -21.94, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.96, -10.99, -53.89, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.6, -11.46, -53.75, 5, 0)
	MovementLoopAddLocation(NPC, -62.46, -11.92, -53.9, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -60.21, -11.4, -53.19, 5, 0)
	MovementLoopAddLocation(NPC, -53.97, -10.46, -49.47, 5, 0)
	MovementLoopAddLocation(NPC, -40.46, -10.57, -36.09, 5, 0)
	MovementLoopAddLocation(NPC, -38.83, -11.59, -34.16, 5, 0)
	MovementLoopAddLocation(NPC, -37.59, -11.93, -30.1, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.72, -11.95, -24.84, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.51, -11.48, -26.19, 5, 0)
	MovementLoopAddLocation(NPC, -20.17, -11.92, -28.28, 5, 0)
	MovementLoopAddLocation(NPC, -17.98, -11.97, -28.14, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.16, -11.04, -44.28, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.35, -11.27, -43.78, 5, 0)
	MovementLoopAddLocation(NPC, -40.37, -11.42, -42.12, 5, 0)
	MovementLoopAddLocation(NPC, -20.61, -11.89, -34.44, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.85, -11.73, -30.54, 5, 0)
	MovementLoopAddLocation(NPC, -26.96, -11.53, -26.33, 5, 0)
	MovementLoopAddLocation(NPC, -31.7, -11.38, -22.03, 5, 0)
	MovementLoopAddLocation(NPC, -37.8, -10.98, -15.2, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.92, -10.32, -22.54, 5, 0)
	MovementLoopAddLocation(NPC, -37.23, -11.14, -33.81, 5, 0)
	MovementLoopAddLocation(NPC, -36.68, -12.06, -37.21, 5, 0)
	MovementLoopAddLocation(NPC, -35.21, -12.59, -40.91, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.43, -11.54, -47.3, 5, 0)
	MovementLoopAddLocation(NPC, -37.02, -11.01, -57.1, 5, 0)
	MovementLoopAddLocation(NPC, -39.41, -11.11, -66.09, 5, 0)
	MovementLoopAddLocation(NPC, -40.07, -10.99, -76.31, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.93, -10.3, -68.49, 5, 0)
	MovementLoopAddLocation(NPC, -35.28, -10.37, -59.23, 5, 0)
	MovementLoopAddLocation(NPC, -32.7, -11.06, -53.12, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.43, -12.3, -43.11, 5, 0)
	MovementLoopAddLocation(NPC, -29.86, -12.53, -38.89, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775932 then
	MovementLoopAddLocation(NPC, -77.23, -11.07, 0.99, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.95, -10.5, -1.38, 5, 0)
	MovementLoopAddLocation(NPC, -70.62, -10.31, -4.15, 5, 0)
	MovementLoopAddLocation(NPC, -63.91, -10.26, -10.64, 5, 0)
	MovementLoopAddLocation(NPC, -59.4, -10.16, -20.36, 5, 0)
	MovementLoopAddLocation(NPC, -28.42, -12.09, -49.32, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.94, -12.28, -47.52, 5, 0)
	MovementLoopAddLocation(NPC, -16, -11.99, -42.34, 5, 0)
	MovementLoopAddLocation(NPC, -6.62, -12.1, -31.23, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.88, -11.99, -36.72, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.59, -12.12, -38.35, 5, 0)
	MovementLoopAddLocation(NPC, -28.73, -12.89, -43.07, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.02, -12.66, -46.51, 5, 0)
	MovementLoopAddLocation(NPC, -17.62, -11.59, -51.34, 5, 0)
	MovementLoopAddLocation(NPC, -12.06, -10.99, -56.36, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.89, -11.07, -48.33, 5, 0)
	MovementLoopAddLocation(NPC, -22.32, -10.47, -24.47, 5, 0)
	MovementLoopAddLocation(NPC, -25.67, -11.11, -9.45, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.93, -11.21, -0.33, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.06, -11.45, 8.76, 5, 0)
	MovementLoopAddLocation(NPC, -37.28, -12.02, 14.62, 5, 0)
	MovementLoopAddLocation(NPC, -38.86, -13.11, 19.32, 5, 0)
	MovementLoopAddLocation(NPC, -36.99, -14.01, 22.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.31, -13.02, 18.21, 5, 0)
	MovementLoopAddLocation(NPC, -44.2, -12.26, 16.4, 5, 0)
	MovementLoopAddLocation(NPC, -46.56, -12.1, 16.51, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.81, -11.21, 16.15, 5, 0)
	MovementLoopAddLocation(NPC, -52.05, -10.5, 16.22, 5, 0)
	MovementLoopAddLocation(NPC, -75.42, -10.6, 4.3, 5, 0)
	MovementLoopAddLocation(NPC, -77.61, -10.81, 1.64, 5, 0)
	MovementLoopAddLocation(NPC, -79.93, -11.18, -12.04, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775933 then
	MovementLoopAddLocation(NPC, -22.9, -12.06, -24.96, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.09, -11.98, -32.33, 5, 0)
	MovementLoopAddLocation(NPC, -28.4, -11.05, -52.41, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.81, -11.59, -44.15, 5, 0)
	MovementLoopAddLocation(NPC, -17.3, -11.94, -22.97, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.56, -12.44, -31.46, 5, 0)
	MovementLoopAddLocation(NPC, -39.81, -12.13, -33.44, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.52, -11.97, -30.34, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.02, -12.01, -16.92, 5, 0)
	MovementLoopAddLocation(NPC, -11.74, -12.03, -7.49, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.24, -10.51, -7.03, 5, 0)
	MovementLoopAddLocation(NPC, -50.13, -10.48, -4.37, 5, 0)
	MovementLoopAddLocation(NPC, -54.32, -10.56, 0.58, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.94, -10.2, -9.95, 5, 0)
	MovementLoopAddLocation(NPC, -38.33, -10.38, -18.32, 5, 0)
	MovementLoopAddLocation(NPC, -29.03, -11.07, -24.16, 5, 0)
	MovementLoopAddLocation(NPC, -26.02, -11.54, -25.33, 5, 0)
elseif GetSpawnLocationID(NPC)== 133776052 then
	MovementLoopAddLocation(NPC, -145.48, -14, 23.27, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.03, -13.69, 24.73, 5, 0)
	MovementLoopAddLocation(NPC, -136.36, -11.42, 27.8, 5, 0)
	MovementLoopAddLocation(NPC, -129.02, -11.57, 28, 5, 0)
	MovementLoopAddLocation(NPC, -133.21, -11.97, 33.53, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.58, -12, 21.23, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.01, -12.43, 32.03, 5, 0)
	MovementLoopAddLocation(NPC, -135.83, -12.85, 43.6, 5, 0)
	MovementLoopAddLocation(NPC, -137.66, -13.04, 47.83, 5, 0)
	MovementLoopAddLocation(NPC, -142.37, -12.85, 51.73, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.13, -13.57, 47.75, 5, 0)
	MovementLoopAddLocation(NPC, -145.4, -14, 37.73, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.07, -13.63, 47.74, 5, 0)
	MovementLoopAddLocation(NPC, -130.05, -12.92, 60.17, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.91, -12.4, 53.32, 5, 0)
	MovementLoopAddLocation(NPC, -124.01, -10.98, 35.77, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.35, -10.67, 39.49, 5, 0)
	MovementLoopAddLocation(NPC, -139.6, -11.36, 60.58, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.63, -12.56, 54.24, 5, 0)
	MovementLoopAddLocation(NPC, -133.12, -12.83, 51.77, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.55, -11.82, 68.24, 5, 0)
	MovementLoopAddLocation(NPC, -130.54, -11.73, 73.62, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.93, -12.44, 55.23, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.9, -12.73, 58.85, 5, 0)
	MovementLoopAddLocation(NPC, -129.92, -12.96, 62.15, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.17, -13.59, 49.58, 5, 0)
	MovementLoopAddLocation(NPC, -146.61, -14.29, 50.31, 5, 0)
	MovementLoopAddLocation(NPC, -146.88, -13.96, 48.79, 5, math.random(10, 20))

elseif GetSpawnLocationID(NPC)== 133776053 then
	MovementLoopAddLocation(NPC, -129.93, -12.01, 45.83, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.35, -12.23, 47.58, 5, 0)
	MovementLoopAddLocation(NPC, -103.8, -11.97, 66.21, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.1, -12.23, 67.85, 5, 0)
	MovementLoopAddLocation(NPC, -108.48, -12.07, 68.13, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.33, -11.94, 66.93, 5, 0)
	MovementLoopAddLocation(NPC, -118.9, -11.45, 64.68, 5, 0)
	MovementLoopAddLocation(NPC, -121.01, -10.39, 62.96, 5, 0)
	MovementLoopAddLocation(NPC, -128.31, -10.57, 57, 5, 0)
	MovementLoopAddLocation(NPC, -129.04, -11.96, 58.65, 5, 0)
	MovementLoopAddLocation(NPC, -128.32, -12.08, 60.55, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.14, -11.35, 56.83, 5, 0)
	MovementLoopAddLocation(NPC, -127.32, -10.52, 57.43, 5, 0)
	MovementLoopAddLocation(NPC, -118.08, -10.58, 63.55, 5, 0)
	MovementLoopAddLocation(NPC, -113.93, -11.76, 67.4, 5, 0)
	MovementLoopAddLocation(NPC, -110.11, -11.92, 68.49, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.24, -11.28, 64.84, 5, 0)
	MovementLoopAddLocation(NPC, -111.29, -10.48, 46.99, 5, 0)
	MovementLoopAddLocation(NPC, -105.13, -10.24, 43.31, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.79, -11.01, 45.2, 5, 0)
	MovementLoopAddLocation(NPC, -113.65, -10.39, 45, 5, 0)
	MovementLoopAddLocation(NPC, -118.72, -10.5, 43, 5, 0)
	MovementLoopAddLocation(NPC, -122.23, -11.07, 40.93, 5, 0)
	MovementLoopAddLocation(NPC, -122.68, -11.09, 39.52, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.76, -11.12, 38.8, 5, 0)
	MovementLoopAddLocation(NPC, -128.82, -10.98, 39.37, 5, 0)
	MovementLoopAddLocation(NPC, -130.91, -10.37, 47.9, 5, 0)
	MovementLoopAddLocation(NPC, -143.52, -10.54, 50.35, 5, 0)
	MovementLoopAddLocation(NPC, -146.02, -12.46, 66.57, 5, 0)
	MovementLoopAddLocation(NPC, -145.34, -12.81, 74.75, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.8, -13.26, 51.13, 5, 0)
	MovementLoopAddLocation(NPC, -138.25, -13.3, 48.27, 5, 0)
	MovementLoopAddLocation(NPC, -137.76, -13.02, 39.61, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.25, -12.51, 41, 5, 0)
	MovementLoopAddLocation(NPC, -126.99, -12.02, 43.71, 5, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133776054 then
	MovementLoopAddLocation(NPC, -128.51, -12.03, 33.61, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.91, -12.75, 59.96, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.35, -13, 56.98, 5, 0)
	MovementLoopAddLocation(NPC, -134.56, -12.99, 70.06, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.69, -12.94, 59.9, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.39, -13.22, 55.58, 5, 0)
	MovementLoopAddLocation(NPC, -144.73, -13.25, 50.78, 5, 0)
	MovementLoopAddLocation(NPC, -147.01, -12.88, 64.39, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.3, -13.14, 52.61, 5, 0)
	MovementLoopAddLocation(NPC, -135.83, -13.08, 55.98, 5, 0)
	MovementLoopAddLocation(NPC, -134.58, -12.99, 68.08, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.13, -12.54, 56.02, 5, 0)
	MovementLoopAddLocation(NPC, -129.45, -11.51, 55.71, 5, 0)
	MovementLoopAddLocation(NPC, -126.89, -11.03, 57.07, 5, 0)
	MovementLoopAddLocation(NPC, -125.11, -11.42, 60.77, 5, 0)
	MovementLoopAddLocation(NPC, -124.73, -11.97, 62.79, 5, 0)
	MovementLoopAddLocation(NPC, -125.42, -12.02, 64.16, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.43, -11.6, 59.87, 5, 0)
	MovementLoopAddLocation(NPC, -125.32, -11.6, 59.73, 5, 0)
	MovementLoopAddLocation(NPC, -128.22, -11.56, 55.86, 5, 0)
	MovementLoopAddLocation(NPC, -143.23, -13.56, 47.5, 5, 0)
	MovementLoopAddLocation(NPC, -143.92, -13.96, 31.68, 5, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.64, -13.45, 48.79, 5, 0)
	MovementLoopAddLocation(NPC, -137.7, -13.05, 51.94, 5, math.random(10, 20))

end
end