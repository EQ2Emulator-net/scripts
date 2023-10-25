--[[
    Script Name    : SpawnScripts/TempleSt/Pockets.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.24 08:10:54
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
AddTimer(NPC,MakeRandomInt(3000,6000),"ChefCheck")
end

function ChefCheck(NPC,Spawn)
    if IsAlive(NPC) then
        AddTimer(NPC,MakeRandomInt(4000,7000),"ChefCheck")

        if not IsInCombat(NPC) then
        local zone = GetZone(NPC)
        local Chef = GetSpawnByLocationID(zone,420550)
        local Distance = GetDistance(NPC,Chef,1)
        if Distance <=4 then
            Attack(Chef,NPC)
            Attack(NPC,Chef)
            local x = GetX(Chef)
            local y = GetY(Chef)
            local z = GetZ(Chef)
            SetFollowTarget(Chef,NPC)
            SetFollowTarget(NPC,Chef)
            ToggleFollow(Chef)
            ToggleFollow(NPC)
            SetTarget(Chef,NPC)
            FaceTarget(Chef,NPC)
            FaceTarget(NPC,Chef)
            PlayFlavor(NPC,"","","attack",0,0)
            AddTimer(NPC,MakeRandomInt(2500,4500),"kill",1,Spawn)
      end
    end
end
end

function kill (NPC,Spawn)
    local zone = GetZone(NPC)
    local Chef = GetSpawnByLocationID(zone,420550)
    PlayFlavor(Chef,"","","1h_sword_attack",0,0)
    KillSpawn(NPC)
    AddTimer(Chef,2500,"scoop")
    AddTimer(NPC,3000,"Despawning")
end

function Despawning(NPC,Spawn)
    Despawn(NPC)
end

function scoop(NPC,Spawn)
    local zone = GetZone(NPC)
    local Chef = GetSpawnByLocationID(zone,420550)
    PlayFlavor(Chef,"","","gathering_success",0,0)
    Despawn(NPC)
end



function respawn(NPC)
	spawn(NPC)
end