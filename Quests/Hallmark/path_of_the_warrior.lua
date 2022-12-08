--[[
    Script Name    : Quests/Hallmark/path_of_the_warrior.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 04:12:38
    Script Purpose : WARRIOR CLASS QUEST

        Zone       : Hallmark
        Quest Giver: Master at Arms Dagorel
        Preceded by: Fighter Training pt II
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must defeat the bears in the arena.", 2, 100, "I must defeat the challenge set before me in the make-shift arena set up in the warehouse of northern Qeynos.", 11,0)
	AddQuestStepKill(Quest, 2, "I must defeat the lions in the arena.", 3, 100, "I must defeat the challenge set before me in the make-shift arena set up in the warehouse of northern Qeynos.", 11, 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've defeated the bears in the arena.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've defeated the lions in the arena.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5791,1) and QuestStepIsComplete(Player,5791,2) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've defeated all the creatures in the arena in front of the cheering onlookers.")

	AddQuestStep(Quest, 3, "I've defeated the arena creatures, and must declare myself victor on the dais.", 1, 100, "I must stand on the dais and declare my victory!", 957)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I declared myself victorious.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've declared my victory.")

	UpdateQuestDescription(Quest, "I managed to defeat the creatures brought before me in the arena that was set up, and have proved myself worthy of being a warrior. Forever shall I wear this as a badge of courage and honor.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end