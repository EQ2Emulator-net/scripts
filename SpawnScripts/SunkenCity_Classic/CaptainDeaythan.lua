--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/CaptainDeaythan.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.17 03:10:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(12 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(24 + dmgMod))

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end