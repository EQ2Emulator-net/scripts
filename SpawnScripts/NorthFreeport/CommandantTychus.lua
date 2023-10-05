--[[
    Script Name    : SpawnScripts/NorthFreeport/CommandantTychus.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.03 04:10:40
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Quest1 = 5898
local Crusader = 5899
local Brawler = 5900
local Warrior = 5901

function spawn(NPC)
    ProvidesQuest(NPC, Quest1)
    ProvidesQuest(NPC, Crusader)
    ProvidesQuest(NPC, Brawler)
    ProvidesQuest(NPC, Warrior)
end

function hailed(NPC, Spawn)
    local int = MakeRandomInt(1,3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You dare address me in a casual manner, worm! Who do you think you are, you pathetic excuse for a dung beetle's lunch? From now on you will refer to me as \"sir,\" understand?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_"..int.."_1004.mp3", 0, 0)
    if GetClass(Spawn)== 1 and GetLevel(Spawn)>=7 and not HasQuest(Spawn,Quest1) and not HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("Sir, I want to increase my fighting skills, sir!","Dialog1")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==2 then 
    Dialog.AddOption("Sir, the Guttersnipe Crooks are dead, sir!","Dialog2")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==6 then 
    Dialog.AddOption("I've been given tips on brawling... and a little more, too.","Dialog3")	
    end
 
    if HasCompletedQuest(Spawn,Quest1) and not HasQuest(Spawn,Crusader) and not HasQuest(Spawn,Brawler) and not HasQuest(Spawn,Warrior) and GetClass(Spawn)==1 and GetLevel(Spawn) >=9 then
    Dialog.AddOption("I've proven myself. I'm ready for any other test you can give.","Decide")	
    end  
    
    Dialog.AddOption("I was just leaving... Sir!")
    if not HasQuest(Spawn,Quest1) and not HasCompletedQuest(Spawn, Quest1) then
    Dialog.AddOption("No one is telling ME what to do, fool!","Uhoh1")
    end
	Dialog.Start()
end


function Uhoh1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("...")
    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
    Dialog.AddOption("Your puny head probably can't understand what I'm saying anyway!","Uhoh2")	
    Dialog.AddOption("...I'm sorry. I don't know what came over me, Sir.")	
	Dialog.Start()
end

function Uhoh2 (NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    SendPopUpMessage(Spawn,"Commandant Tychus eyes the guards and nods in your direction.",200,200,200)
    SendMessage(Spawn,"Commandant Tychus eyes the guards and nods in your direction.","white")
    AddTimer(NPC,2000,"Uhoh3",1,Spawn)
    local zone = GetZone(NPC)
    local Guard1 = GetSpawnByLocationID(zone,391337)
    local Guard2 = GetSpawnByLocationID(zone,391545)
    if Guard1 == nil then
        SpawnByLocationID(zone,391337)
    end
    if Guard2 == nil then
        SpawnByLocationID(zone,391545)
    end    
end

function Uhoh3 (NPC,Spawn)
    local zone = GetZone(NPC)
    local Guard1 = GetSpawnByLocationID(zone,391337)
    local Guard2 = GetSpawnByLocationID(zone,391545)
    if Guard1 ~= nil then
        Attack(Guard1,Spawn)
    end
    if Guard2 ~= nil then
        Attack(Guard2,Spawn)
    end    
end

function respawn(NPC)
	spawn(NPC)
end


function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Just looking at you I can tell you don't know the first thing about fighting.  Look at those pitiful arms, those knobby knees, and that stupid look on your face.  You're a complete waste of time. Get out of my face!")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("Sir, I didn't ask for your opinion, sir. I was telling you I wanted training. Sir!","Quest1Offer")	
    Dialog.AddOption("I suppose I meant something else. Good luck on those bounties.")	
	Dialog.Start()
end


function Dialog1b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You'll find trash called the Dervishes living there. Find the ones called the Crooks, and slaughter a few of them. If you make it back alive, I might continue your training...")
    Dialog.AddOption("Yes sir!")	
	Dialog.Start()
end


function Quest1Offer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Quest1)
end 


function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oh, really. I'm surprised you didn't run back to your momma the moment you saw the Guttersnipes. But you do look a bit scratched up, so maybe you did kill them. Okay, I'll continue your training. Those Guttersnipes are not only robbing the people, but more importantly, they're violating the laws of Freeport by visiting our fine city's taverns.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("So, the heavier the armor the better? Alright!","Dialog2a")	
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, you're still alive, so I guess my training helped. You taught those Guttersnipe crooks a lesson, but now those goons are getting sympathy from the trash living in the districts. If you want to continue your training, you must sharpen your words as you sharpen your sword.")
    Dialog.AddOption("Understood, sir! Who should I speak with, sir?","Dialog2b")	
	Dialog.Start()
end

function Dialog2b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
    SetStepComplete(Spawn,Quest1,2)  
 	Dialog.AddDialog("That won't stop them from breaking the law, fool! I want you to take care of the problem the way a brawler would. Go visit the tavern owners of the Seafarer's Roost, the Back Alley Brewhouse, and the Jade Tiger. Beat them up and let them know that the Overlord can give as much as he can take.")
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    Dialog.AddOption("Sir, yes, sir!")	
	Dialog.Start()
end


function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, you're still alive, so I guess my training helped. You taught those Guttersnipe crooks a lesson, but now those goons are getting sympathy from the trash living in the districts. If you want to continue your training, you must sharpen your words as you sharpen your sword.")
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Sir, I'll take care of the rest of the Guttersnipes, sir!","Dialog3a")	
	
	Dialog.Start()
end


function Dialog3a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
    SetStepComplete(Spawn,Quest1,6)  
 	Dialog.AddDialog("We'll see about that, whelp. In the districts, a few people have gained respect from the rest of the rubbish living there. I want you to tell these people that if they allow Guttersnipes into the slums the Lucanic Knights will be on them faster than they can blink. Show them a velvet glove, but make them fear your concealed steel gauntlet. Understand?")
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    Dialog.AddOption("Sir, I'll teach them a thing or two, sir!")	
	Dialog.Start()
end


function Dialog3c(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,5)  
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Not bad! You did learn a few things from Luvile, but there is always room for improvement. Perhaps a brawler is a path for you... Even so, you should rest up before we continue looking at other fighting styles. Come back to me after you've taken some time to catch your breath.")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I like the sounds of that. I'll rest for a while.")	
	Dialog.Start()
end

function Dialog3b(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,5)  
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oi, if you're going to take a blow like that you should have thicker armor! You must have taken Hargan's lesson on brawling to heart, Haha!... Even so, you should rest up before we continue looking at other fighting styles. Come back to me after you've taken some time to catch your breath.")
    PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
    Dialog.AddOption("I like the sounds of that. I'll rest for a while.")	
	Dialog.Start()
end

-- QUEST 2 --


function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Aye, it's high time we continue with your studies.  Time is tickin' away, and we're not gettin' any younger.  I showed you how a warrior and a brawler fight, and now I'll show you the way of a crusader.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("What makes someone a crusader?","Dialog4a")	
	Dialog.Start()
end

function Dialog4a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Crusaders fight for a cause.  I've battled beside a few in my years, and they're an impressive bunch. Everything they do has a purpose; you can see it on the battlefield and from the look in their eyes.")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("As in a belief? What would you have me do?","Quest2Start")	
    Dialog.AddOption("Interesting, but let's continue this conversation later.")	
	Dialog.Start()
end


function Quest2Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Quest2)
end 

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("That's good to hear! Our soldiers don't hear enough kind words as it is, but when you can get them to think back on why they decided to protect their city... They certainly start to light up!")
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("Most shared a sense of duty and honor in their work.","Dialog5a")	
    Dialog.AddOption("Some mentioned it as just a job, but they also felt pride in protecting Qeynos.","Dialog5a")	
	Dialog.Start()
end

function Dialog5a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Aye, that sounds about right. Not everything about duty and honor is glamorous, but when you are responsible for that sort of \"passion\" to succeed... Your convicition will provide that power to accomplish the unthinkable.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I see. What must I do to prove myself a protector?","Dialog5b")	
	Dialog.Start()
end

function Dialog5b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ahhh... There is the question! Qeynos is under constant threat- even more so ever since the Sundering when the continents were pulled apart! Are you ready to perform a duty for Qeynos and prove yourself a frontline protector?")
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I am ready. Give me a mission!","Dialog5c")	
	Dialog.Start()
end

function Dialog5c(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Qeynos thrives in this shattered world only through the efforts of its fine citizens.  Those nasty gnolls want us all dead, and it's our duty to protect our city from these fiends.  You must use your fighting skills to protect Qeynos.  Your first mission is to head out to Antonica and take care of the Darkpaws. Start with a pup and come back to me.")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I'll return when I'm victorious.")
    SetStepComplete(Spawn,Quest2,4)
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You didn't refer to me as sir, soldier. Next time, show some respect! Hmmm ... By the solid look in your eyes, I'd say it worked. Now the Guttersnipes won't find it as easy to -- quit looking at me like that, maggot! As I was saying, you learned the skills of a warrior, brawler, and a crusader.  Now it's time to test your knowledge.")
    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
    if GetLevel(Spawn) >=9 then
    Dialog.AddOption("I'm glad to have had the chance to prove myself.","Decide")
    else
    Dialog.AddOption("I hate to admit it, but I need a rest after that. I'll return once I'm ready.")
    end
	Dialog.Start()
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2) ==6 then
    SetStepComplete(Spawn,Quest2,6)
    end
end

--CLASS SELECTION 

function Decide(NPC,Spawn)
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2) ==6 then
    SetStepComplete(Spawn,Quest2,6)
    end
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, then, I showed you three different fighting styles--you know my preferred way of fighting--trusting a good axe and a breastplate. You experienced the raw fighting power of a brawler, and finally, you witnessed the dedication of a crusader. Now it's time to test your knowledge...")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I feel naked without a weapon in my hand.  I believe I'm a warrior.","Warrior1")	
    Dialog.AddOption("Through training, I can make my own body into a weapon.  I'm a brawler.","Brawler1")	
    Dialog.AddOption("My burning conviction is the only weapon I need.  I know I am a crusader.","Crusader1")	
	Dialog.Start()
