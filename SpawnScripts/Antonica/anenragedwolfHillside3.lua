--[[
    Script Name    : SpawnScripts/Antonica/anenragedwolfHillside3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:16
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    combatModule(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2017.65, -29.19, 370.7, 2, 0)
	MovementLoopAddLocation(NPC, -2020.88, -31.1, 375.24, 2, 0)
	MovementLoopAddLocation(NPC, -2024.56, -33, 380.13, 2, 0)
	MovementLoopAddLocation(NPC, -2028.36, -35.38, 385.16, 2, 0)
	MovementLoopAddLocation(NPC, -2032.84, -37.28, 386.81, 2, 0)
	MovementLoopAddLocation(NPC, -2042.65, -38.36, 388.84, 2, 0)
	MovementLoopAddLocation(NPC, -2050.24, -37.76, 389.21, 2, 0)
	MovementLoopAddLocation(NPC, -2052.02, -37.6, 387.31, 2, 0)
	MovementLoopAddLocation(NPC, -2057.06, -38.31, 377.47, 2, 0)
	MovementLoopAddLocation(NPC, -2061.75, -39.32, 368.3, 2, 0)
	MovementLoopAddLocation(NPC, -2066.04, -39.4, 359.92, 2, 0)
	MovementLoopAddLocation(NPC, -2070.29, -38.81, 351.63, 2, 0)
	MovementLoopAddLocation(NPC, -2074.57, -37.32, 343.26, 2, 0)
	MovementLoopAddLocation(NPC, -2078.93, -34.92, 334.74, 2, 0)
	MovementLoopAddLocation(NPC, -2083.01, -31.76, 326.77, 2, 0)
	MovementLoopAddLocation(NPC, -2086.97, -28.22, 319.05, 2, 0)
	MovementLoopAddLocation(NPC, -2090.78, -24.78, 311.6, 2, 0)
	MovementLoopAddLocation(NPC, -2089.18, -24.13, 310.44, 2, 0)
	MovementLoopAddLocation(NPC, -2082.23, -21.14, 305.41, 2, 0)
	MovementLoopAddLocation(NPC, -2075.08, -17.58, 300.24, 2, 0)
	MovementLoopAddLocation(NPC, -2068.21, -12.79, 295.26, 2, 0)
	MovementLoopAddLocation(NPC, -2062.2, -9.12, 290.92, 2, 0)
	MovementLoopAddLocation(NPC, -2055.49, -6.34, 286.06, 2, 0)
	MovementLoopAddLocation(NPC, -2048.84, -3.57, 281.25, 2, 0)
	MovementLoopAddLocation(NPC, -2042.51, -1.16, 276.67, 2, 0)
	MovementLoopAddLocation(NPC, -2035.72, 1.29, 271.76, 2, 0)
	MovementLoopAddLocation(NPC, -2028.78, 3.23, 266.73, 2, 0)
	MovementLoopAddLocation(NPC, -2021.82, 5.21, 261.7, 2, 0)
	MovementLoopAddLocation(NPC, -2019.88, 5.28, 262.18, 2, 0)
	MovementLoopAddLocation(NPC, -2015.32, 4, 267.96, 2, 0)
	MovementLoopAddLocation(NPC, -2010.44, 2.61, 274.14, 2, 0)
	MovementLoopAddLocation(NPC, -2004.89, 0.99, 281.16, 2, 0)
	MovementLoopAddLocation(NPC, -1999.67, -0.64, 287.78, 2, 0)
	MovementLoopAddLocation(NPC, -1994.74, -2.05, 294.03, 2, 0)
	MovementLoopAddLocation(NPC, -1989.8, -3.12, 300.28, 2, 0)
	MovementLoopAddLocation(NPC, -1984.22, -3.6, 307.35, 2, 0)
	MovementLoopAddLocation(NPC, -1979.19, -3.39, 313.72, 2, 0)
	MovementLoopAddLocation(NPC, -1974.55, -3.01, 319.59, 2, 0)
	MovementLoopAddLocation(NPC, -1975.11, -3.14, 320.46, 2, 0)
	MovementLoopAddLocation(NPC, -1982.87, -4.21, 317.98, 2, 0)
	MovementLoopAddLocation(NPC, -1990.91, -4.93, 315.42, 2, 0)
	MovementLoopAddLocation(NPC, -1999.12, -5.12, 312.79, 2, 0)
	MovementLoopAddLocation(NPC, -2006.11, -4.96, 310.56, 2, 0)
	MovementLoopAddLocation(NPC, -2012.55, -4.78, 308.5, 2, 0)
	MovementLoopAddLocation(NPC, -2015.55, -4.88, 308.55, 2, 0)
	MovementLoopAddLocation(NPC, -2021.88, -7.34, 310.93, 2, 0)
	MovementLoopAddLocation(NPC, -2028.69, -9.93, 313.51, 2, 0)
	MovementLoopAddLocation(NPC, -2036.07, -13.2, 316.29, 2, 0)
	MovementLoopAddLocation(NPC, -2043.95, -17.25, 319.27, 2, 0)
	MovementLoopAddLocation(NPC, -2051.34, -21.61, 322.06, 2, 0)
	MovementLoopAddLocation(NPC, -2058.88, -25.68, 324.91, 2, 0)
	MovementLoopAddLocation(NPC, -2066.4, -29.19, 327.75, 2, 0)
	MovementLoopAddLocation(NPC, -2073.21, -31.6, 330.32, 2, 0)
	MovementLoopAddLocation(NPC, -2080.23, -34.42, 332.97, 2, 0)
	MovementLoopAddLocation(NPC, -2086.53, -37.13, 335.34, 2, 0)
	MovementLoopAddLocation(NPC, -2087.26, -38.35, 337.76, 2, 0)
	MovementLoopAddLocation(NPC, -2086.04, -40.71, 344.53, 2, 0)
	MovementLoopAddLocation(NPC, -2084.71, -42.26, 351.91, 2, 0)
	MovementLoopAddLocation(NPC, -2083.57, -43.07, 358.22, 2, 0)
	MovementLoopAddLocation(NPC, -2080.25, -42.55, 360.81, 2, 0)
	MovementLoopAddLocation(NPC, -2074.19, -41.54, 363.67, 2, 0)
	MovementLoopAddLocation(NPC, -2066.77, -40.29, 367.17, 2, 0)
	MovementLoopAddLocation(NPC, -2059.98, -39.1, 370.38, 2, 0)
	MovementLoopAddLocation(NPC, -2057.68, -38.59, 370.48, 2, 0)
	MovementLoopAddLocation(NPC, -2051.7, -37.12, 368.76, 2, 0)
	MovementLoopAddLocation(NPC, -2044.12, -35.06, 366.59, 2, 0)
	MovementLoopAddLocation(NPC, -2037.29, -32.89, 364.64, 2, 0)
	MovementLoopAddLocation(NPC, -2035.33, -32.68, 365.95, 2, 0)
	MovementLoopAddLocation(NPC, -2030.89, -32.08, 369.94, 2, 0)
	MovementLoopAddLocation(NPC, -2025.6, -31.93, 374.68, 2, 0)
	MovementLoopAddLocation(NPC, -2020.02, -32.07, 379.68, 2, 0)
	MovementLoopAddLocation(NPC, -2013.82, -32.36, 385.24, 2, 0)
	MovementLoopAddLocation(NPC, -2013.71, -30.25, 377.68, 2, 0)
	MovementLoopAddLocation(NPC, -2017.65, -29.19, 370.7, 2, 0)
end

