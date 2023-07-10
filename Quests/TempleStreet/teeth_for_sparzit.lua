--[[
    Script Name    : Quests/TempleStreet/teeth_for_sparzit.lua
    Script Author  : Dorbin
    Script Date    : 2023.07.08 06:07:27
    Script Purpose : 

        Zone       : TempleStreet
        Quest Giver: Sparzit Cogsnibble
        Preceded by: None
        Followed by: Improving Design
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some snakes in the Sprawl until I find a pair of Perfect Snake Fangs.", 1, 33, "I need to kill snakes until I find a perfect set of fangs.", 102, 1260018)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest"Sprawl")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found some fangs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected a pair of fangs from the snakes.")
    UpdateQuestZone(Quest"Temple Street")
	AddQuestStepChat(Quest, 2, "I need to speak with Sparzit in Temple Street.", 1, "This is the amount that Sparzit asked for, so I should return them to him.  He is in Temple Street in Freeport, standing near the makeshift bar in the downstairs plaza.", 102, 1260018)
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
	UpdateQuestStepDescription(Quest, 2, "I've given Sparzit some fangs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Sparzit snakes with his snake fangs.")

	UpdateQuestDescription(Quest, "Sparzit was rather happy with the fangs I brought him. He gave me some coin for gathering the teeth for him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