end

--WARRIOR
function Warrior1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A warrior, are ya? You're sayin' that the best way to fix a problem is with a bit of hammered steel?  Aye, I agree with that!  When you got a slaverin' gnoll runnin' at you, hard bent for leather, well, you'd be a ninny not to draw steel.  So, the life of the warrior is your path in life, is it?")
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("Yes.  I prefer to take care of a problem, rather than let it take care of me.  I am a warrior!","WarriorOffer")
    Dialog.AddOption("On second thought, what were my options again?","Decide")
	Dialog.Start()
end

function WarriorOffer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Warrior)
end

--BRAWLER

function Brawler1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("Yes.  I will train everyday to master the art of pugilism.  I am a brawler.","BrawlerOffer")
    Dialog.AddOption("On second thought, what were my options again?","Decide")
	Dialog.Start()
end

function BrawlerOffer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Brawler)
end

--CRUSADER

function Crusader1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("It's not as easy as that, youngin'.  You don't just declare yourself a crusader, or did you learn nothing from my previous lessons?  No, crusader is a title earned by those with enough heart to consider the fair city of Qeynos and its inhabitants first and themselves a distant second.")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("I like having a commanding presence in battle. I want to be a crusader.","CrusaderOffer")
    Dialog.AddOption("On second thought, what were my options again?","Decide")
	Dialog.Start()
