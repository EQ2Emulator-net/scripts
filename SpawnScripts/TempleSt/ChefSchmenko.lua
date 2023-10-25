--[[
    Script Name    : SpawnScripts/TempleSt/ChefSchmenko.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.24 01:10:41
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
waypoints(NPC)
    SetInfoStructString(NPC, "action_state", "draw_weapon_trigger")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
    if not IsPlayer(Spawn) and not IsInCombat(Spawn) then
        if GetSpawnID(Spawn)== 1360017 or --Pig
            GetSpawnID(Spawn)== 1360050 or --Cat, Skitter
            GetSpawnID(Spawn)== 1360013 or --Cat, Methos
            GetSpawnID(Spawn)== 1360036 or --Cat, Pockets
            GetSpawnID(Spawn)== 1360035 --Cat, MrButtons
            then
            Attack(NPC,Spawn)
        end
    end
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function aggro(NPC,Spawn)
    FaceTarget(NPC,Spawn)
end

function kill (NPC,Spawn)
    PlayFlavor(NPC,"","","1h_sword_attack",0,0)
    KillSpawn(Spawn)
    AddTimer(NPC,2500,"scoop")
end


function scoop(NPC,Spawn)
   PlayFlavor(NPC,"","","gathering_success",0,0)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_urbanchef/ft/eco/evil/ratonga_eco_evil_urbanchef_guard_gm_1f674b43.mp3", "Oh! I... I'm not causing any trouble here. Don't mind me.", "", 3595799697, 1640670967, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_urbanchef/ft/eco/evil/ratonga_eco_evil_urbanchef_cat_gm_9b64702d.mp3", "Here kitty kitty kitty...", "", 550240368, 2229553634, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_urbanchef/ft/eco/evil/ratonga_eco_evil_urbanchef_chase_gm_9e0faaf4.mp3", "Stop running! It makes your muscles less tender when I cook you.", "", 1878608291, 1886271523, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_urbanchef/ft/eco/evil/ratonga_eco_evil_urbanchef_chase_gm_874126ec.mp3", "Just hold still, it won't hurt a bit...", "", 573333408, 2721588881, Spawn, 0)
	end
end

function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 1360076)
    UseWidget(door)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 29.21, 2.92, 25.71, 1, 12)
	MovementLoopAddLocation(NPC, 27.33, 2.92, 33.05, 1, 0)
	MovementLoopAddLocation(NPC, 32.86, 2.98, 46.38, 1, 0)
	MovementLoopAddLocation(NPC, 35.7, 3, 51.58, 1, 0)
	MovementLoopAddLocation(NPC, 35.7, 3, 51.58, 1, 3)
	MovementLoopAddLocation(NPC, 43.65, 3, 46.57, 1, 0)
	MovementLoopAddLocation(NPC, 45.11, 3, 45.75, 1, 12)
	MovementLoopAddLocation(NPC, 30.49, 3, 54.97, 1, 0)
	MovementLoopAddLocation(NPC, 33.68, 3, 63.8, 1, 0)
	MovementLoopAddLocation(NPC, 35.45, 3, 69.71, 1, 0)
	MovementLoopAddLocation(NPC, 37.3, 3, 73.3, 1, 12)
	MovementLoopAddLocation(NPC, 34.01, 3, 66.86, 1, 8)
	MovementLoopAddLocation(NPC, 26.77, 3, 69.14, 1, 0)
	MovementLoopAddLocation(NPC, 19.62, 3.02, 71.79, 1, 0)
	MovementLoopAddLocation(NPC, 11.77, 3, 70.42, 1, 0)
	MovementLoopAddLocation(NPC, 2.56, 3, 67.84, 1, 0)
	MovementLoopAddLocation(NPC, -7.08, 3, 57.4, 1, 12)
	MovementLoopAddLocation(NPC, -7.56, 3, 57.9, 1, 0)
	MovementLoopAddLocation(NPC, -6.65, 3, 58.56, 1, 0)
	MovementLoopAddLocation(NPC, -4.28, 3, 59.43, 1, 0)
	MovementLoopAddLocation(NPC, 3.73, 3, 70.57, 1, 0)
	MovementLoopAddLocation(NPC, -2.06, 3, 75.23, 1, 0)
	MovementLoopAddLocation(NPC, -10.82, 3, 78.88, 1, 0)
	MovementLoopAddLocation(NPC, -15.5, 3, 80.1, 2, 1,"Door1")
	MovementLoopAddLocation(NPC, -18.05, 3.03, 74.58, 2, 12,"Door1")
	MovementLoopAddLocation(NPC, -19.93, 3.11, 74.09, 2, 35)
	MovementLoopAddLocation(NPC, -18.57, 3.03, 75.75, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, -16.09, 3, 79.41, 2, 0,"Door1")
	MovementLoopAddLocation(NPC, 4.62, 3, 69.9, 2, 0)
	MovementLoopAddLocation(NPC, 9.21, 3, 68, 1, 0)
	MovementLoopAddLocation(NPC, 21.62, 2.98, 81.64, 1, 0)
	MovementLoopAddLocation(NPC, 24.06, 3, 80.72, 1, 12)
	MovementLoopAddLocation(NPC, 23.03, 2.99, 67.83, 1, 0)
	MovementLoopAddLocation(NPC, 29.6, 3, 58.16, 1, 0)
	MovementLoopAddLocation(NPC, 33.84, 3, 52.08, 1, 0)
	MovementLoopAddLocation(NPC, 24.6, 2.92, 37.78, 1, 0)
	MovementLoopAddLocation(NPC, 14.59, 2.92, 35.85, 1, 12)
	MovementLoopAddLocation(NPC, 23.07, 2.92, 36.48, 2, 0)
	MovementLoopAddLocation(NPC, 32.33, 2.92, 21.28, 2, 8)
end


