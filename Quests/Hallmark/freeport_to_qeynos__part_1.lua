--[[
    Script Name    : Quests/Hallmark/freeport_to_qeynos__part_1.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.25 07:09:12
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to give Kenjedeau the secret code", 1, "I need to seek out Kenjedeau and tell him &quot;nobility comes from personal sacrifice&quot;.  I've been told he's hiding somewhere within the Serpent Sewers below Freeport.", 11, 1550077)
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
	UpdateQuestStepDescription(Quest, 1, "I've given Kenjedeau the secret code")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found Kenjedeau masquerading as a watchman of some sorts down in the sewers.")

	UpdateQuestDescription(Quest, "I have found and spoken to the head of the Qeynos resistance here in Freeport")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
