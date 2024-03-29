--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769630.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769630.lua
	Script Author	:	Rylec, PlayFlavor by premierio015
	Script Date	:	06-26-2020 06:15:07 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "hp", 110)
        SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 190.94, -0.66, -173.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 187.84, -0.66, -162.34, 2, 0)
	MovementLoopAddLocation(NPC, 187.98, -0.66, -150.89, 2, 0)
	MovementLoopAddLocation(NPC, 192.32, -0.68, -133.88, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 203.48, -0.72, -145.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 189.49, -0.66, -175.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 176.85, -0.21, -165.76, 2, 0)
	MovementLoopAddLocation(NPC, 175.44, 0.51, -163.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 200.16, -0.7, -149.31, 2, 0)
	MovementLoopAddLocation(NPC, 203.21, -0.71, -148.01, 2, 0)
	MovementLoopAddLocation(NPC, 205.51, -0.72, -146.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 209.41, -0.74, -154.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 213.62, -0.75, -148.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 179.78, 1, -150.57, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 188.04, -0.66, -144.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 192.42, -0.68, -143.91, 2, 0)
	MovementLoopAddLocation(NPC, 203.61, -0.72, -140.34, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn) 
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
        end
end