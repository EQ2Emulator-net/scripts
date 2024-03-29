--[[
	Script Name		:	SpawnScripts/Antonica/gnollboat.lua
	Script Purpose	:	Support for quest Suspicious Activity from Tyllia Navar
	Script Author	:	Emagi
	Script Date		:	5/14/2020
	Script Notes	:	
--]]

local QUEST_ID = 3000

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "inspect" then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "...")
	StartDialogConversation(conversation, 1, NPC, Spawn, "The boat is empty. Its hull is wet suggesting recent use. There are scratches and claw marks over the entirety of the boat. It has not been properly taken care of, but it looks like it would still float.")
	if HasQuest(Spawn, QUEST_ID) and  not QuestStepIsComplete(Spawn, QUEST_ID, 3)  then
	SetStepComplete(Spawn, QUEST_ID, 3)
	end
	end
end


