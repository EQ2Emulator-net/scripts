--[[
    Script Name    : SpawnScripts/CrowsTomb/FippyDarkpawthe4th.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.04 06:10:59
    Script Purpose : 
                   : 
--]]

local TheMotleyMerchantManifest = 5368

function spawn(NPC)
ProvidesQuest(NPC, TheMotleyMerchantManifest)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw000.mp3", "", "", 266182336, 423238250, Spawn)
	AddConversationOption(conversation, "I refuse to speak to gnolls!")
	if not HasQuest(Spawn, TheMotleyMerchantManifest) and not HasCompletedQuest(Spawn, TheMotleyMerchantManifest) then
	AddConversationOption(conversation, "You're a gnoll! ", "Option1")
	end
    StartConversation(conversation, NPC, Spawn, "What took you so long? You nearly lost me some coin.")
end




function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw001.mp3", "", "", 1658104426, 2860881286, Spawn)
    AddConversationOption(conversation, "Was my appearance the basis of a bit of gambling?", "Option2")
    AddConversationOption(conversation, "I have had enough. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Dear me ... you're right! Did you hear that Rollus ... I'm a gnoll! Call the guard at once! Please! You allow frogs and felines to wander about without a second glance, and you get all jumpy at the sight of me?")
end

function Option2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw002.mp3", "", "", 3510062047, 2917440094, Spawn)
	AddConversationOption(conversation, "No more of your games. Farewell.")
    AddConversationOption(conversation, "What? You were watching me?", "Option3")
	StartConversation(conversation, NPC, Spawn, "You just won me heavy coin. I knew you would find us, especially after seeing you tear through those Bloodsabers in the Down Below.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw003.mp3", "", "", 3818912516, 1083791413, Spawn)
	AddConversationOption(conversation, "I am not your amusement. Farewell.")
	AddConversationOption(conversation, "I found my own way here.", "Option4")
    StartConversation(conversation, NPC, Spawn, "Of course I was watching, watching from the dark. You're lucky I saw good coin in you, or you never would've made it here.")
end 


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw004.mp3", "", "", 2031659896, 3886377422, Spawn)
		AddConversationOption(conversation, "Our talk is over. Farewell.")
			AddConversationOption(conversation, "Where am I?", "Option5")
    StartConversation(conversation, NPC, Spawn, "No. I spread the crumbs out for you to follow. The only thing you can lay claim to is disposing of my lackeys, worthless as they were.")
end 

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw005.mp3", "", "", 4269286558, 2875212435, Spawn )
	AddConversationOption(conversation, "I do not need your trust. Farewell.")
	AddConversationOption(conversation, "Is there any way to get some answers around here.", "offer")
	StartConversation(conversation, NPC, Spawn, "Please! Don't make me laugh. You may have earned my respect, but you haven't earned my trust. ")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheMotleyMerchantManifest)
end


function respawn(NPC)
	spawn(NPC)
end