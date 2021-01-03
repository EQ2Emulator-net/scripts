--[[
    Script Name    : SpawnScripts/Commonlands/BrandusLevine.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.13 07:11:27
    Script Purpose : 
                   : 
--]]


local TheMysteriousMissingShipment = 421
local StartingtheNegotiations = 424

function spawn(NPC)
ProvidesQuest(NPC, TheMysteriousMissingShipment)
ProvidesQuest(NPC, StartingtheNegotiations)
end




function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, TheMysteriousMissingShipment) and not HasCompletedQuest(Spawn, TheMysteriousMissingShipment) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "ponder", 0, 0, Spawn)
    AddConversationOption(conversation, "Another person who needs help?  Fine, what do you need?", "dlg1")
    AddConversationOption(conversation, "I'll help you only if it pays well.", "dlg3")
    AddConversationOption(conversation, "I would be happy to help you.", "dlg2")
    AddConversationOption(conversation, "You have to be kidding me.  No thanks, find another lackey, I'm busy with my own important things.")
    StartConversation(conversation, NPC, Spawn, "Hrmmm... You do have the look of a citizen about you.  You're not just random rabble from the streets.  I could use your help.")
    elseif HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 1 or GetQuestStep(Spawn, StartingtheNegotiations) <= 8 and HasQuest(Spawn, StartingtheNegotiations)  then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "no", 0, 0, Spawn)
    AddConversationOption(conversation, "I'll be back when I'm done.")
    StartConversation(conversation, NPC, Spawn, "Look, I don't have time to sit around and talk about the weather.  We have an agreement and I expect you to live up to it.  Now don't come back unless you're done with what I asked.")
    elseif HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 3 then 
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Nethet had me running all over the place helping friends of his.", "dlg8")
    AddConversationOption(conversation, "Nethet had some information.  The dervish cutthroats stole your shipment and apparently have your sorcerer.", "dlg9")
    AddConversationOption(conversation, "I don't have any new information yet.")
    StartConversation(conversation, NPC, Spawn, "What did Nethet tell you?  That rat had better have known something or I'm back where I started.  That will not make me a happy man.")
    elseif HasCompletedQuest(Spawn, TheMysteriousMissingShipment) and not HasQuest(Spawn, StartingtheNegotiations) and not HasCompletedQuest(Spawn, StartingtheNegotiations)  then
    dlg9(NPC, Spawn)
    elseif GetQuestStep(Spawn, StartingtheNegotiations) == 9 then
    PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine020.mp3", "", "", 2488060767, 2522972725, Spawn)
    AddConversationOption(conversation, "You asked for a few dozen.  That is what I delivered.", "dlg14")
    AddConversationOption(conversation, "Not enough, there were still some left.", "dlg14")
    AddConversationOption(conversation, "I just want to get this over with and get what is due to me.", "dlg14")
    StartConversation(conversation, NPC, Spawn, "That was faster than I expected, you're quite the dangerous one aren't you?  Well done, I applaud you and your efforts in our partnership here.  Keep it up and we might get very rich together.  Tell me, how many did you get rid of before coming back?")
    elseif HasCompletedQuest(Spawn, TheMysteriousMissingShipment) and HasCompletedQuest(Spawn, StartingtheNegotiations) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Yes, I'm ready to continue.")
    AddConversationOption(conversation, "Not right now, I'll return later.")
    StartConversation(conversation, NPC, Spawn, "Shall we continue our business venture, partner?")
   end    
end
   

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine002.mp3", "", "ponder", 262730364, 1884373532, Spawn)
 AddConversationOption(conversation, "Get to the point already.", "dlg5")
 AddConversationOption(conversation, "I'm assuming that's a threat, I'll pretend I didn't hear it.  What did you have in mind?", "dlg5")
 AddConversationOption(conversation, "Obscurity is my middle name.  How about I just obscure myself out of this conversation.")
 StartConversation(conversation, NPC, Spawn, "You do realize I can find someone else.  And maybe you'll just fade into obscurity.  But, since you've at least shown some interest then perhaps I can use you.")
end


function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine004.mp3", "", "", 305934204, 2024549973, Spawn)
AddConversationOption(conversation, "So, what is it you needed such dire help on?", "dlg5")
AddConversationOption(conversation, "Citizen?  Do you even know who I am?  I have no time for such arrogance.")
StartConversation(conversation, NPC, Spawn, "Good, good, I like to see such eagerness in a citizen of Freeport.")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
AddConversationOption(conversation, "And how would you expect me to find it if I have no idea what it is?", "dlg7")
AddConversationOption(conversation, "On second thought, if you're not going to tell me what I need to know I think I'll just leave.")
StartConversation(conversation, NPC, Spawn, "That little bit of information you don't need to know.  All I'm asking for is that you find my missing cargo.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine003.mp3", "", "", 324578518, 1128092434, Spawn) 
AddConversationOption(conversation, "Reward. I like the sound of that.  What did you have in mind?", "dlg5")
AddConversationOption(conversation, "You don't look like you could afford my standard fee.  I think I'll go look for adventure elsewhere.")
StartConversation(conversation, NPC, Spawn, "Oh, it pays well, very well indeed.  I don't ask simple things but I reward loyal service.")
end

