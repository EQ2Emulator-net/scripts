--[[
    Script Name    : SpawnScripts/IsleRefuge1/aTitanbeetle.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 09:09:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", 4 + dmgMod) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", 10 + dmgMod)
    SetInfoStructUInt(NPC, "hp_regen_override", 1) 
    SetInfoStructSInt(NPC, "hp_regen", 0) 
    SetInfoStructUInt(NPC, "pw_regen_override", 1) 
    SetInfoStructSInt(NPC, "pw_regen", 0) 
    ChooseMovement(NPC)
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X + 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 6, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 6, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 6, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 6, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(10,20), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 6, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 6, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 6, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 6, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end