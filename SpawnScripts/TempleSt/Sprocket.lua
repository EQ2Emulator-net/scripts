--[[
    Script Name    : SpawnScripts/TempleSt/Sprocket.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.23 04:10:27
    Script Purpose : 
                   : 
--]]

local AttackTimer = false   --TIMER FOR ATTACK RESPONSE (ATTACKS KERRAN)
local FollowTimer = false   --TIMER FOR FOLLOW SCRIPT

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetRace(Spawn)==11 then      --KERRAN RESPONSE
	local choice = math.random(1, 2)
	if choice == 1 then
    PlayFlavor(NPC, "", "", "attack", 0, 0,Spawn)
    SendMessage(Spawn, "Sprocket lunges at your tail threateningly.")	
	elseif choice == 2 then
    SendMessage(Spawn, "Sprocket growls at you menecingly.")	
    end
    else                            --NORMAL RESPONSE
--[[    local choice = math.random(1, 2)
	if choice == 1 then
	SendMessage(Spawn, "The dog cautiously eyes you.")	
	elseif choice == 2 then
 	SendMessage(Spawn, "The dog sniffs you curiously.")
 	 end]]--
end
end


function InRange(NPC, Spawn) --FOLLOW TARGET SCRIPT IS TOO SLOW.  DOG WALKS, BUT SPEED IS NOT ADJUSTABLE.
if GetRace(Spawn)==11  or GetFactionAmount(Spawn,12)<-10000 then      --KERRAN RESPONSE
 if AttackTimer == false then
     if FollowTimer == false then
        FollowTimer = true         
--    SetFollowTarget(NPC,Spawn)
--    if not IsFollowing(NPC) then
--        ToggleFollow(NPC)
--    end
--       SetTarget(NPC,Spawn)
	    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
	local choice = math.random(1, 2)
	if choice == 1 then
	    SendMessage(Spawn, "Sprocket snarls and eyes you closely.")	
	elseif choice == 2 then
 	    SendMessage(Spawn, "Sprocket leers at you with a quivering jowl.")
 	 end
    AddTimer(NPC,10000,"ResetFollow",1,Spawn)        
    AddTimer(NPC,45000,"ResetFollowTimer",1,Spawn)        
    end    
end    
end
end

function ResetFollow(NPC)    
    if IsFollowing(NPC) then
        SetTarget(NPC,nil)
        ToggleFollow(NPC)
        AttackTimer = false
end
end

function ResetFollowTimer(NPC)    
FollowTimer = false
SetTarget(NPC,nil)
end

function respawn(NPC)
	spawn(NPC)
end

function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
    AttackTimer = true
elseif choice ==2 then
end
end

function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
    AttackTimer = false
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 89.77, -4.57, 96.68, 1, 10)
	MovementLoopAddLocation(NPC, 87.3, -4.57, 100.58, 1, 0)
	MovementLoopAddLocation(NPC, 84.12, -4.57, 99.11, 1, 0)
	MovementLoopAddLocation(NPC, 80.06, -4.57, 94.6, 1, 0)
	MovementLoopAddLocation(NPC, 76.63, -3.97, 87.12, 1, 0)
	MovementLoopAddLocation(NPC, 71.63, -0.7, 79.47, 1, 0)
	MovementLoopAddLocation(NPC, 71.43, 0.82, 73.9, 1, 0)
	MovementLoopAddLocation(NPC, 69.25, 1.76, 70.83, 1, 0)
	MovementLoopAddLocation(NPC, 64.34, 2.79, 69.93, 1, 0)
	MovementLoopAddLocation(NPC, 55.05, 3, 68.57, 1, 0)
	MovementLoopAddLocation(NPC, 46.3, 3, 73.43, 1, 0)
	MovementLoopAddLocation(NPC, 39.4, 3, 79.12, 1, 10)
	MovementLoopAddLocation(NPC, 39.62, 3, 78.25, 1, 0)
	MovementLoopAddLocation(NPC, 40.67, 3, 78.6, 1, 0)
	MovementLoopAddLocation(NPC, 45.23, 3, 81.01, 1, 0)
	MovementLoopAddLocation(NPC, 48.78, 3, 90.17, 1, 0)
	MovementLoopAddLocation(NPC, 52.21, 3, 97.46, 1, 0)
	MovementLoopAddLocation(NPC, 52.94, 3, 100.06, 1, 0)
	MovementLoopAddLocation(NPC, 45.58, 3, 106.06, 1, 0)
	MovementLoopAddLocation(NPC, 34.06, 3, 109.56, 1, 0)
	MovementLoopAddLocation(NPC, 27.19, 3, 98.39, 1, 0)
	MovementLoopAddLocation(NPC, 22.51, 3, 88.38, 1, 0)
	MovementLoopAddLocation(NPC, 22.58, 3, 85.36, 1, 0)
	MovementLoopAddLocation(NPC, 28.79, 3, 79.44, 1, 0)
	MovementLoopAddLocation(NPC, 24.23, 3, 74.6, 1, 0)
	MovementLoopAddLocation(NPC, 3.07, 3, 67.34, 1, 0)
	MovementLoopAddLocation(NPC, -2.13, 3, 62.05, 1, 0)
	MovementLoopAddLocation(NPC, -6.39, 3, 55.57, 1, 10)
	MovementLoopAddLocation(NPC, -1.46, 3, 60.62, 1, 0)
	MovementLoopAddLocation(NPC, 2.71, 3, 68.49, 1, 0)
	MovementLoopAddLocation(NPC, 1.4, 3, 72.9, 1, 0)
	MovementLoopAddLocation(NPC, -13.52, 3, 79.71, 1, 0)
	MovementLoopAddLocation(NPC, -17.93, 3, 81.95, 1, 10)
	MovementLoopAddLocation(NPC, -20.3, 3, 83.25, 1, 0)
	MovementLoopAddLocation(NPC, -20.63, 3, 82.64, 1, 0)
	MovementLoopAddLocation(NPC, -20.07, 3, 81.42, 1, 0)
	MovementLoopAddLocation(NPC, -9.95, 3, 80.6, 1, 0)
	MovementLoopAddLocation(NPC, -5.36, 3, 88.08, 1, 0)
	MovementLoopAddLocation(NPC, 10.34, 3, 83.84, 1, 0)
	MovementLoopAddLocation(NPC, 35.83, 3, 75.19, 1, 0)
	MovementLoopAddLocation(NPC, 43.81, 3, 72.25, 1, 0)
	MovementLoopAddLocation(NPC, 53.42, 3, 67.52, 1, 0)
	MovementLoopAddLocation(NPC, 65, 2.74, 68.47, 1, 0)
	MovementLoopAddLocation(NPC, 72.36, 0.83, 73.05, 1, 0)
	MovementLoopAddLocation(NPC, 72.4, -0.63, 78.62, 1, 0)
	MovementLoopAddLocation(NPC, 75.75, -2.78, 83.79, 1, 0)
	MovementLoopAddLocation(NPC, 82.04, -4.57, 91.56, 1, 0)
	MovementLoopAddLocation(NPC, 86.52, -4.57, 98.96, 1, 0)
	MovementLoopAddLocation(NPC, 95.74, -4.57, 105.36, 1, 0)
	MovementLoopAddLocation(NPC, 105.53, -4.57, 107.28, 1, 0)
	MovementLoopAddLocation(NPC, 107.37, -4.57, 108.58, 1, 10)
	MovementLoopAddLocation(NPC, 92.92, -4.57, 100.77, 1, 0)
end


