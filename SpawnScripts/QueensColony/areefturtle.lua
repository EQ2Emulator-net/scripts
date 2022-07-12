--[[
    Script Name    : SpawnScripts/QueensColony/areefturtle.lua
    Script Author  : Premierio015, Rylec
    Script Date    : 2022.07.12 09:07:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 if GetSpawnLocationID(NPC) == 427015 then
    MovementLoopAddLocation(NPC, -53.29, -11.78, 193.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.49, -11.93, 191.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.21, -11.74, 185.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.35, -13.27, 206.6, 2, 0)
	MovementLoopAddLocation(NPC, -91.58, -13.44, 210.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.41, -13.33, 216.8, 2, 0)
	MovementLoopAddLocation(NPC, -106.8, -13.44, 241.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.89, -14.22, 229.99, 2, 0)
	MovementLoopAddLocation(NPC, -95.96, -14.8, 220.14, 2, 0)
	MovementLoopAddLocation(NPC, -91.58, -14.74, 218.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.01, -14.78, 210.1, 2, 0)
	MovementLoopAddLocation(NPC, -89.63, -14.07, 208.27, 2, 0)
	MovementLoopAddLocation(NPC, -85.32, -12.43, 200.7, 2, 0)
	MovementLoopAddLocation(NPC, -76.23, -11.57, 191.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -73.02, -12.19, 194.15, 2, 0)
	MovementLoopAddLocation(NPC, -61.55, -11.84, 193.48, 2, 0)
elseif GetSpawnByLocationID(NPC) == 427014 then
    MovementLoopAddLocation(NPC, -48.31, -13.79, 256.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.36, -14.7, 266.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.29, -15.18, 262.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.52, -14.77, 267.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.14, -14.81, 264.85, 2, 0)
	MovementLoopAddLocation(NPC, -75.68, -14.12, 252.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -60.38, -12.05, 248.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.73, -12.03, 252.47, 2, 0)
	MovementLoopAddLocation(NPC, -54.23, -12.43, 270.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.48, -12.42, 265.1, 2, math.random(10, 20))
elseif GetSpawnLocationID(NPC) == 427016 then
    	MovementLoopAddLocation(NPC, -114.5, -14.68, 233.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.65, -14.74, 237.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.87, -14.3, 240.05, 2, 0)
	MovementLoopAddLocation(NPC, -93.45, -14.25, 238.51, 2, 0)
	MovementLoopAddLocation(NPC, -88.61, -14.17, 233.37, 2, 0)
	MovementLoopAddLocation(NPC, -87.08, -13.47, 231.95, 2, 0)
	MovementLoopAddLocation(NPC, -83.65, -13.42, 231.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.76, -14.26, 229.62, 2, 0)
	MovementLoopAddLocation(NPC, -109.26, -14.72, 218.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.53, -13.4, 217.95, 2, 0)
	MovementLoopAddLocation(NPC, -80.74, -11.32, 216.65, 2, 0)
	MovementLoopAddLocation(NPC, -74.04, -10.99, 214.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.17, -11.41, 212.9, 2, 0)
	MovementLoopAddLocation(NPC, -78.23, -11.7, 205.41, 2, 0)
	MovementLoopAddLocation(NPC, -87.13, -12.93, 188.95, 2, 0)
	MovementLoopAddLocation(NPC, -89.32, -12.86, 187.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.66, -11.29, 196.05, 2, 0)
	MovementLoopAddLocation(NPC, -81.74, -11.36, 199.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.07, -12.34, 199.98, 2, 0)
	MovementLoopAddLocation(NPC, -113.24, -14.73, 217.97, 2, 0)
elseif GetSpawnLocationID(NPC) == 427017 then
	MovementLoopAddLocation(NPC, -84.03, -12.71, 187.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.78, -11.72, 170.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -73.82, -11.77, 191.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.32, -11.96, 197.12, 2, 0)
	MovementLoopAddLocation(NPC, -113.27, -12.29, 199.91, 2, 0)
	MovementLoopAddLocation(NPC, -124.61, -13.25, 209.75, 2, 0)
	MovementLoopAddLocation(NPC, -127.35, -13.47, 212.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.34, -13.47, 212.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.98, -14.72, 246.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.29, -13.41, 214.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.84, -13.35, 203.63, 2, 0)
	MovementLoopAddLocation(NPC, -95.79, -12.64, 199.82, 2, 0)
	MovementLoopAddLocation(NPC, -91.54, -12.38, 196.4, 2, 0)
	MovementLoopAddLocation(NPC, -86.72, -12.69, 190.72, 2, 0)
elseif GetSpawnLocationID(NPC) == 427018 then
    	MovementLoopAddLocation(NPC, -148.41, -13.66, 134.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.35, -13.11, 131.53, 2, 0)
	MovementLoopAddLocation(NPC, -139.24, -11.74, 127.17, 2, 0)
	MovementLoopAddLocation(NPC, -138.46, -11.83, 122.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.94, -12.28, 127.38, 2, 0)
	MovementLoopAddLocation(NPC, -132.26, -12.79, 130.83, 2, 0)
	MovementLoopAddLocation(NPC, -131.08, -12.83, 134.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.02, -12.56, 137.82, 2, 0)
	MovementLoopAddLocation(NPC, -112.76, -12.23, 160.3, 2, 0)
	MovementLoopAddLocation(NPC, -108.8, -11.8, 160.8, 2, 0)
	MovementLoopAddLocation(NPC, -106.17, -12, 166.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.61, -12.54, 154.72, 2, 0)
	MovementLoopAddLocation(NPC, -143.04, -14.84, 149.74, 2, 0)
	MovementLoopAddLocation(NPC, -147.57, -14.58, 153.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.66, -15.21, 168.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.93, -13.65, 140.95, 2, 0)
	MovementLoopAddLocation(NPC, -146.12, -13.75, 120.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.16, -13.41, 150.42, 2, 0)
	MovementLoopAddLocation(NPC, -138.97, -13.57, 159.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.97, -12.32, 153.21, 2, 0)
elseif GetSpawnLocationID(NPC) == 427019 then
	MovementLoopAddLocation(NPC, -121.44, -11.77, 97.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.78, -11.77, 116.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.59, -10.41, 126.34, 2, 0)
	MovementLoopAddLocation(NPC, -127.18, -10.62, 132.28, 2, 0)
	MovementLoopAddLocation(NPC, -137.78, -12.36, 139.34, 2, 0)
	MovementLoopAddLocation(NPC, -142.99, -12.59, 142.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.4, -11.73, 153.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.19, -12.2, 162, 2, 0)
	MovementLoopAddLocation(NPC, -135.72, -13.58, 175.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.44, -13.77, 179.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.98, -13.29, 174.63, 2, 0)
	MovementLoopAddLocation(NPC, -129.05, -12.34, 155.73, 2, 0)
	MovementLoopAddLocation(NPC, -130.52, -12.35, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, -133.79, -12.24, 143.79, 2, 0)
	MovementLoopAddLocation(NPC, -135.87, -12.73, 138.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.03, -13.04, 127.91, 2, 0)
	MovementLoopAddLocation(NPC, -148.5, -12.36, 104.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.52, -12.58, 104.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.82, -10.33, 93.52, 2, 0)
	MovementLoopAddLocation(NPC, -122.63, -11.66, 95.18, 2, 0)
elseif GetSpawnLocationID(NPC) == 427020 then
	MovementLoopAddLocation(NPC, -108.61, -12.21, 108.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.98, -12.35, 104.16, 2, 0)
	MovementLoopAddLocation(NPC, -119.87, -12.27, 99.98, 2, 0)
	MovementLoopAddLocation(NPC, -122.63, -12.33, 96.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.07, -11.11, 94.17, 2, 0)
	MovementLoopAddLocation(NPC, -129.27, -10.38, 94.34, 2, 0)
	MovementLoopAddLocation(NPC, -133.23, -11.12, 99.46, 2, 0)
	MovementLoopAddLocation(NPC, -132.68, -12.71, 101.02, 2, 0)
	MovementLoopAddLocation(NPC, -130.31, -12.67, 106.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.8, -11.87, 127.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.12, -12.73, 138.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.07, -12.24, 150.07, 2, 0)
	MovementLoopAddLocation(NPC, -130.28, -11.79, 154.74, 2, 0)
	MovementLoopAddLocation(NPC, -129.2, -11.86, 156.35, 2, 0)
	MovementLoopAddLocation(NPC, -123.7, -12.01, 168.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.5, -12.57, 171.22, 2, 0)
	MovementLoopAddLocation(NPC, -129.52, -13.58, 174.03, 2, 0)
	MovementLoopAddLocation(NPC, -135.96, -14.87, 179.49, 2, 0)
	MovementLoopAddLocation(NPC, -138.14, -14.83, 179.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.01, -14.73, 167.88, 2, 0)
	MovementLoopAddLocation(NPC, -140.63, -13.29, 158.75, 2, 0)
	MovementLoopAddLocation(NPC, -143, -13.64, 153.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.01, -12.37, 149.99, 2, 0)
	MovementLoopAddLocation(NPC, -101.35, -11.74, 145.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.28, -11.29, 133.66, 2, 0)
	MovementLoopAddLocation(NPC, -132.24, -12.81, 131.11, 2, 0)
	MovementLoopAddLocation(NPC, -130.73, -12.92, 124.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.26, -11.58, 133.49, 2, 0)
	MovementLoopAddLocation(NPC, -120.15, -11.48, 127.34, 2, 0)
elseif GetSpawnLocationID(NPC) == 427021 then
	MovementLoopAddLocation(NPC, -128.54, -13.55, 186.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.67, -14.42, 183.43, 2, 0)
	MovementLoopAddLocation(NPC, -123.3, -14.85, 179.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.89, -13.51, 177.19, 2, 0)
	MovementLoopAddLocation(NPC, -141.13, -13.58, 175.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.93, -14.04, 160.58, 2, 0)
	MovementLoopAddLocation(NPC, -144.81, -13.66, 149.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.35, -12.13, 153.45, 2, 0)
	MovementLoopAddLocation(NPC, -119.68, -11.8, 157.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.69, -12.33, 159.45, 2, 0)
	MovementLoopAddLocation(NPC, -146.62, -12.36, 175.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.09, -13.31, 176.37, 2, 0)
	MovementLoopAddLocation(NPC, -124.24, -14.79, 178.21, 2, 0)
	MovementLoopAddLocation(NPC, -123.14, -14.86, 179.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.33, -14.12, 182.63, 2, 0)
	MovementLoopAddLocation(NPC, -131.23, -13.27, 185.15, 2, 0)
	MovementLoopAddLocation(NPC, -130.39, -12.38, 209.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.15, -13.43, 206.66, 2, 0)
	MovementLoopAddLocation(NPC, -148.52, -14.5, 194.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.67, -14.69, 209.18, 2, math.random(10, 20))
elseif GetSpawnLocationID(NPC) == 427022 then
	MovementLoopAddLocation(NPC, -137.57, -11.53, 142.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.28, -11.7, 144.11, 2, 0)
	MovementLoopAddLocation(NPC, -103.36, -11.75, 145.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.95, -11.31, 174.14, 2, 0)
	MovementLoopAddLocation(NPC, -125.07, -12.34, 197.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.44, -12.84, 183.13, 2, 0)
	MovementLoopAddLocation(NPC, -140.48, -12.06, 179.75, 2, 0)
	MovementLoopAddLocation(NPC, -144.86, -12.33, 175.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.24, -13.44, 184.96, 2, 0)
	MovementLoopAddLocation(NPC, -113.89, -13.59, 186.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.39, -13.75, 186.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.84, -11.7, 156.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.19, -12.13, 150.99, 2, 0)
	MovementLoopAddLocation(NPC, -117.6, -11.73, 150.55, 2, 0)
	MovementLoopAddLocation(NPC, -113.77, -11.74, 149.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.17, -10.67, 147.91, 2, 0)
elseif GetSpawnLocationID(NPC) == 427023 then
 	MovementLoopAddLocation(NPC, -148.4, -14.77, 153.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.99, -15.17, 150.66, 2, 0)
	MovementLoopAddLocation(NPC, -143.53, -14.54, 147.28, 2, 0)
	MovementLoopAddLocation(NPC, -140.96, -12.77, 145.9, 2, 0)
	MovementLoopAddLocation(NPC, -139.79, -12.38, 145.06, 2, 0)
	MovementLoopAddLocation(NPC, -135.32, -12.05, 143.63, 2, 0)
	MovementLoopAddLocation(NPC, -126.91, -11.74, 138.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.88, -12.17, 143.46, 2, 0)
	MovementLoopAddLocation(NPC, -131.53, -12.21, 147.33, 2, 0)
	MovementLoopAddLocation(NPC, -136.86, -13.82, 151.93, 2, 0)
	MovementLoopAddLocation(NPC, -138.27, -13.37, 152.32, 2, 0)
	MovementLoopAddLocation(NPC, -138.84, -12.43, 153.25, 2, 0)
	MovementLoopAddLocation(NPC, -141.34, -12.43, 157.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.36, -12.56, 153.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.83, -12.24, 153.18, 2, 0)
	MovementLoopAddLocation(NPC, -121.37, -12.24, 151.72, 2, 0)
	MovementLoopAddLocation(NPC, -117.95, -12.21, 149.83, 2, 0)
	MovementLoopAddLocation(NPC, -103.14, -11.82, 145.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.73, -11.63, 134.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.99, -11.74, 134.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.11, -11.79, 108.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.79, -10.41, 111.45, 2, 0)
	MovementLoopAddLocation(NPC, -110.49, -11.86, 114.33, 2, 0)
	MovementLoopAddLocation(NPC, -108.78, -11.87, 116.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.43, -11.72, 145.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.54, -12.25, 149.68, 2, 0)
	MovementLoopAddLocation(NPC, -145.14, -14.74, 150.77, 2, 0)
elseif GetSpawnLocationID(NPC) == 427024 then
	MovementLoopAddLocation(NPC, -126.87, -11.74, 164.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.19, -12.33, 163.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.32, -12.5, 160.77, 2, 0)
	MovementLoopAddLocation(NPC, -134.28, -12.46, 157.86, 2, 0)
	MovementLoopAddLocation(NPC, -136.24, -12.5, 157.59, 2, 0)
	MovementLoopAddLocation(NPC, -139.39, -12.58, 153.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -14.59, 150.82, 2, 0)
	MovementLoopAddLocation(NPC, -145.34, -14.68, 152.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.62, -13.26, 157.53, 2, 0)
	MovementLoopAddLocation(NPC, -148.44, -13.59, 164.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.67, -14.8, 171.89, 2, 0)
	MovementLoopAddLocation(NPC, -149.44, -14.77, 172.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.28, -13.96, 164.71, 2, 0)
	MovementLoopAddLocation(NPC, -140.93, -13.24, 152.5, 2, 0)
	MovementLoopAddLocation(NPC, -139.91, -13.33, 147.9, 2, 0)
	MovementLoopAddLocation(NPC, -121.24, -11.54, 148.05, 2, 0)
	MovementLoopAddLocation(NPC, -117.9, -11.77, 149.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.56, -12.05, 150.26, 2, 0)
	MovementLoopAddLocation(NPC, -129.13, -12.29, 156.07, 2, 0)
	MovementLoopAddLocation(NPC, -136.24, -14.28, 161.69, 2, 0)
	MovementLoopAddLocation(NPC, -143.99, -14.25, 166.53, 2, 0)
	MovementLoopAddLocation(NPC, -146.55, -14.74, 170.43, 2, 0)
	MovementLoopAddLocation(NPC, -149.12, -14.89, 168.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.78, -14.74, 168.75, 2, 0)
	MovementLoopAddLocation(NPC, -133.37, -14.27, 164.46, 2, 0)
	MovementLoopAddLocation(NPC, -131.34, -13.83, 165.16, 2, 0)
	MovementLoopAddLocation(NPC, -129.45, -13.79, 164.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.89, -13.28, 162.98, 2, 0)
	MovementLoopAddLocation(NPC, -144.72, -14.17, 146.42, 2, 0)
	MovementLoopAddLocation(NPC, -147.97, -14.81, 132.6, 2, 0)
	MovementLoopAddLocation(NPC, -152.6, -14.88, 129.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.52, -14.21, 140.64, 2, 0)
	MovementLoopAddLocation(NPC, -136.67, -12.41, 158.24, 2, 0)
	MovementLoopAddLocation(NPC, -130.29, -12.25, 159.92, 2, 0)
	MovementLoopAddLocation(NPC, -128.93, -11.65, 161.22, 2, 0)
elseif GetSpawnLocationID(NPC) == 427025 then
 	MovementLoopAddLocation(NPC, -146.67, -12.39, 194.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.12, -14.85, 195.67, 2, 0)
	MovementLoopAddLocation(NPC, -123.22, -14.76, 194.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.36, -12.18, 194.34, 2, 0)
	MovementLoopAddLocation(NPC, -148.27, -12.41, 194.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.76, -11.31, 145.38, 2, 0)
	MovementLoopAddLocation(NPC, -103.77, -11.65, 110.5, 2, 0)
	MovementLoopAddLocation(NPC, -103.35, -11.83, 105.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.02, -11.34, 112.45, 2, 0)
	MovementLoopAddLocation(NPC, -99.89, -11.11, 114.84, 2, 0)
	MovementLoopAddLocation(NPC, -87.71, -11.02, 127.29, 2, 0)
	MovementLoopAddLocation(NPC, -81.82, -11.75, 138.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.98, -11.72, 131.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.87, -11.32, 132.28, 2, 0)
	MovementLoopAddLocation(NPC, -131.17, -12.31, 131.85, 2, 0)
	MovementLoopAddLocation(NPC, -142.17, -13.27, 131.5, 2, 0)
	MovementLoopAddLocation(NPC, -143.28, -13.78, 131.04, 2, 0)
	MovementLoopAddLocation(NPC, -144.88, -13.65, 133.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -14.3, 147.92, 2, 0)
	MovementLoopAddLocation(NPC, -144.8, -14.73, 153.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.37, -13.57, 162.41, 2, 0)
	MovementLoopAddLocation(NPC, -141.9, -12.23, 182.65, 2, 0)
	MovementLoopAddLocation(NPC, -142.99, -12.3, 190.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134, -13.45, 184.01, 2, 0)
	MovementLoopAddLocation(NPC, -129.05, -14.4, 184.21, 2, 0)
	MovementLoopAddLocation(NPC, -126.8, -14.85, 186.31, 2, 0)
	MovementLoopAddLocation(NPC, -126.99, -14.8, 187.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.72, -14.74, 212.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.77, -13.27, 197.93, 2, 0)
	MovementLoopAddLocation(NPC, -147.82, -12.48, 195.27, 2, 0)
elseif GetSpawnLocationID(NPC) == 427026 then
    	MovementLoopAddLocation(NPC, -139.41, -12.33, 205.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.66, -12.45, 209.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.76, -13.46, 212.79, 2, 0)
	MovementLoopAddLocation(NPC, -142.8, -13.93, 216.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.53, -13.63, 212.89, 2, 0)
	MovementLoopAddLocation(NPC, -152.38, -13.7, 208.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.71, -14.66, 205.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.94, -12.24, 181.34, 2, 0)
	MovementLoopAddLocation(NPC, -128.29, -12.39, 178.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.07, -12.69, 173.89, 2, 0)
	MovementLoopAddLocation(NPC, -124.75, -12.29, 162.18, 2, 0)
	MovementLoopAddLocation(NPC, -124.97, -11.74, 149.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.89, -12.08, 160.16, 2, 0)
	MovementLoopAddLocation(NPC, -105.36, -11.71, 171.96, 2, 0)
	MovementLoopAddLocation(NPC, -101.51, -11.78, 175.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.33, -12.29, 177.34, 2, 0)
	MovementLoopAddLocation(NPC, -117.73, -12.53, 179.26, 2, math.random(10, 20))
elseif GetSpawnLocationID(NPC) == 427027 then
	MovementLoopAddLocation(NPC, -116.12, -11.82, 66.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.52, -10.65, 68.26, 2, 0)
	MovementLoopAddLocation(NPC, -105.3, -11.92, 74.32, 2, 0)
	MovementLoopAddLocation(NPC, -107.27, -11.67, 78.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.89, -10.5, 72.36, 2, 0)
	MovementLoopAddLocation(NPC, -121.45, -10.5, 63.59, 2, 0)
	MovementLoopAddLocation(NPC, -127.36, -10.45, 56.17, 2, 0)
	MovementLoopAddLocation(NPC, -128.81, -11.47, 54.47, 2, 0)
	MovementLoopAddLocation(NPC, -130.01, -11.67, 51.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.49, -11.77, 39.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.66, -10.55, 51.07, 2, 0)
	MovementLoopAddLocation(NPC, -120.8, -10.35, 60.25, 2, 0)
	MovementLoopAddLocation(NPC, -115.9, -11.74, 64.15, 2, 0)
	MovementLoopAddLocation(NPC, -112.56, -11.86, 64.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.71, -10.51, 61.74, 2, 0)
	MovementLoopAddLocation(NPC, -129.69, -10.31, 55.95, 2, 0)
	MovementLoopAddLocation(NPC, -134.89, -12.77, 52.67, 2, 0)
	MovementLoopAddLocation(NPC, -143.93, -13.05, 50.88, 2, 0)
	MovementLoopAddLocation(NPC, -145.57, -13.18, 51.19, 2, 0)
	MovementLoopAddLocation(NPC, -148.19, -13.44, 52.96, 2, 0)
	MovementLoopAddLocation(NPC, -148.53, -14.76, 66.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.04, -13.37, 51.34, 2, 0)
	MovementLoopAddLocation(NPC, -144.04, -13.24, 50.95, 2, 0)
	MovementLoopAddLocation(NPC, -137.87, -12.8, 56.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.69, -12.3, 55.35, 2, 0)
	MovementLoopAddLocation(NPC, -129.72, -11.28, 56.01, 2, 0)
	MovementLoopAddLocation(NPC, -127.65, -10.57, 57.29, 2, 0)
	MovementLoopAddLocation(NPC, -120.36, -10.36, 61.57, 2, 0)
	MovementLoopAddLocation(NPC, -116.64, -11.59, 64.87, 2, 0)
elseif GetSpawnLocationID(NPC) == 427028 then
	MovementLoopAddLocation(NPC, -137.73, -12.79, 41.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.23, -11.66, 33.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.14, -11.4, 46.9, 2, 0)
	MovementLoopAddLocation(NPC, -127.44, -10.4, 55.74, 2, 0)
	MovementLoopAddLocation(NPC, -125.11, -11.18, 61.05, 2, 0)
	MovementLoopAddLocation(NPC, -120.5, -10.99, 64.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.35, -11.58, 61.86, 2, 0)
	MovementLoopAddLocation(NPC, -126.89, -11.81, 57.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.6, -12.28, 56.53, 2, 0)
	MovementLoopAddLocation(NPC, -132.18, -12.78, 58.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.49, -11.94, 56.57, 2, 0)
	MovementLoopAddLocation(NPC, -129.67, -11.5, 56.54, 2, 0)
	MovementLoopAddLocation(NPC, -127.73, -10.67, 57.34, 2, 0)
	MovementLoopAddLocation(NPC, -122.96, -10.34, 60.37, 2, 0)
	MovementLoopAddLocation(NPC, -115.94, -11.68, 66.99, 2, 0)
	MovementLoopAddLocation(NPC, -110.04, -11.87, 70.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.21, -11.03, 68.02, 2, 0)
	MovementLoopAddLocation(NPC, -119.07, -10.3, 63.72, 2, 0)
	MovementLoopAddLocation(NPC, -123.62, -10.3, 57.27, 2, 0)
	MovementLoopAddLocation(NPC, -129.52, -10.57, 53.43, 2, 0)
	MovementLoopAddLocation(NPC, -133.96, -12.02, 46.11, 2, 0)
	MovementLoopAddLocation(NPC, -128.51, -11.86, 49.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.24, -11.39, 31.44, 2, 0)
	MovementLoopAddLocation(NPC, -136.27, -11.55, 19.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138, -12.74, 8.02, 2, 0)
	MovementLoopAddLocation(NPC, -145.57, -12.57, 4.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.24, -12.41, 39.12, 2, 0)
	MovementLoopAddLocation(NPC, -137.98, -13.29, 44.96, 2, 0)
	MovementLoopAddLocation(NPC, -146.73, -13.26, 52.55, 2, math.random(10, 20))
elseif GetSpawnLocationID(NPC) == 427029 then
	MovementLoopAddLocation(NPC, -147.05, -13.74, 51.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.29, -13.45, 50.49, 2, 0)
	MovementLoopAddLocation(NPC, -133.57, -12.22, 51.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.24, -12.35, 52.19, 2, 0)
	MovementLoopAddLocation(NPC, -116.14, -11.76, 57.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.62, -12.3, 53.86, 2, 0)
	MovementLoopAddLocation(NPC, -135.36, -12.54, 55.54, 2, 0)
	MovementLoopAddLocation(NPC, -143.77, -12.57, 65.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.78, -12.53, 55.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.17, -12.4, 55.24, 2, 0)
	MovementLoopAddLocation(NPC, -129.65, -11.58, 55.81, 2, 0)
	MovementLoopAddLocation(NPC, -127.75, -10.52, 58.19, 2, 0)
	MovementLoopAddLocation(NPC, -113.51, -10.5, 77.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.34, -10.5, 38.54, 2, 0)
	MovementLoopAddLocation(NPC, -129.58, -11.26, 33.23, 2, 0)
	MovementLoopAddLocation(NPC, -133.25, -11.85, 27.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.58, -11.62, 45.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.73, -12.81, 53.73, 2, 0)
	MovementLoopAddLocation(NPC, -140.48, -12.32, 64.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.56, -11.7, 75.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.64, -11.75, 27.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.23, -11.58, 66.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.72, -12.31, 56.51, 2, 0)
	MovementLoopAddLocation(NPC, -144.14, -13.67, 50.75, 2, 0)
elseif GetSpawnLocationID(NPC) == 427030 then
 	MovementLoopAddLocation(NPC, -137.62, -12.75, 11.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.31, -12.05, 37.64, 2, 0)
	MovementLoopAddLocation(NPC, -122.11, -11.98, 43.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.3, -11.96, 43.24, 2, 0)
	MovementLoopAddLocation(NPC, -125.06, -11.61, 44.82, 2, 0)
	MovementLoopAddLocation(NPC, -130.47, -11, 52.14, 2, 0)
	MovementLoopAddLocation(NPC, -134.68, -11.38, 57.77, 2, 0)
	MovementLoopAddLocation(NPC, -134.68, -11.59, 68.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.87, -12.76, 37.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.49, -13.36, 48.45, 2, 0)
	MovementLoopAddLocation(NPC, -134.75, -12.85, 47.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -12.67, 47.8, 2, 0)
	MovementLoopAddLocation(NPC, -149.41, -13.14, 44.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.13, -12.71, 56.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.1, -12.79, 76.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.74, -12.29, 81.25, 2, 0)
	MovementLoopAddLocation(NPC, -136.54, -12.54, 80.83, 2, 0)
	MovementLoopAddLocation(NPC, -141.76, -13.32, 76.73, 2, 0)
	MovementLoopAddLocation(NPC, -144.05, -13.7, 71.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.37, -13.27, 48.9, 2, 0)
	MovementLoopAddLocation(NPC, -136.13, -12.35, 48.51, 2, 0)
	MovementLoopAddLocation(NPC, -131.41, -11.78, 46.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.54, -11.37, 33.42, 2, 0)
	MovementLoopAddLocation(NPC, -137.82, -12.68, 11.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125, -12.09, 39, 2, 0)
	MovementLoopAddLocation(NPC, -122.37, -11.87, 43.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.18, -11.1, 47.92, 2, 0)
	MovementLoopAddLocation(NPC, -133.19, -11.19, 55.21, 2, 0)
	MovementLoopAddLocation(NPC, -134.66, -11.6, 67.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.72, -12.77, 37.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.49, -13.21, 47.45, 2, 0)
	MovementLoopAddLocation(NPC, -134.57, -12.74, 47.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.65, -12.77, 47.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.14, -12.88, 55.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.27, -12.76, 76.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.53, -12.02, 79.1, 2, 0)
	MovementLoopAddLocation(NPC, -140.27, -13.12, 77.07, 2, 0)
	MovementLoopAddLocation(NPC, -143.8, -13.66, 70.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.19, -13.29, 48.99, 2, 0)
	MovementLoopAddLocation(NPC, -135.44, -12.36, 48.58, 2, 0)
	MovementLoopAddLocation(NPC, -131.55, -11.79, 45.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.02, -11.3, 31.96, 2, 0)   
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end