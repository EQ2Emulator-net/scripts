--[[
	Script Name	: SpawnScripts/Castleview/Fevalin.lua
	Script Purpose	: Fevalin <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Rats = 5464
local Bats = 5463


function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, Rats)
ProvidesQuest(NPC, Bats)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
        choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "", "Step up. Don't be shy. I know an adventurer like you needs something. A lantern. Boots! Perhaps a sword, friend.", "beckon", 0, 0, Spawn)
    	elseif choice ==2 then
	    PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)        
	    else
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        
        end
    end
end




function hailed(NPC, Spawn)

            FaceTarget(NPC, Spawn)
                conversation = CreateConversation()   
                PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", "", "hello", 0, 0, Spawn)
            if not HasQuest(Spawn, Rats) then       
                AddConversationOption(conversation, "Have any jobs I can do?", "RatsStart")
            end
            if not HasQuest(Spawn, Bats) and GetLevel(Spawn)>=7 then       
                AddConversationOption(conversation, "You and Kruuprum have a decent selection! Need any help?", "BatsStart")
            end
	           AddConversationOption(conversation, "I'm just browsing. Thank you.")
               
	           StartConversation(conversation, NPC, Spawn, "Step up. Don't be shy. I know an adventurer like you needs something. A lantern. Boots! Perhaps a sword, friend.")
	        if GetQuestStep(Spawn, Rats)==2 then
	           AddConversationOption(conversation, "Here are some bugs for you to munch on.", "RatsDone")
	        end
	        if GetQuestStep(Spawn, Bats)==2 then
	           AddConversationOption(conversation, "Here are your five albino pelts.", "BatsStep2")
	        end
	        if GetQuestStep(Spawn, Bats)==4 then
	           AddConversationOption(conversation, "Here are five MORE albino pelts.", "BatsDone")
	        end
        end



 function BatsStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "You mean... albino fur?", "BatsBegin")
    AddConversationOption(conversation, "Well, that's too bad. I must be going.")
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Yes. Between the two of us, we stock everything a budding adventurer like you desires. Although unfortunately I've had no luck getting some quality bleached fur. ")
end   

 function BatsBegin(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll look for some albino furs for you.", "QuestStart2")
    AddConversationOption(conversation, "I don't do caves. Sorry")
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Yes! That's precisely what I mean. You see, only one animal exists with fur fine enough for my needs. At least, a white animal. The albino bats in the caves near Baubbleshire have the softest coats I've laid my hands on. Now how about you run and fetch me some fur from these silky creatures? ")
end   

 function BatsStep2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I was headed back that way anyway. I'll return soon.", "BatsUpdate")
    AddConversationOption(conversation, "MORE? Oh, fine. I will be back soon.", "BatsUpdate")
    PlayFlavor(NPC, "","","ponder",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Oh... You know, I'm really sorry about this, but I'm going to have you go ahead and get me some more. That would be great. Now go along and get them. I'll go ahead and hold the ones you just brought me. I wouldn't want them to get dirty while trapsing through those dirty caverns!")
end   

 function BatsDone(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm sorry they weren't to your liking. Thanks anyway.", "BatsFinish")
    AddConversationOption(conversation, "...Fine. Give me the coin and we're done.", "BatsFinish")
    PlayFlavor(NPC, "","","Thank",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Grand! These will do nicely. Although they are a little dirty. I'm afraid I must knock a bit off your reward. Here is some silver for your efforts.")
end   

 function RatsStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will go collect mystrat tails for you.", "RatsStart2")
    AddConversationOption(conversation, "I don't have time to kill rodents.")
    PlayFlavor(NPC, "","","ponder",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "You arrive at a good time, my friend. I could use a helping hand. I need a large quantity of mystail rat tails, but I cannot leave my wares alone at this stand. Will you collect the tails?")
end   

 function RatsStart2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm off to Oakmyst Forest!", "QuestBegin1")
    AddConversationOption(conversation, "On second thought, nevermind.")
    PlayFlavor(NPC, "","","agree",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Thanks for pitching in. Every bundle of tails helps! You'll' find the mystail rats in Oakmyst Forest. Happy hunting!")
end   

 function RatsDone(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.", "RewardRats")
    PlayFlavor(NPC, "","","thank",0,0,Spawn)
    StartConversation(conversation, NPC, Spawn, "Good work! I knew I could count on you. Take this small reward for your services.")
end   


function QuestBegin1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Rats)
end

function QuestStart2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bats)
end

function RewardRats(NPC, Spawn)
    SetStepComplete(Spawn, Rats, 2)
end

function BatsUpdate(NPC, Spawn)
    SetStepComplete(Spawn, Bats, 2)
end

function BatsFinish(NPC, Spawn)
    SetStepComplete(Spawn, Bats, 4)
end