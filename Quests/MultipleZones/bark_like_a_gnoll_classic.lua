--[[
    Script Name    : Quests/MultipleZones/bark_like_a_gnoll_classic.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.29 01:05:00
	Script Notes	:	CLASSIC Version of quest.  Gives Studied version of item that actually counts for update.

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt gnolls of Norrath for threat totems to study.", 5, 100, "I must collect and study more Chirannite Threat Totems from the gnolls of Norrath to learn the Gnollish language.", 860, 13525)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 4963) then
			RemoveItem(Player, 4963,1)
		end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have a studied a Chirannite Threat Totem.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Gnollish, language of the gnoll race.")

if not HasLanguage(Player,18) then
	AddLanguage(Player, 18)
	SendMessage(Player, "You have learned the basics of the Gnollish language.", "White")
end
	UpdateQuestDescription(Quest, "I have studied a great amount of gnoll runes written in both Norrathian and Gnollish. I now understand the language of the gnolls.")
	GiveQuestReward(Quest, Player)
        AddLanguage(Player, 18)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