end

function CrusaderOffer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Crusader)
end

--[[
Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?
Warriors run to the front line in battle and care only about slaughtering the enemy and oiling their weapons with their foe's blood.  Warriors know might makes right.  Do you choose this path?
None matches the conviction of a crusader. Crusaders fight for a cause. This cause gives them the strength to crush their opponents beneath their feet. The last thing that people see when they fight a crusader is a cold, dead look -- their own reflection in the crusader's eyes.  Do you choose this path?
]]--


--[FINAL SELECTION] 
--You have to make a choice!  You got potential, you do, and it would be a sore shame to see you waste it!  But you can't be a fighter your entire life. You gotta focus on one of the styles I showed you, if you wanna go places.  So what will it be, eh?



--Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?
--Brawlers don't waste their time strapping on bulky armor. Sometimes the only weapons they use are their fists, and they dodge their opponent's blows with the swiftness of a hawk.  Do you choose this path?
--If you're a true brawler, you need to undergo a challenge.  In order to join the ranks of the brawlers here in Qeynos, you gotta prove your skills. Enter the dojo and go fist to fist against another brawler.  If you manage to defeat 'em, you'll become that which you seek.

--Thank you, Dagorel.  I won't forget your lessons.
--Aye, aye.  The watchmen informed me. They say you held your own. That's what I want to hear! You had to prove your fightin' skills--I don't want anyone accusing ol' Dagorel of sending ill-equipped kids off to their deaths. You proved you got what it takes, kid. Good work.

--Yes.  I will train everyday to master the art of pugilism.  I am a brawler.
--I like relying on my fists in battle. I want to be a brawler.
--
--Understand one more thing as well ...  when you defeat your last opponent, meditate at the altar in the dojo.  A brawler is not only strong of body but also of mind.  Strengthening both is mandatory.  Once you do this, you'll have proven yourself.

--BRAWLER ALTAR A cool breeze swirls around you, sending a tingle up the back of your spine.  You arise from the altar and know in your soul that you are a brawler.
--CRUSADER START It's not as easy as that, youngin'.  You don't just declare yourself a crusader, or did you learn nothing from my previous lessons?  No, crusader is a title earned by those with enough heart to consider the fair city of Qeynos and its inhabitants first and themselves a distant second.
--
--A warrior, are ya? You're sayin' that the best way to fix a problem is with a bit of hammered steel?  Aye, I agree with that!  When you got a slaverin' gnoll runnin' at you, hard bent for leather, well, you'd be a ninny not to draw steel.  So, the life of the warrior is your path in life, is it?
--I like having a commanding presence in battle. I want to be a crusader.
--
--Though all warriors fight for a cause, none have as strong a conviction as a crusader. Crusaders live to fight another day ... and another ... and another... They never stop, for they know their next opponent waits to take everything they've earned.
--It's not as easy as that, youngin'.  You don't just declare yourself a crusader, or did you learn nothing from my previous lessons?  No, crusader is a title earned by those with enough heart to consider the fair city of Qeynos and its inhabitants first and themselves a distant second.
--Yes.  I prefer to take care of a problem, rather than let it take care of me.  I am a warrior!
--Whoa, now! Not yet, you're not!  You have to prove you can last in the fray. You didn't think I'd wave a magic wand and make you a warrior, did you?  No, no, we got a make shift arena set up in the warehouse, where you'll prove yourself, a true warrior of Qeynos. No need to return to me, I've taught you all I can.