function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine005.mp3", "", "", 3809469840, 3688681939, Spawn)
AddConversationOption(conversation, "What was in this shipment of yours that's so important?", "dlg4")
AddConversationOption(conversation, "I think I can do that, where should I start looking?", "dlg7")
AddConversationOption(conversation, "I thought this would be interesting.  Forget it, this sounds like another waste of my precious time.")
StartConversation(conversation, NPC, Spawn, "I've been waiting on a very special shipment to arrive.  It was due here three days ago and there has been no sign of the individuals who were supposed to bring it.  I've had to send the boat to the Freeport docks and every day it sits there it's costing me money.  I need you to find out what happened to my shipment or why they are so late.")
end


function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine007.mp3", "", "", 3066832295, 2286961802, Spawn)
AddConversationOption(conversation, "I'll start with him then.", "offer1")
StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end

function dlg8(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thanks for the sympathy.  Yes, he had information that the dervish cutthroats stole your shipment and your sorcerer.", "dlg9")
  AddConversationOption(conversation, "With that tone of voice, find the shipment yourself, I'm through with this.")
  StartConversation(conversation, NPC, Spawn, "Don't tell me your whining stories about what other people had you do.  He could have made you shovel pig dung for all I care, did you get the information or not?")
end





function dlg9(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  SetStepComplete(Spawn, TheMysteriousMissingShipment, 3) 
  conversation = CreateConversation()
  AddConversationOption(conversation, "My pleasure, you'll hear their screams from here.", "dlg10")
  AddConversationOption(conversation, "Now you want me to kill people for you?  What's in it for me?", "dlg11")
  AddConversationOption(conversation, "I know you're selling refugees back to the Far Seas Trading Company.", "dlg12")
  AddConversationOption(conversation, "I'm not killing anyone, do it yourself I'm done with you.")
  StartConversation(conversation, NPC, Spawn, "The dervishes stole it!?  You can't be serious.  Argh!!  I'm tired of those lowlifes messing with my business.  I need you to do me a favor and kill a few dozen of them.")
end 

function dlg10(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine015.mp3", "", "", 1439836789, 4202652757, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Alright. I'll be back when I'm done.", "offer2")
  AddConversationOption(conversation, "Not right now.")
  StartConversation(conversation, NPC, Spawn, "That's exactly what I wanted to hear.  Once you've thinned out the number of the dervishes for me I have a feeling they might be willing to negotiate a deal afterwards.  I want them to learn a lesson in fouling my business.  You can find one of the larger encampments on the far Western end of the Commonlands.")
end


function dlg11(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "When you put it that way how can I refuse?", "dlg10")
  AddConversationOption(conversation, "Forget it, I'm not interested.")
  StartConversation(conversation, NPC, Spawn, "Oh, you'll be rewarded for this I assure you.  I want the dervishes to pay and I'm willing to let you in on some of my profits if you help me out with this.")
end


function dlg12(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine018.mp3", "", "", 4047037445, 2150242862, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "How about a few extra coins in my pocket?", "dlg13")
  AddConversationOption(conversation, "Nothing, I just found it interesting and fairly clever.  I want in on the profits though.")
  StartConversation(conversation, NPC, Spawn, "How did.... Nethet ... curse that rat, he finds out way more than he should.  Alright, what do you want to keep quiet about it?")
end
 
function dlg13(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine019.mp3", "", "", 2588958758, 3569990697, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thank you Brandus, I knew you'd see things my way.")
  AddConversationOption(conversation, "That's more like it.  I'll be back soon.")
  StartConversation(conversation, NPC, Spawn, "I can do that if it'll keep you quiet.  I don't have any coin on me here though, bad idea walking around with a lot of money on the docks you understand.  Go to the Crossroads, I have a business partner named Anders Blackhammer who can give you the profits from our last venture.  Tell him that I sent you.")
end

function dlg14(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, StartingtheNegotiations, 9)
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine021.mp3", "", "", 2051967454, 3084787135, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Thanks, I'll be back soon to continue our ''negotiations'' with the dervishes.")
StartConversation(conversation, NPC, Spawn, "I understand what you mean perfectly.  Here is the first of your profits, if you keep doing such excellent work there is a lot more where this came from.")
end

-- QUEST OFFER FUNCTIONS

function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, StartingtheNegotiations)
end


function offer1(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, TheMysteriousMissingShipment)
end

function respawn(NPC)
         spawn(NPC)
end
