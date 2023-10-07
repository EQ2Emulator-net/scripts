--[[
    Script Name    : SpawnScripts/NorthFreeport/EmissaryMillia.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.06 05:10:10
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)    local int = MakeRandomInt(1,3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, adventurer.  Looking for some company?  Someone to keep you entertained?  Perhaps we could chat!  Or  I can dance a little dance or sing a song for your enjoyment!  Maybe we can play a game. Do you like games? I know several!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_"..int.."_1043.mp3", 0, 0)
    Dialog.AddOption("Nothing today. Thanks.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end
--[[
Hail?
-

Scout Hail Start 
--I'd like to add to my repertoire of tricks. Maybe you're the one who could show me?


Step1
--Let's look at rogues for a moment. Due to their stealth and guile nature, people associate rogues with thieves and cutpurses.  But we both know that rogues are just misunderstood, right?  Perhaps you want to try your hand--and fingers--at being a rogue?
--Let's see if you have the skills to go with that mouth of yours, eh? Being a scout doesn't take much, a couple of eyes, working limbs, that's about you can get out of a sticky situation. If , you'll go even further. For instance, a good rogue always has an escape route. Go into the Sunken City and clear an escape path. Kill several Rust Monsters, and then comes back. If you return in one piece, maybe I shows you a few more tricks.
Let's see if you have the skills to go with that mouth of yours, eh? Being a scout doesn't take much, a couple of eyes, working limbs, that's about all can get out of a sticky situation. If you do, you'll go even further. For instance, a good rogue always has an escape route. Go into the Sunken City and clear an escape path. Kill several Rust Monsters, and then comes back. If you return in one piece, maybe I shows you a few more tricks.

Step2
--Anyone can defeat a mighty adversary in battle, but being remembered for it is an entirely different matter.  A bard regales others with tales of the past through their melodies and stories.  The bard who writes the past is the same one who guides the future.  And don't forget all the attention you get, too!  That's my favorite part!
--Successful bards have a sharp tongue and a quick wit. I must test you to see if you possess these qualities. A small party of wealthy merchants from the Coalition of Tradesfolke has gathered together...
--I want you to go to a few of the taverns around the city and charm the patrons with your beautiful voice.  Heheheee... You do have one, don't you?  Go visit these two taverns and convince the bartenders that you're the life of the party. I don't care how you embarrass yourself -- sing a ballad, dance a jig -- just make them think you're an idiot. And if you don't, then no more tricks from me, got it?
Step3
----I'll take your word that you stole this from him. Well, since you pulled off the other tricks, I guess I teach you a few more. Instead of being a freelance rogue or a deceptive bard, you can also ply your trade as a hunter or a predator. After I show you the tricks they use, maybe you decide what kind of scout you wants to be.
--Predators are only happy when they are pursuing their quarry. Once they catch what they're tracking, well, the game's over, so they say.  Therefore, a smart predator always finds something else to hunt down.  If you've got a big imagination, then being a predator might be for you.
--Predators stay in the shadows; they know that the best way to defeat an enemy is to sneak up on it and slit its throat! You can practice skulking by heading down into the sewer and looking for your competitors - the ones called the Darkblade Scouts. Hunt down some of these creatures and dispose of them before they even see you.  

Decision
--I didn't teach you the tricks of the trade just so you could waste my time! Choose a scouting technique and start practicing! Scouts are a silver a dozen around here. Some people with less class might even call them thieves. Is this what you want to be? A common thief?  No! No! I think you know what you want to be.  Am I right?
--It is a tricksy thing, though.  We help in the shadows, where many peoples do not look.  This evidence is goods, but it is going to be a hard sell.  We needs something else, and I think I have an idea.

PredOffer
--So, a predator? Can you smell your prey far before you see it? If you close your eyes, can you hear the heartbeat of your game and know how many beats are left, yes? Yes ... a stalker's instinct runs in your blood.  You are the top of the food chain.


]]--