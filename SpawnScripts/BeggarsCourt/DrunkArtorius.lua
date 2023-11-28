--[[
    Script Name    : SpawnScripts/BeggarsCourt/DrunkArtorius.lua
    Script Author  : Dorbin
    Script Date    : 2023.11.27 04:11:56
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function InRange(NPC, Spawn) 
    GenericDrunkCallout(NPC, Spawn, faction)    
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericDrunkHail(NPC, Spawn, faction)
end

function respawn(NPC)
		spawn(NPC)
	end

function Drink(NPC)
        PlayFlavor(NPC,"","","drinking_idle",0,0)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,4)   
        if choice == 1 then    
        PlayFlavor(NPC,"","","yawn",0,0)
        elseif choice == 2 then    
        PlayFlavor(NPC,"","","drinking_idle",0,0)
        elseif choice == 3 then    
        PlayFlavor(NPC,"","","hungry",0,0)
        else
        PlayFlavor(NPC,"","","happy",0,0)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
        PlayFlavor(NPC,"","","drinking_idle",0,0)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 56.11, 3.75, 3.2, 2, 0)
	MovementLoopAddLocation(NPC, 57.67, 3.75, 2.29, 2, 1)
	MovementLoopAddLocation(NPC, 57.67, 3.75, 2.29, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 57.67, 3.75, 2.29, 2, 0)
	MovementLoopAddLocation(NPC, 55.42, 3.5, 6.09, 2, 0)
	MovementLoopAddLocation(NPC, 53.94, 3.25, 7.23, 2, 1)
	MovementLoopAddLocation(NPC, 53.94, 3.25, 7.23, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 53.94, 3.25, 7.23, 2, 0)
	MovementLoopAddLocation(NPC, 51.7, 3, 6.61, 2, 4)
	MovementLoopAddLocation(NPC, 53.21, 3.25, 5.09, 2, 0)
	MovementLoopAddLocation(NPC, 54.95, 3.5, 4.58, 2, 0)
	MovementLoopAddLocation(NPC, 57.96, 3.75, 2.31, 2, 0)
	MovementLoopAddLocation(NPC, 61.03, 4.03, -0.82, 2, 1)
	MovementLoopAddLocation(NPC, 61.03, 4.03, -0.82, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 59.2, 3.75, 1.12, 2, 0)
	MovementLoopAddLocation(NPC, 57.38, 4, -0.45, 2, 0)
	MovementLoopAddLocation(NPC, 58.03, 4, -2.76, 2, 0)
	MovementLoopAddLocation(NPC, 56.89, 4.25, -6.52, 2, 0)
	MovementLoopAddLocation(NPC, 60.23, 5, -13.88, 2, 1)
	MovementLoopAddLocation(NPC, 61.85, 5, -23.46, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 61.74, 5, -23.56, 2, 0)
	MovementLoopAddLocation(NPC, 62.2, 5, -22.15, 2, 0)
	MovementLoopAddLocation(NPC, 58.93, 5, -15.42, 2, 0)
	MovementLoopAddLocation(NPC, 54.5, 4.38, -7.86, 2, 0)
	MovementLoopAddLocation(NPC, 53.25, 4, -4.82, 2, 0)
	MovementLoopAddLocation(NPC, 53.16, 4, -3.62, 2, 1)
	MovementLoopAddLocation(NPC, 53.16, 4, -3.62, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 53.16, 4, -3.62, 2, 0)
	MovementLoopAddLocation(NPC, 52.99, 4, -1.23, 2, 0)
	MovementLoopAddLocation(NPC, 57.73, 3.75, 4.32, 2, 1)
	MovementLoopAddLocation(NPC, 57.73, 3.75, 4.32, 2, 30,"Drink")
end


