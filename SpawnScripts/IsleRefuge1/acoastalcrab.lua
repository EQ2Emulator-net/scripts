--[[
    Script Name    : SpawnScripts/IsleRefuge1/acoastalcrab.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.06 02:09:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end


function waypoints(NPC)
 if GetSpawnLocationID(NPC) == 133774927  then
     MovementLoopAddLocation(NPC, -57.01, -8.35, 73.42, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -54.41, -8.62, 76.23, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -54.52, -9.1, 80.6, 1, 0)
	MovementLoopAddLocation(NPC, -54.83, -9.33, 81.88, 1, 0)
--	MovementLoopAddLocation(NPC, -54.41, -9.78, 83.25, 1, 0)
	MovementLoopAddLocation(NPC, -54.49, -9.78, 83.19, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -94.58, -9, 56.72, 1, 0)
	MovementLoopAddLocation(NPC, -94.58, -9, 56.87, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.45, -8.94, 59.65, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.14, -7.41, 56.78, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.56, -8.04, 70.67, 1, 0)
	MovementLoopAddLocation(NPC, -92.65, -8.51, 74.83, 1, 0)
--	MovementLoopAddLocation(NPC, -94.42, -8.98, 76.32, 1, 0)
	MovementLoopAddLocation(NPC, -94.38, -8.97, 76.35, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.8, -7.87, 91.48, 1, 0)
--	MovementLoopAddLocation(NPC, -65.72, -8.74, 93.04, 1, 0)
	MovementLoopAddLocation(NPC, -65.76, -8.7, 92.95, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.19, -7.57, 89.53, 1, 0)
	MovementLoopAddLocation(NPC, -88.26, -7.72, 55.65, 1, 0)
	MovementLoopAddLocation(NPC, -93.2, -8.78, 48.61, 1, 0)
	MovementLoopAddLocation(NPC, -94.35, -9, 45.92, 1, 0)
--	MovementLoopAddLocation(NPC, -96.1, -9.56, 44.62, 1, 0)
	MovementLoopAddLocation(NPC, -96.09, -9.55, 44.61, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.36, -8.53, 42.49, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -96.4, -9.42, 59.96, 1, 0)
	MovementLoopAddLocation(NPC, -97.31, -9.56, 66.94, 1, 0)
	MovementLoopAddLocation(NPC, -95.65, -9.14, 68.34, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.48, -9.64, 63.2, 1, 0)
--	MovementLoopAddLocation(NPC, -96.18, -9.66, 51.26, 1, 0)
	MovementLoopAddLocation(NPC, -96.14, -9.64, 51.27, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.31, -7.34, 56.12, 1, 0)
	MovementLoopAddLocation(NPC, -63.07, -8.43, 69.24, 1, 0)
	MovementLoopAddLocation(NPC, -59.58, -8.28, 72.1, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774928  then
    	MovementLoopAddLocation(NPC, -79.66, -7.76, 106.57, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.55, -8.82, 104.84, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.7, -8.46, 109.98, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.02, -9.65, 97.75, 1, 0)
	MovementLoopAddLocation(NPC, -96.97, -9.64, 97.79, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.44, -7.77, 104.52, 1, 0)
	MovementLoopAddLocation(NPC, -84.72, -7.66, 105.45, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.85, -8.66, 113.06, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.75, -8.06, 101.86, 1, 0)
	MovementLoopAddLocation(NPC, -91.79, -7.88, 90.41, 1, 0)
--	MovementLoopAddLocation(NPC, -96.98, -9.75, 85.71, 1, 0)
	MovementLoopAddLocation(NPC, -96.89, -9.75, 85.87, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.36, -7.13, 104.4, 1, 0)
	elseif GetSpawnLocationID(NPC) == 133774929  then
	MovementLoopAddLocation(NPC, -78.55, -9.5, 114.1, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.77, -8.94, 116.54, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.06, -8.52, 112.14, 1, 0)
	MovementLoopAddLocation(NPC, -88.64, -7.66, 103, 1, 0)
	MovementLoopAddLocation(NPC, -90.86, -7.57, 92.35, 1, 0)
--	MovementLoopAddLocation(NPC, -96.65, -9.72, 87.8, 1, 0)
	MovementLoopAddLocation(NPC, -96.62, -9.71, 87.81, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -76.59, -8.45, 90.06, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -85.65, -9.47, 117.77, 1, 0)
	MovementLoopAddLocation(NPC, -85.69, -9.45, 117.68, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88, -8.62, 112.02, 1, 0)
	MovementLoopAddLocation(NPC, -90.73, -8.34, 107.5, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -78.51, -9.51, 114.08, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774930  then
    	MovementLoopAddLocation(NPC, -92.71, -8.29, 85.54, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.79, -8.33, 110.89, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.75, -9.03, 97.82, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -96.49, -9.49, 95.4, 1, 0)
--	MovementLoopAddLocation(NPC, -97.53, -9.75, 88.6, 1, 0)
	MovementLoopAddLocation(NPC, -97.55, -9.75, 88.65, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.89, -9.75, 89.54, 1, 0)
	MovementLoopAddLocation(NPC, -96.52, -9.5, 94.41, 1, 0)
	MovementLoopAddLocation(NPC, -93.75, -8.79, 98.89, 1, 0)
	MovementLoopAddLocation(NPC, -86.4, -7.87, 107.15, 1, 0)
	MovementLoopAddLocation(NPC, -80.99, -8.99, 115.89, 1, 0)
--	MovementLoopAddLocation(NPC, -79.53, -9.49, 117.59, 1, 0)
	MovementLoopAddLocation(NPC, -79.61, -9.45, 117.48, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.56, -8.42, 110.75, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -72.52, -8.98, 103.45, 1, 0)
	MovementLoopAddLocation(NPC, -72.55, -8.96, 103.41, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.16, -7.12, 95.72, 1, 0)
	elseif GetSpawnLocationID(NPC) == 133774931  then
	MovementLoopAddLocation(NPC, -90.57, -8.59, 109.8, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -86.81, -8.01, 108.67, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.57, -8.25, 84.5, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.88, -7.82, 97.44, 1, 0)
	MovementLoopAddLocation(NPC, -92.89, -8.7, 103.19, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -81.99, -8.69, 112.81, 1, math.random(16, 24)) 
	elseif GetSpawnLocationID(NPC) == 133774932  then
		MovementLoopAddLocation(NPC, -95.05, -9.2, 79.08, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.59, -8.78, 80.57, 1, 0)
	MovementLoopAddLocation(NPC, -93, -8.45, 88.64, 1, 0)
	MovementLoopAddLocation(NPC, -91.93, -8.04, 91.65, 1, 0)
--	MovementLoopAddLocation(NPC, -91.79, -9.11, 110.87, 1, 0)
	MovementLoopAddLocation(NPC, -91.74, -9.06, 110.73, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.8, -8.17, 106.42, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -91.8, -9.76, 113.24, 1, 0)
	MovementLoopAddLocation(NPC, -91.76, -9.74, 113.2, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.59, -9.07, 112.83, 1, 0)
	MovementLoopAddLocation(NPC, -89.25, -9.39, 114.41, 1, 0)
--	MovementLoopAddLocation(NPC, -89.89, -9.78, 116.04, 1, 0)
	MovementLoopAddLocation(NPC, -89.83, -9.77, 116.03, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.05, -9.29, 115.89, 1, 0)
	MovementLoopAddLocation(NPC, -85.63, -9.22, 116.84, 1, 0)
	MovementLoopAddLocation(NPC, -83.42, -9.14, 117.46, 1, 0)
--	MovementLoopAddLocation(NPC, -82.71, -9.75, 120.09, 1, 0)
	MovementLoopAddLocation(NPC, -82.72, -9.75, 119.98, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.28, -9.21, 117.77, 1, 0)
	MovementLoopAddLocation(NPC, -85.12, -9.02, 116.12, 1, 0)
	MovementLoopAddLocation(NPC, -88.28, -9.1, 114.06, 1, 0)
	MovementLoopAddLocation(NPC, -91.89, -9.02, 110.4, 1, 0)
--	MovementLoopAddLocation(NPC, -94.99, -9.74, 109.82, 1, 0)
	MovementLoopAddLocation(NPC, -94.95, -9.73, 109.83, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.6, -8.9, 110.21, 1, 0)
	MovementLoopAddLocation(NPC, -87.52, -8.67, 112.47, 1, 0)
	MovementLoopAddLocation(NPC, -84.85, -8.66, 113.07, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.93, -8.48, 111.85, 1, 0)
	MovementLoopAddLocation(NPC, -79.22, -8.05, 106.93, 1, 0)
	MovementLoopAddLocation(NPC, -76.87, -7.82, 103.61, 1, 0)
	MovementLoopAddLocation(NPC, -74.51, -7.84, 101.21, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.96, -7.12, 96.12, 1, 0)
	MovementLoopAddLocation(NPC, -93.59, -8.77, 81.1, 1, 0)
	MovementLoopAddLocation(NPC, -94.02, -8.92, 80.19, 1, 0)
--	MovementLoopAddLocation(NPC, -95.15, -9.23, 78.99, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774933  then
    	MovementLoopAddLocation(NPC, -91.78, -8.46, 62.13, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.82, -8.47, 69.33, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.39, -8.52, 60.48, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.35, -8.94, 57.44, 1, 0)
--	MovementLoopAddLocation(NPC, -97.18, -9.76, 55.45, 1, 0)
	MovementLoopAddLocation(NPC, -97.13, -9.76, 55.48, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.69, -9.02, 57.16, 1, 0)
--	MovementLoopAddLocation(NPC, -97.34, -9.72, 59.3, 1, 0)
	MovementLoopAddLocation(NPC, -97.3, -9.7, 59.29, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.31, -8.91, 59.03, 1, 0)
	MovementLoopAddLocation(NPC, -55.84, -8.39, 74.65, 1, 0)
	MovementLoopAddLocation(NPC, -53.49, -8.83, 75.89, 1, 0)
--	MovementLoopAddLocation(NPC, -51.73, -9.26, 76.24, 1, 0)
	MovementLoopAddLocation(NPC, -51.83, -9.23, 76.25, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.14, -9.77, 76.36, 1, 0)
	MovementLoopAddLocation(NPC, -97.09, -9.76, 76.26, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.58, -8.94, 68.58, 1, 0)
	MovementLoopAddLocation(NPC, -90.06, -8.09, 63.56, 1, math.random(16, 24))
elseif GetSpawnLocationID(NPC) == 133774934  then
    	MovementLoopAddLocation(NPC, -95.86, -9.24, 72.08, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.07, -9.53, 68.9, 1, 0)
	MovementLoopAddLocation(NPC, -97.46, -9.72, 60.89, 1, 0)
	MovementLoopAddLocation(NPC, -95.57, -9.33, 53.75, 1, 0)
	MovementLoopAddLocation(NPC, -95.13, -9.53, 47.75, 1, 0)
	MovementLoopAddLocation(NPC, -95.01, -9.23, 44.57, 1, 0)
--	MovementLoopAddLocation(NPC, -96.12, -9.62, 42.91, 1, 0)
	MovementLoopAddLocation(NPC, -96.09, -9.61, 42.93, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.99, -8.43, 44.48, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -59.78, -8.09, 80.39, 1, 0)
--	MovementLoopAddLocation(NPC, -57.12, -8.73, 82.07, 1, 0)
	MovementLoopAddLocation(NPC, -57.21, -8.69, 82, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -96.11, -9.54, 52.62, 1, 0)
	MovementLoopAddLocation(NPC, -96.09, -9.53, 52.65, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -62.02, -8.35, 70.62, 1, 0)
	MovementLoopAddLocation(NPC, -62.07, -8.35, 70.58, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.43, -7.96, 55.38, 1, 0)
	MovementLoopAddLocation(NPC, -93.33, -8.73, 52.72, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.68, -8.38, 54.14, 1, 0)
	MovementLoopAddLocation(NPC, -87.55, -7.57, 56.35, 1, 0)
--	MovementLoopAddLocation(NPC, -54.46, -9.1, 80.46, 1, 0)
	MovementLoopAddLocation(NPC, -54.56, -9.06, 80.44, 1, math.random(16, 24))
elseif GetSpawnLocationID(NPC) == 133774935  then	
    	MovementLoopAddLocation(NPC, -93.39, -8.77, 51.4, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.84, -8.41, 52.05, 1, 0)
--	MovementLoopAddLocation(NPC, -64.84, -9.09, 93.55, 1, 0)
	MovementLoopAddLocation(NPC, -64.87, -9.06, 93.49, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.28, -8.7, 58.36, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -60.57, -9.65, 88.86, 1, 0)
	MovementLoopAddLocation(NPC, -60.58, -9.64, 88.85, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.49, -8.54, 61.82, 1, 0)
--	MovementLoopAddLocation(NPC, -97.25, -9.67, 59.95, 1, 0)
	MovementLoopAddLocation(NPC, -97.24, -9.67, 59.92, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.24, -9.28, 52.38, 1, 0)
	MovementLoopAddLocation(NPC, -94.82, -9.42, 41.32, 1, 0)
--	MovementLoopAddLocation(NPC, -95.39, -9.76, 40.26, 1, 0)
	MovementLoopAddLocation(NPC, -95.37, -9.72, 40.38, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.46, -9.06, 46.07, 1, 0)
--	MovementLoopAddLocation(NPC, -95.98, -9.83, 47.31, 1, 0)
	MovementLoopAddLocation(NPC, -95.96, -9.8, 47.38, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.36, -8.72, 55.05, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -70.98, -7.66, 87.94, 1, 0)
	MovementLoopAddLocation(NPC, -68.03, -7.75, 91.06, 1, 0)
	MovementLoopAddLocation(NPC, -67.19, -8.52, 93.33, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -59.67, -8.26, 85.72, 1, 0)
--	MovementLoopAddLocation(NPC, -54.73, -9.87, 83.67, 1, 0)
	MovementLoopAddLocation(NPC, -54.79, -9.84, 83.62, 1, math.random(16, 24))
elseif GetSpawnLocationID(NPC) == 133774936  then	
    	MovementLoopAddLocation(NPC, -59.47, -9.76, 88.71, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -59.51, -8.38, 86.7, 1, 0)
	MovementLoopAddLocation(NPC, -56.3, -9.05, 82.42, 1, 0)
	MovementLoopAddLocation(NPC, -55.82, -8.56, 79.58, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.01, -8.65, 55.78, 1, 0)
	MovementLoopAddLocation(NPC, -95.38, -9.27, 53.58, 1, 0)
	MovementLoopAddLocation(NPC, -96.71, -9.71, 53.15, 1, 0)
	MovementLoopAddLocation(NPC, -96.86, -9.78, 52.39, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.61, -9.74, 47.76, 1, 0)
--	MovementLoopAddLocation(NPC, -96.13, -9.56, 43.73, 1, 0)
	MovementLoopAddLocation(NPC, -96.07, -9.55, 43.79, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.64, -7.43, 79.71, 1, 0)
	MovementLoopAddLocation(NPC, -63.84, -7.55, 83.91, 1, 0)
--	MovementLoopAddLocation(NPC, -61.85, -8.47, 87.3, 1, 0)
	MovementLoopAddLocation(NPC, -61.87, -8.5, 87.38, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -63.2, -8.71, 91.52, 1, 0)
	MovementLoopAddLocation(NPC, -63.32, -8.72, 91.37, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.18, -9.14, 56.31, 1, 0)
--	MovementLoopAddLocation(NPC, -96.62, -9.7, 52.56, 1, 0)
	MovementLoopAddLocation(NPC, -96.58, -9.69, 52.59, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.4, -9.28, 53.6, 1, 0)
	MovementLoopAddLocation(NPC, -95.87, -9.27, 59.19, 1, 0)
	MovementLoopAddLocation(NPC, -97.3, -9.57, 65.61, 1, 0)
--	MovementLoopAddLocation(NPC, -97, -9.77, 76.47, 1, 0)
	MovementLoopAddLocation(NPC, -96.95, -9.74, 76.48, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -59.45, -9.76, 88.75, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774937  then	
    	MovementLoopAddLocation(NPC, -94.34, -8.97, 54.06, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.26, -9.17, 55.45, 1, 0)
--	MovementLoopAddLocation(NPC, -97.16, -9.76, 56.89, 1, 0)
	MovementLoopAddLocation(NPC, -97.1, -9.75, 56.84, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.59, -9.28, 55.63, 1, 0)
	MovementLoopAddLocation(NPC, -94.14, -8.96, 52.42, 1, 0)
--	MovementLoopAddLocation(NPC, -96.25, -9.81, 48.59, 1, 0)
	MovementLoopAddLocation(NPC, -96.16, -9.8, 48.63, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.45, -9.17, 49.61, 1, 0)
	MovementLoopAddLocation(NPC, -93.31, -8.71, 54.13, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.1, -8.46, 51.93, 1, 0)
	MovementLoopAddLocation(NPC, -92, -8.46, 49.95, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.26, -9.09, 50.45, 1, 0)
--	MovementLoopAddLocation(NPC, -96.33, -9.71, 51.15, 1, 0)
	MovementLoopAddLocation(NPC, -96.31, -9.7, 51.25, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.35, -9.21, 55.1, 1, 0)
--	MovementLoopAddLocation(NPC, -97.1, -9.74, 56.96, 1, 0)
	MovementLoopAddLocation(NPC, -97.04, -9.72, 56.97, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.68, -7.41, 58.69, 1, 0)
	MovementLoopAddLocation(NPC, -73.33, -8.05, 63.94, 1, math.random(16, 24))
elseif GetSpawnLocationID(NPC) == 133774938  then		
    	MovementLoopAddLocation(NPC, -91.96, -8.43, 69.04, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.05, -9.76, 76.33, 1, 0)
	MovementLoopAddLocation(NPC, -97.04, -9.75, 76.25, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.07, -9.65, 58.76, 1, 0)
	MovementLoopAddLocation(NPC, -93.23, -8.75, 47.99, 1, 0)
	MovementLoopAddLocation(NPC, -90.33, -8.38, 43.32, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.12, -8.34, 77.19, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.97, -7.42, 61.79, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.09, -8.46, 55.36, 1, 0)
	MovementLoopAddLocation(NPC, -93.56, -8.8, 47.29, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.4, -8.14, 68.63, 1, 0)
	MovementLoopAddLocation(NPC, -86.93, -7.41, 75.03, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.53, -8.55, 59.65, 1, 0)
	MovementLoopAddLocation(NPC, -93.99, -8.92, 52.55, 1, 0)
	MovementLoopAddLocation(NPC, -93.96, -8.99, 49.9, 1, 0)
--	MovementLoopAddLocation(NPC, -94.64, -9.30, 48.54, 1, 0)
	MovementLoopAddLocation(NPC, -94.61, -9.29, 48.59, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.37, -8.8, 49.84, 1, 0)
	MovementLoopAddLocation(NPC, -91.68, -8.39, 60.8, 1, 0)
	MovementLoopAddLocation(NPC, -92.25, -8.38, 77.91, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -96.74, -9.44, 69.86, 1, 0)
	MovementLoopAddLocation(NPC, -96.91, -9.6, 58.57, 1, 0)
	MovementLoopAddLocation(NPC, -95, -9.44, 48.64, 1, 0)
	MovementLoopAddLocation(NPC, -94.22, -8.99, 44.04, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.14, -9.23, 52.69, 1, 0)
	MovementLoopAddLocation(NPC, -97.58, -9.75, 60.96, 1, 0)
	MovementLoopAddLocation(NPC, -99.87, -10.58, 66.65, 1, 0)
	MovementLoopAddLocation(NPC, -96.71, -9.44, 69.93, 1, 0)
	MovementLoopAddLocation(NPC, -94.81, -9.06, 75.57, 1, 0)
	MovementLoopAddLocation(NPC, -93.32, -8.7, 77.88, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -95.6, -9.15, 70.59, 1, 0)
	MovementLoopAddLocation(NPC, -95.59, -9.15, 70.58, 1, math.random(16, 24))
elseif GetSpawnLocationID(NPC) == 133774939  then	
    	MovementLoopAddLocation(NPC, -63.62, -8.29, 40.58, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.95, -7.69, 47.28, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.75, -8.52, 35.62, 1, 0)
--	MovementLoopAddLocation(NPC, -82.62, -8.98, 32.53, 1, 0)
	MovementLoopAddLocation(NPC, -82.44, -8.98, 32.49, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -77.72, -8.76, 31.41, 1, 0)
	MovementLoopAddLocation(NPC, -72.82, -8.82, 28.85, 1, 0)
--	MovementLoopAddLocation(NPC, -71.59, -9.12, 27.44, 1, 0)
	MovementLoopAddLocation(NPC, -71.58, -9.07, 27.45, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -70.37, -8.87, 28.5, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.36, -8.24, 32.51, 1, 0)
	MovementLoopAddLocation(NPC, -64.12, -8.04, 43.47, 1, 0)
	MovementLoopAddLocation(NPC, -61.88, -8.15, 46.24, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -61.82, -9.54, 33.3, 1, 0)
	MovementLoopAddLocation(NPC, -61.81, -9.53, 33.33, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -61.89, -8.94, 35.62, 1, 0)
	MovementLoopAddLocation(NPC, -59.69, -8.76, 40.7, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.92, -8.46, 38.41, 1, math.random(16, 24))
	elseif GetSpawnLocationID(NPC) == 133774940  then	
	    	MovementLoopAddLocation(NPC, -89.36, -8.47, 41.74, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -66.8, -9.62, 27.45, 1, 0)
	MovementLoopAddLocation(NPC, -66.85, -9.61, 27.46, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.18, -8.51, 33.54, 1, 0)
	MovementLoopAddLocation(NPC, -87.18, -8.66, 37.79, 1, 0)
	MovementLoopAddLocation(NPC, -90.06, -8.94, 38.96, 1, 0)
	MovementLoopAddLocation(NPC, -92.31, -9.03, 40.34, 1, 0)
--	MovementLoopAddLocation(NPC, -94.52, -9.51, 40.44, 1, 0)
	MovementLoopAddLocation(NPC, -94.45, -9.49, 40.48, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.67, -9.08, 40.46, 1, 0)
	MovementLoopAddLocation(NPC, -81.2, -9.36, 30.94, 1, 0)
--	MovementLoopAddLocation(NPC, -79.42, -9.75, 28.96, 1, 0)
	MovementLoopAddLocation(NPC, -79.51, -9.75, 29.04, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -87.03, -9.21, 34.56, 1, 0)
	MovementLoopAddLocation(NPC, -86.91, -9.18, 34.61, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.15, -8.37, 36.55, 1, 0)
	MovementLoopAddLocation(NPC, -59.69, -8.52, 44.46, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -65.92, -7.38, 53.65, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.08, -8.43, 42.63, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -55.46, -9.64, 38.36, 1, 0)
	MovementLoopAddLocation(NPC, -55.55, -9.63, 38.35, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.69, -7.62, 36.98, 1, 0)
	MovementLoopAddLocation(NPC, -85.82, -9.28, 32.33, 1, 0)
--	MovementLoopAddLocation(NPC, -87.21, -9.68, 32.02, 1, 0)
	MovementLoopAddLocation(NPC, -87.16, -9.67, 32, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.22, -9.48, 31.03, 1, 0)
	MovementLoopAddLocation(NPC, -80.32, -9.28, 30.82, 1, 0)
	MovementLoopAddLocation(NPC, -75.16, -9.2, 28.64, 1, 0)
	MovementLoopAddLocation(NPC, -74.17, -9.31, 27.62, 1, 0)
--	MovementLoopAddLocation(NPC, -73.07, -9.79, 25.35, 1, 0)
	MovementLoopAddLocation(NPC, -73.12, -9.8, 25.38, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -73.81, -9.7, 26.07, 1, 0)
	MovementLoopAddLocation(NPC, -76.95, -8.79, 30.9, 1, 0)
	elseif GetSpawnLocationID(NPC) == 133774941  then		
	    	MovementLoopAddLocation(NPC, -69.05, -9.21, 27.5, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -72.4, -8.53, 30.14, 1, 0)
	MovementLoopAddLocation(NPC, -85.21, -8.55, 36.85, 1, 0)
	MovementLoopAddLocation(NPC, -88.22, -8.86, 37.63, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.45, -8.44, 35.29, 1, 0)
--	MovementLoopAddLocation(NPC, -70.28, -9.07, 27.66, 1, 0)
	MovementLoopAddLocation(NPC, -70.34, -9.05, 27.73, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -72.46, -8.51, 30.22, 1, 0)
	MovementLoopAddLocation(NPC, -88.19, -8.75, 38.36, 1, 0)
	MovementLoopAddLocation(NPC, -92.09, -8.73, 41.72, 1, 0)
--	MovementLoopAddLocation(NPC, -94.44, -9.31, 41.57, 1, 0)
	MovementLoopAddLocation(NPC, -94.36, -9.29, 41.56, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.54, -8.98, 38.19, 1, 0)
	MovementLoopAddLocation(NPC, -87.58, -9.12, 35.45, 1, 0)
	MovementLoopAddLocation(NPC, -84.86, -9.08, 32.77, 1, 0)
	MovementLoopAddLocation(NPC, -75.49, -8.95, 29.66, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -78.44, -9.06, 30.69, 1, 0)
	MovementLoopAddLocation(NPC, -80.62, -8.95, 31.98, 1, 0)
	MovementLoopAddLocation(NPC, -82.89, -8.97, 32.58, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.07, -8.83, 33.79, 1, 0)
	MovementLoopAddLocation(NPC, -89.97, -9.32, 37, 1, 0)
	MovementLoopAddLocation(NPC, -93.1, -9.35, 39.8, 1, 0)
--	MovementLoopAddLocation(NPC, -95.83, -9.75, 40.85, 1, 0)
	MovementLoopAddLocation(NPC, -95.75, -9.7, 40.84, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -61.8, -8.54, 38.45, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.23, -8.9, 29.93, 1, 0)
--	MovementLoopAddLocation(NPC, -68.99, -9.23, 27.45, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774942  then	
    	MovementLoopAddLocation(NPC, -74.64, -9.98, 25.4, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.02, -9.4, 27.21, 1, 0)
	MovementLoopAddLocation(NPC, -70.64, -8.32, 32.14, 1, 0)
	MovementLoopAddLocation(NPC, -64.5, -7.83, 47.25, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.03, -8.34, 32.15, 1, 0)
--	MovementLoopAddLocation(NPC, -68.15, -8.96, 29.65, 1, 0)
	MovementLoopAddLocation(NPC, -68.19, -8.95, 29.67, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -72.02, -8.29, 31.97, 1, 0)
	MovementLoopAddLocation(NPC, -79.72, -8.47, 33.5, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -63.77, -7.91, 52.23, 1, 0)
--	MovementLoopAddLocation(NPC, -60.02, -8.89, 53.79, 1, 0)
	MovementLoopAddLocation(NPC, -60.12, -8.88, 53.73, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -62.88, -8.19, 51.94, 1, 0)
	MovementLoopAddLocation(NPC, -73.27, -8.26, 31.99, 1, 0)
	MovementLoopAddLocation(NPC, -73.93, -8.62, 30.07, 1, 0)
--	MovementLoopAddLocation(NPC, -75.42, -9.64, 27.53, 1, 0)
	MovementLoopAddLocation(NPC, -75.49, -9.61, 27.54, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.8, -9.04, 32.39, 1, 0)
--	MovementLoopAddLocation(NPC, -89, -9.59, 34.49, 1, 0)
	MovementLoopAddLocation(NPC, -89.02, -9.55, 34.58, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.76, -9.24, 37.14, 1, 0)
--	MovementLoopAddLocation(NPC, -91.73, -9.74, 36.91, 1, 0)
	MovementLoopAddLocation(NPC, -91.66, -9.72, 36.9, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.88, -8.9, 36.77, 1, 0)
--	MovementLoopAddLocation(NPC, -65.85, -8.67, 32.67, 1, 0)
	MovementLoopAddLocation(NPC, -65.93, -8.64, 32.64, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.32, -8.64, 31.48, 1, 0)
--	MovementLoopAddLocation(NPC, -74.62, -10.13, 25.3, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774943  then
    	MovementLoopAddLocation(NPC, -60.79, -8.34, 44.65, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.54, -8.74, 30.71, 1, 0)
--	MovementLoopAddLocation(NPC, -68.95, -9.69, 25.32, 1, 0)
	MovementLoopAddLocation(NPC, -68.91, -9.64, 25.59, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.03, -8.34, 32.17, 1, 0)
	MovementLoopAddLocation(NPC, -66.06, -7.69, 37.25, 1, 0)
	MovementLoopAddLocation(NPC, -62.06, -8.52, 40.41, 1, 0)
	MovementLoopAddLocation(NPC, -59.93, -8.52, 44.17, 1, 0)
--	MovementLoopAddLocation(NPC, -58.22, -8.75, 45.06, 1, 0)
	MovementLoopAddLocation(NPC, -58.3, -8.74, 45, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -76.44, -8.18, 33.65, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.29, -8.4, 37.4, 1, 0)
	MovementLoopAddLocation(NPC, -88.47, -8.53, 40.34, 1, 0)
	MovementLoopAddLocation(NPC, -90.71, -8.64, 41.31, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.84, -8.14, 35.52, 1, 0)
	MovementLoopAddLocation(NPC, -73.39, -8.51, 30.33, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -75.28, -8.3, 32.26, 1, 0)
	MovementLoopAddLocation(NPC, -90.48, -8.92, 39.59, 1, 0)
	MovementLoopAddLocation(NPC, -92.93, -9.15, 40.4, 1, 0)
--	MovementLoopAddLocation(NPC, -97.17, -9.81, 42.71, 1, 0)
	MovementLoopAddLocation(NPC, -97.05, -9.76, 42.73, 1, math.random(16, 24))
	elseif GetSpawnLocationID(NPC) == 133774944  then
	    	MovementLoopAddLocation(NPC, -86.04, -8.35, 39.59, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.14, -7.84, 40.01, 1, 0)
	MovementLoopAddLocation(NPC, -65.97, -8.4, 33.65, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -64.24, -9.77, 29.18, 1, 0)
	MovementLoopAddLocation(NPC, -64.3, -9.75, 29.19, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.93, -9.01, 34.72, 1, 0)
	MovementLoopAddLocation(NPC, -87.79, -9.08, 35.79, 1, 0)
--	MovementLoopAddLocation(NPC, -90.33, -9.74, 35.55, 1, 0)
	MovementLoopAddLocation(NPC, -90.21, -9.7, 35.54, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -66.34, -8.3, 33.51, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.99, -8.99, 32.71, 1, 0)
--	MovementLoopAddLocation(NPC, -87.65, -9.53, 32.97, 1, 0)
	MovementLoopAddLocation(NPC, -87.64, -9.51, 33.09, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.57, -8.46, 40.06, 1, 0)
	MovementLoopAddLocation(NPC, -90, -8.09, 47.18, 1, math.random(16, 24))
	elseif GetSpawnLocationID(NPC) == 133774945  then
	MovementLoopAddLocation(NPC, -62.17, -8.44, 49.73, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -64.9, -7.55, 49.65, 1, 0)
	MovementLoopAddLocation(NPC, -75.68, -8.27, 32.56, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.22, -9.06, 40.13, 1, 0)
	MovementLoopAddLocation(NPC, -93.95, -9.2, 41.5, 1, 0)
--	MovementLoopAddLocation(NPC, -95.6, -9.57, 41.51, 1, 0)
	MovementLoopAddLocation(NPC, -95.56, -9.56, 41.52, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.67, -9.1, 41.81, 1, 0)
	MovementLoopAddLocation(NPC, -85.76, -9.06, 33.88, 1, 0)
--	MovementLoopAddLocation(NPC, -80.97, -9.57, 30.23, 1, 0)
	MovementLoopAddLocation(NPC, -80.87, -9.53, 30.28, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -78.12, -8.98, 30.79, 1, 0)
--	MovementLoopAddLocation(NPC, -77.35, -10.33, 26.76, 1, 0)
	MovementLoopAddLocation(NPC, -77.3, -10.31, 26.81, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.99, -9.37, 27.94, 1, 0)
	MovementLoopAddLocation(NPC, -71.98, -8.74, 28.98, 1, 0)
	MovementLoopAddLocation(NPC, -66.91, -8.97, 30.47, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -86.16, -9.13, 33.91, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.95, -8.4, 41.06, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -78.97, -7.67, 46.47, 1, 0)
--	MovementLoopAddLocation(NPC, -58.67, -8.67, 44.72, 1, 0)
	MovementLoopAddLocation(NPC, -58.79, -8.65, 44.65, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -60.36, -8.52, 43.71, 1, 0)
	MovementLoopAddLocation(NPC, -62.33, -8.48, 41.26, 1, 0)
	MovementLoopAddLocation(NPC, -73.41, -8.32, 31.57, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -62.13, -8.45, 49.72, 1, 0)	    
elseif GetSpawnLocationID(NPC) == 133774946  then	    
    	MovementLoopAddLocation(NPC, -83.79, -8.36, 111.07, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.27, -8.2, 107.66, 1, 0)
--	MovementLoopAddLocation(NPC, -74.08, -9.19, 105.5, 1, 0)
	MovementLoopAddLocation(NPC, -74.18, -9.18, 105.51, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -95.71, -9.59, 106.62, 1, 0)
	MovementLoopAddLocation(NPC, -95.66, -9.57, 106.64, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -75.48, -9.76, 108.77, 1, 0)
	MovementLoopAddLocation(NPC, -75.56, -9.76, 108.79, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.55, -8.79, 110.06, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -74.42, -9.77, 107.67, 1, 0)
--	MovementLoopAddLocation(NPC, -74.55, -9.77, 107.7, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -92.78, -9.71, 112.09, 1, 0)
	MovementLoopAddLocation(NPC, -92.77, -9.68, 112.02, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.31, -8.73, 108.04, 1, 0)
	MovementLoopAddLocation(NPC, -96.52, -9.5, 95.35, 1, 0)
	MovementLoopAddLocation(NPC, -96.42, -9.51, 90.39, 1, 0)
--	MovementLoopAddLocation(NPC, -97.61, -10.06, 88.06, 1, 0)
	MovementLoopAddLocation(NPC, -97.55, -10.03, 88.06, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.22, -7.62, 91.11, 1, 0)
	MovementLoopAddLocation(NPC, -90.08, -7.34, 94.25, 1, 0)
	MovementLoopAddLocation(NPC, -91.85, -8.17, 96.78, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.05, -7.41, 83.29, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.7, -7.98, 96.69, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.27, -8.19, 108.54, 1, 0)
--	MovementLoopAddLocation(NPC, -91.96, -8.92, 109.87, 1, 0)
	MovementLoopAddLocation(NPC, -91.86, -8.9, 109.89, 1, math.random(16, 24))
elseif GetSpawnLocationID(NPC) == 133774947 then
    	MovementLoopAddLocation(NPC, -77.59, -8.27, 33.59, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -63.89, -7.95, 53.34, 1, 0)
	MovementLoopAddLocation(NPC, -63.93, -7.93, 53.31, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -85.06, -9.14, 32.57, 1, 0)
	MovementLoopAddLocation(NPC, -84.98, -9.12, 32.59, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -57.62, -8.99, 42.79, 1, 0)
	MovementLoopAddLocation(NPC, -57.64, -8.99, 42.76, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -60.59, -8.95, 36.63, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.79, -8.53, 35.61, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -66.13, -8.77, 31.54, 1, 0)
	MovementLoopAddLocation(NPC, -66.23, -8.74, 31.53, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -70.36, -8.4, 31.66, 1, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -77.61, -8.28, 33.55, 1, 0)
elseif GetSpawnLocationID(NPC) == 133774948 then
	MovementLoopAddLocation(NPC, -59.50, -9.98, 89.69, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.83, -8.83, 55.76, 1, 0)
--	MovementLoopAddLocation(NPC, -96.79, -9.8, 50.97, 1, 0)
	MovementLoopAddLocation(NPC, -96.68, -9.8, 51.01, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.06, -8.25, 52.16, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.95, -9.09, 56.09, 1, 0)
	MovementLoopAddLocation(NPC, -97.12, -9.52, 65.46, 1, 0)
	MovementLoopAddLocation(NPC, -96.3, -9.37, 72.1, 1, 0)
	MovementLoopAddLocation(NPC, -94.71, -9, 73.72, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.85, -7.84, 53.83, 1, 0)
	MovementLoopAddLocation(NPC, -92.06, -8.53, 42.99, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.05, -8.46, 65.47, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.64, -8.18, 56.82, 1, 0)
--	MovementLoopAddLocation(NPC, -94.43, -9.06, 52.04, 1, 0)
	MovementLoopAddLocation(NPC, -94.48, -9.06, 52.15, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.38, -9.63, 62.81, 1, 0)
	MovementLoopAddLocation(NPC, -96.49, -9.46, 73.06, 1, 0)
--	MovementLoopAddLocation(NPC, -94.62, -9, 74.85, 1, 0)
	MovementLoopAddLocation(NPC, -94.5, -8.97, 74.96, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.02, -8.29, 69.32, 1, math.random(16, 24))
	MovementLoopAddLocation(NPC, -62.54, -7.76, 84.37, 1, 0)
	MovementLoopAddLocation(NPC, -61.87, -8.63, 87.73, 1, 0)
--	MovementLoopAddLocation(NPC, -59.45, -9.99, 89.74, 1, 0)    
    end
end

function respawn(NPC)
	spawn(NPC)
end