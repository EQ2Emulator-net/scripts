--[[
    Script Name    : SpawnScripts/WailingCaves/LordRee.lua
    Script Author  : premierio015
    Script Date    : 2020.06.30 09:06:01
    Script Purpose : 
                   : 
--]]



blackguard3 = 133769612
blackguard4 = 133769613
blackguard1 = 404841
blackguard2 = 404844

function spawn(NPC)
SetTempVariable(NPC, "HAILED1", "true")  
end

function hailed(NPC, Spawn)
    if GetTempVariable(NPC, "HAILED1")  == "true" then
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "lord_ree/wailingcaves/lord_ree/lord_ree000.mp3", "", "", 376398214, 2276802800, Spawn)
    AddConversationOption(conversation, "Your threats don't scare me!", "Phase1")
    AddConversationOption(conversation, "Yeah, good idea.")
    StartConversation(conversation, NPC, Spawn, "You are puny and weak!  Leave now or feel my wrath!")
  
end
   end


function respawn(NPC)
         spawn(NPC)
end

function Phase1(NPC, Spawn)
SetTempVariable(NPC, "HAILED1", "false")
PlayFlavor(NPC, "", "Ha ha ha!  Blackguards, take care of this rodent!", "cackle", 1689589577, 4560189, Spawn)
zone = GetZone(Spawn)
BlackGuardSpawn3 = SpawnByLocationID(zone, blackguard1)
BlackGuardSpawn3 = SpawnByLocationID(zone, blackguard2)
BlackGuardSpawn3 = SpawnByLocationID(zone, blackguard3)
BlackGuardSpawn4 = SpawnByLocationID(zone, blackguard4)
end

function FinalPhase(NPC, Spawn)
local zone = GetZone(NPC)
local Concubine1 = GetSpawnByLocationID(zone, 404836)
local Concubine2 = GetSpawnByLocationID(zone, 133769549)
local Concubine3 = GetSpawnByLocationID(zone, 133769550)
local Concubine4 = GetSpawnByLocationID(zone, 133769551)
if Concubine1 ~= nil then
SpawnSet(Concubine1, "model_type", "2901")
SpawnSet(Concubine1, "attackable", "1")
SpawnSet(Concubine1, "show_level", "1")
SpawnSet(Concubine1, "faction", "1")
SpawnSet(Concubine2, "model_type", "2901")
SpawnSet(Concubine2, "attackable", "1")
SpawnSet(Concubine2, "show_level", "1")
SpawnSet(Concubine2, "faction", "1")
SpawnSet(Concubine3, "model_type", "2901")
SpawnSet(Concubine3, "attackable", "1")
SpawnSet(Concubine3, "show_level", "1")
SpawnSet(Concubine3, "faction", "1")
SpawnSet(Concubine4, "model_type", "2901")
SpawnSet(Concubine4, "attackable", "1")
SpawnSet(Concubine4, "show_level", "1")
SpawnSet(Concubine4, "faction", "1")
SpawnSet(NPC, "attackable", "1")
SpawnSet(NPC, "show_level", "1")
SpawnSet(NPC, "faction", "1")
end
   end
