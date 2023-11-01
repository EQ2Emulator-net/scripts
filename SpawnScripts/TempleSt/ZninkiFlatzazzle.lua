--[[
    Script Name    : SpawnScripts/TempleSt/ZninkiFlatzazzle.lua
    Script Author  : Dorbin
    Script Date    : 2023.11.01 04:11:39
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

local SinceTheWheel = 5919


function spawn(NPC)
SetPlayerProximityFunction(NPC,9, "InRange", "LeaveRange")		
ProvidesQuest(NPC,SinceTheWheel)
end

function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else
    if GetQuestStep(Spawn,SinceTheWheel) ==1 then
    PlayFlavor(NPC,"","My tracking device does not show the Bisecter with you! Go and get it!... Please?","confused",0,0,Spawn, 6)
    else
        GenericEcologyHail(NPC, Spawn, faction)
    end
end
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,12)<0 then
    FactionCheckCallout(NPC,Spawn,faction)
    else
    if not HasLanguage(Spawn,12)then
        if math.random(0,100)<80 then
     	FaceTarget(NPC, Spawn)
        Garbled(NPC,Spawn)
        end
    elseif CanReceiveQuest(Spawn,SinceTheWheel) then
     	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "My Bread Bisector!  My beautiful Bread Bisector!  I'll never rest until it's returned to me!", "grumble", 0, 0, Spawn, 6)
end
end
end


--I need it to complete a tracking device to locate some goblins who absconded with my Bread Bisector!  Ah-ha!  Found one!  Now I can activate the anti-theft mechanism on the Bisector ... just so ... it's a good thing I installed that Sanguine Atomizing Locator.
--You've never heard of my Sanguine Atomizing Locator?  It's how I keep thieves from using my inventions.  See, if I clink this tuning fork like this, the Locator rockets the thief a mile into the air, where he suddenly explodes in a spectacular burst of blood ... making him much easier to locate.  Ah-ha!  You see that red cloud up there?  That must be the goblin who took my Bread Bisector!  Oh, I simply must retrieve it!
--Would you?  That would be most satisfactory!  Why yes, I like that idea very much.  I shall eagerly await the return of my ingenious device – the Bread Bisector!

--My Bread Bisector!  My beautiful Bread Bisector!  I'll never rest until it's returned to me!

--I've managed to find the Bread Bisector, which looks awfully similar to a knife.
--It's no ordinary knife, my friend.  It's the Bread Bisector!  See, you take an ordinary loaf of bread and, using the Bisector, you slice it in twain!  And if you adjust this little knob here, you can bisect it many many times over ... creating "slices."  Have you ever seen the like?
