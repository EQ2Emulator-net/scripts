--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/asunshimmerspriteDif7.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 05:10:13
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/CatalogueQuestUpdates.lua")

function spawn(NPC)

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
    MovementLoopAddLocation(NPC, X, Y+2, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y+2, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 4, Y+2, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y+2, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(10,20))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 4, Y+2, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y+2, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y+2, Z, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X - 4, Y+2, Z + 4, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(10,20))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Catalogue Creature" then
		if HasQuest(Spawn, Catalogue) and GetQuestStepProgress(Spawn,Catalogue,2) == 0 then
			SetStepComplete(Spawn, Catalogue, 2)
			        local con = CreateConversation()
        AddConversationOption(con, "Close the entry.")
        StartDialogConversation(con, 1, NPC, Spawn, "Sunshimmer Sprite\n\n \"Sprites are a newer addition to the Oakmyst since The Cataclysm. Supposedly hailing from more enchanted waters, they were swept in from the torrential winds. It is hard to say what terms they have made with the resident fairies. Unlike the fairies here in Oakmyst, sprites are known to be true to their word.\"\n\n-Tracker Kelnis")        end
end
end