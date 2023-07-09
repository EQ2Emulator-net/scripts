--[[
    Script Name    : Quests/TempleStreet/teeth_for_sparzit.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.08 06:07:27
    Script Purpose : 

        Zone       : TempleStreet
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some snakes in the Sprawl until I find a pair of Perfect Snake Fangs.", 1, 33, "I need to kill snakes until I find a perfect set of fangs.", 102, 1260018)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've found some fangs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected a pair of fangs from the snakes.")

	UpdateQuestDescription(Quest, "Sparzit was rather happy with the fangs I brought him. He gave me some coin for gathering the teeth for him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
