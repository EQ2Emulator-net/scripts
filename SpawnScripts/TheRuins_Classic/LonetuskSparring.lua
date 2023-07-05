--[[
    Script Name    : SpawnScripts/TheRuins_Classic/LonetuskSparring.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.04 08:07:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
    --SetInfoStructString(NPC, "action_state", "pugilist_idle")
    AddTimer(NPC, MakeRandomInt(2500,4000), "AttackAnim")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC, "visual_state", 0)
end

function AttackAnim(NPC,Spawn)
   if IsInCombat(NPC) == false then
    PlayAnimation(NPC, 65)
    end
    AddTimer(NPC, MakeRandomInt(2500,4000), "AttackAnim")
 end