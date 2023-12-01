--[[
    Script Name    : SpawnScripts/TheSprawl_Classic/Gloomstalker.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.30 09:11:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(30 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(60 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -38.74, -2.52, 87.67, 2, 0)
	MovementLoopAddLocation(NPC, -33.54, -2.52, 88.5, 2, 0)
	MovementLoopAddLocation(NPC, -29.62, -2.47, 87.76, 2, 0)
	MovementLoopAddLocation(NPC, -11.59, -1.49, 79.68, 2, 0)
	MovementLoopAddLocation(NPC, -8.34, -1.64, 76.63, 2, 0)
	MovementLoopAddLocation(NPC, -7.96, -1.64, 72.26, 2, 0)
	MovementLoopAddLocation(NPC, -7.96, -2.66, 59.22, 2, 0)
	MovementLoopAddLocation(NPC, -9.61, -2.52, 55.96, 2, 0)
	MovementLoopAddLocation(NPC, -18.14, -2.52, 47.07, 2, 0)
	MovementLoopAddLocation(NPC, -19.12, -2.52, 41.57, 2, 0)
	MovementLoopAddLocation(NPC, -22.28, -2.58, 35.49, 2, 0)
	MovementLoopAddLocation(NPC, -23.19, -2.53, 25.09, 2, 0)
	MovementLoopAddLocation(NPC, -13.72, -2.53, 14.36, 2, 0)
	MovementLoopAddLocation(NPC, -13.21, -2.53, 5.4, 2, 0)
	MovementLoopAddLocation(NPC, -14.49, -2.53, -4.58, 2, 0)
	MovementLoopAddLocation(NPC, -8.36, -2.64, -18.18, 2, 0)
	MovementLoopAddLocation(NPC, -0.92, -2.64, -18.87, 2, 0)
	MovementLoopAddLocation(NPC, 3.23, -2.67, -18.1, 2, 0)
	MovementLoopAddLocation(NPC, 9.54, -2.67, -14.86, 2, 0)
	MovementLoopAddLocation(NPC, 14.38, -2.63, -13.34, 2, 0)
	MovementLoopAddLocation(NPC, 20.95, -2.57, -12.16, 2, 0)
	MovementLoopAddLocation(NPC, 28.1, -2.55, -15.4, 2, 0)
	MovementLoopAddLocation(NPC, 33.25, -2.55, -20.54, 2, 0)
	MovementLoopAddLocation(NPC, 40.08, -2.6, -21.65, 2, 0)
	MovementLoopAddLocation(NPC, 46.24, -2.67, -28.85, 2, 0)
	MovementLoopAddLocation(NPC, 45.55, -2.56, -37.45, 2, 0)
	MovementLoopAddLocation(NPC, 40.62, -2.56, -46.65, 2, 0)
	MovementLoopAddLocation(NPC, 35, -2.5, -50.42, 2, 0)
	MovementLoopAddLocation(NPC, 27.65, -2.54, -53.08, 2, 0)
	MovementLoopAddLocation(NPC, -0.13, -2.51, -55.4, 2, 0)
	MovementLoopAddLocation(NPC, -22.74, -2.65, -51.22, 2, 0)
	MovementLoopAddLocation(NPC, -29.11, -2.92, -48.05, 2, 0)
	MovementLoopAddLocation(NPC, -34.19, -4.16, -45.42, 2, 0)
	MovementLoopAddLocation(NPC, -39.88, -4.28, -43.55, 2, 0)
	MovementLoopAddLocation(NPC, -45.09, -4.28, -41.2, 2, 0)
	MovementLoopAddLocation(NPC, -50.57, -4.28, -34.93, 2, 0)
	MovementLoopAddLocation(NPC, -54.45, -4.28, -33.27, 2, 0)
	MovementLoopAddLocation(NPC, -57.37, -4.43, -27.77, 2, 0)
	MovementLoopAddLocation(NPC, -56.61, -4.42, -17.45, 2, 0)
	MovementLoopAddLocation(NPC, -56.58, -4.52, -11.6, 2, 0)
	MovementLoopAddLocation(NPC, -57.12, -4.52, -7.96, 2, 0)
	MovementLoopAddLocation(NPC, -56.85, -4.05, -4.71, 2, 0)
	MovementLoopAddLocation(NPC, -55.79, -3.25, -1.92, 2, 0)
	MovementLoopAddLocation(NPC, -56.88, -2.55, 2.9, 2, 0)
	MovementLoopAddLocation(NPC, -56.25, -2.57, 5.83, 2, 0)
	MovementLoopAddLocation(NPC, -55.21, -2.63, 8.8, 2, 0)
	MovementLoopAddLocation(NPC, -51.92, -2.55, 12.92, 2, 0)
	MovementLoopAddLocation(NPC, -46.23, -2.52, 17.98, 2, 0)
	MovementLoopAddLocation(NPC, -41.65, -2.62, 20.59, 2, 0)
	MovementLoopAddLocation(NPC, -37.27, -2.67, 22.45, 2, 0)
	MovementLoopAddLocation(NPC, -25.22, -2.53, 27.58, 2, 0)
	MovementLoopAddLocation(NPC, -21.52, -2.56, 36.1, 2, 0)
	MovementLoopAddLocation(NPC, -19.85, -2.52, 43.56, 2, 0)
	MovementLoopAddLocation(NPC, -22.64, -2.67, 46.07, 2, 0)
	MovementLoopAddLocation(NPC, -29.66, -2.67, 51.07, 2, 0)
	MovementLoopAddLocation(NPC, -38.15, -2.67, 59.82, 2, 0)
	MovementLoopAddLocation(NPC, -43.08, -2.67, 69.95, 2, 0)
	MovementLoopAddLocation(NPC, -44.43, -2.55, 79.9, 2, 0)
	MovementLoopAddLocation(NPC, -38.74, -2.52, 87.67, 2, 0, "Action")
end

function Action(NPC,Spawn)
    Despawn(NPC)
end