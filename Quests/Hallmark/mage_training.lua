--[[
    Script Name    : Quests/Hallmark/mage_training.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.29 03:09:21
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
--[[
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect some usable sewer slime.", 5, 100, "The Arcanist has directed me to the Thieves Way sewers below Freeport to collect five usable Slimes. The best way to approach this will be to harness the primal arcane energies to destroy them.", 343, 1)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I have collected some usable sewer slime.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected five usable Slimes using everything in my arsenal and have gathered samples of what would be considered their flesh.")

	AddQuestStepChat(Quest, 2, "I need to speak with the Arcanist", 1, "I should bring these samples to the Arcanist as she asked so that I may complete this lesson.", 11, 1)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with the Arcanist")
	UpdateQuestTaskGroupDescription(Quest, 2, "The Arcanist has taught me the lesson that knowledge comes before everything else.")

	AddQuestStepChat(Quest, 3, "I need to speak with Aulus Crispian and have the price of ink lowered.", 1, "The Arcanist has instructed me to speak with Aulus Crispian and have the price of ink lowered for her. I should approach this in the manner an Enchanter would.", 11, 1)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Aulus Crispian.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have lowered the price of ink by playing on Aulus Crispian's greed. Beguiling a person as an Enchanter doesn't seem to be too hard. With spells at my command, it would be even easier.")

	AddQuestStepChat(Quest, 4, "I need to speak with the Arcanist", 1, "I should inform the Arcanist that I have completed my lesson.", 11, 1)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Arcanist Sonius")
	UpdateQuestTaskGroupDescription(Quest, 4, "Arcanist Sonius was rather pleased by the deal I worked out. She has agreed to teach me more concerning the arcane arts.")

	AddQuestStepChat(Quest, 5, "I need to speak with Molg, the ogress who sells her wares on the streets of Big Bend.", 1, "I need to speak with some people in the Districts regarding an incident involving a rogue summoning. The Arcanist has given me a list of who saw the event.", 11, 1)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Molg claimed to have been draped in a sheet of leather.")

	AddQuestStepChat(Quest, 6, "I need to speak with Reana Astia, a lonely merchant in Beggar's Court.", 1, "I need to speak with some people in the Districts regarding an incident involving a rogue summoning. The Arcanist has given me a list of who saw the event.", 11, 1)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Reana claims to have been stuck with a spear.")

	AddQuestStepChat(Quest, 7, "I need to speak with Skal Vethiz, a person caught up in nostalgia in Scale Yard.", 1, "I need to speak with some people in the Districts regarding an incident involving a rogue summoning. The Arcanist has given me a list of who saw the event.", 11, 1)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "Skal claims to have been attacked by a snake.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have collected the information on what was summoned. It looks like three different things were summoned into existence.")

	AddQuestStepChat(Quest, 8, "I need to speak with the Arcanist.", 1, "I should let the Arcanist know what I have learned.", 11, 1)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have spoken with the Arcanist.")
	UpdateQuestTaskGroupDescription(Quest, 6, "With the help of the Arcanist, I was able to see that the Summoner brought forth an elephant.")

	UpdateQuestDescription(Quest, "I have graduated from Arcanist Sonius's courses and chose which dedicated study I will pursue. Though I have seen what a Sorcerer, Enchanter, and Summoner studies... I know which one I will devote myself to.  Grasping the mysteries of arcane knowledge will be a daunting task, but the reward of power will drive me to learn as much as I can. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

--]]