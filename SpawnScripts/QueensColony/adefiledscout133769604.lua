--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769604.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769604.lua
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
	MovementLoopAddLocation(NPC, 70.17, -0.23, -178.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 72.48, -0.65, -191.1, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 84.16, -0.45, -201.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 81.7, -0.32, -183.99, 2, 0)
	MovementLoopAddLocation(NPC, 79.98, -0.24, -179.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 87.57, -0.25, -172.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 77.26, -2.04, -155.31, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 103.65, -0.34, -178.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 97.09, -0.51, -172.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 73.52, -0.65, -191, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 99.15, -0.33, -166.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 91.57, -0.3, -166.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 80.17, 0.35, -173.08, 2, 0)
	MovementLoopAddLocation(NPC, 72.62, 0.18, -176.77, 2, 0)
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end