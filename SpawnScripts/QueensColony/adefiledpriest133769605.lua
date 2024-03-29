--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledpriest133769605.lua
	Script Purpose	:	Waypoint Path for adefiledpriest133769605.lua
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
	MovementLoopAddLocation(NPC, 74.61, -0.29, -195.68, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 94.32, -0.34, -179.35, 2, 0)
	MovementLoopAddLocation(NPC, 99.29, -0.36, -164.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 84.18, -0.27, -191.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 89.63, -0.48, -176.9, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 84.22, -0.99, -146.21, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 82.03, -0.45, -200.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 91.81, -0.38, -192.52, 2, math.random(12, 22))
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