--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Giantslayer.lua
    Script Author  : Dorbin
    Script Date    : 2023.12.01 05:12:33
    Script Purpose : 
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam
local Ogre = 12
local Troll = 14
local Barbarian = 0

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

 

function Garbled(NPC,Player)
if GetRace(NPC) == Barbarian then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_1d4e2601.mp3", "Zergen oer steb liteit", "", 1881495348, 2631084324, Spawn,1)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 1338663568, 2860304215, Spawn,1)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_b80c3123.mp3", "Asfkher van baed rijs prakti kjen ", "", 1248648431, 1559755809, Spawn,1)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_f1b9e87a.mp3", "Uf envoudig een van uw gekozen en enkel geven om Vensters", "", 3095091783, 3153428791, Spawn,1)
        end
    else
   	local choice = MakeRandomInt(1,4)
	    if choice == 1 then -- FEMALE
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_garbled_gf_39fa44a4.mp3", "Voor van de hebben verktozen um venester ", "", 1454634641, 3478787440, Spawn, 1)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_garbled_gf_1d4e2601.mp3", "Zergen oer steb liteit", "", 3787818080, 297930332, Spawn, 1)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_garbled_gf_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 2958929129, 2080811104, Spawn, 1)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_garbled_gf_411c42c0.mp3", "Markt om de teg enges teld ek westiae te stellen. ", "", 3699684343, 1809069007, Spawn, 1)
        end        
    end
elseif GetRace(NPC) == Ogre then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional3/ogre_dervish/ft/ogre/ogre_dervish_2_garbled_gm_4e36e011.mp3", "Dorsht kro venab modat sed", "", 3845588707, 2500883879, Spawn,14)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/ogre_dervish/ft/ogre/ogre_dervish_1_garbled_gm_2e858451.mp3", "Borod groda sud med ka", "", 3026340298, 870128273, Spawn,14)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/ogre_dervish/ft/ogre/ogre_dervish_1_garbled_gm_7d0991b7.mp3", "Hurth mroth beheda graben deleth", "", 2073169291, 2543219571, Spawn,14)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_dervish/ft/ogre/ogre_dervish_2_garbled_gm_2e858451.mp3", "Borod groda sud med ka", "", 2573547747, 2195246695, Spawn,14)
        end
    else
   	local choice = MakeRandomInt(1,4)
	    if choice == 1 then -- FEMALE
        PlayFlavor(NPC, "voiceover/english/ogre_dervish/ft/ogre/ogre_dervish_1_garbled_gf_bef20a0a.mp3", "Grada ulgar boi hemar", "", 2699004920, 560903809, Spawn,14)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/ogre_dervish/ft/ogre/ogre_dervish_1_garbled_gf_7d0991b7.mp3", "Hurth mroth beheda graben deleth", "", 2981299879, 1969453091, Spawn,14)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_dervish/ft/ogre/ogre_dervish_2_garbled_gf_2e858451.mp3", "Borod groda sud med ka", "", 2001985676, 3233914404, Spawn,14)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_dervish/ft/ogre/ogre_dervish_2_garbled_gf_7d0991b7.mp3", "Hurth mroth beheda graben deleth", "", 2347032592, 631248646, Spawn,14)
         end        
    end
elseif GetRace(NPC) == Troll then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_318f674b.mp3", "Erch bosta pankan toost", "", 2846330309, 4155347396, Spawn,15)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_43bed989.mp3", "Habat zopft hach'te glarst", "", 2701453259, 3347954170, Spawn,15)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_a1a1512f.mp3", "Tastke blatsa zurtek nyt", "", 3824904925, 121650296, Spawn,15)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_c4c81df1.mp3", "Pazzkkan gracht glizt kep", "", 1821063853, 3495000701, Spawn,15)
        end
    else -- FEMALE
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_318f674b.mp3", "Erch bosta pankan toost", "", 2846330309, 4155347396, Spawn,15)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_43bed989.mp3", "Habat zopft hach'te glarst", "", 2701453259, 3347954170, Spawn,15)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_a1a1512f.mp3", "Tastke blatsa zurtek nyt", "", 3824904925, 121650296, Spawn,15)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_c4c81df1.mp3", "Pazzkkan gracht glizt kep", "", 1821063853, 3495000701, Spawn,15)
        end        
    end
end
end

 function aggro(NPC,Player)   
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=33 and IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
if GetRace(NPC) == Barbarian then
    if not HasLanguage(Player,1)then
    Garbled(NPC,Player)
    else
    aggroCall(NPC,Player)
    end
elseif GetRace(NPC) == Ogre then    
    if not HasLanguage(Player,14)then
    Garbled(NPC,Player)
    else
    aggroCall(NPC,Player)
    end    
elseif GetRace(NPC) == Troll then    
    if not HasLanguage(Player,15)then
    Garbled(NPC,Player)
    else
    aggroCall(NPC,Player)
    end     
end
end
end

 function aggroCall(NPC,Player)   
if GetRace(NPC) == Barbarian then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 3715495401, 2861752836, Spawn, 1)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_d2336620.mp3", "Your overconfidence will be your undoing.", "", 1735697087, 1551611219, Spawn, 1)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_2/ft/barbarian/barbarian_base_2_1_halfhealth_gm_e4144b42.mp3", "A true warrior feels no pain!", "", 3699343440, 1584591854, Spawn,1)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_aggro_gm_e5dbdc37.mp3", "There's no escaping my might!", "", 548778638, 825995484, Spawn, 1)
        end
    else
   	local choice = MakeRandomInt(1,3)
	    if choice == 1 then -- FEMALE
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_aggro_gf_e5dbdc37.mp3", "There's no escaping my might!", "", 548778638, 825995484, Spawn, 1)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_giantslayer/ft/barbarian/barbarian_giantslayer_1_aggro_gf_aaaf35f7.mp3", "This battle will be the end of you!", "", 4178539814, 2861843546, Spawn, 1)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_d2336620.mp3", "Your overconfidence will be your undoing.", "", 2263836674, 942538899, Spawn,1)
        end        
    end
elseif GetRace(NPC) == Ogre then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ogre_giantslayer/ft/ogre/ogre_giantslayer_1_aggro_gm_e34983fd.mp3", "You messed with the wrong guy!", "", 2373153509, 3768633177, Spawn, 14)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help! We have invaders!", "", 3340212225, 279643307, 14)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443, 14)
        end
    else
   	local choice = MakeRandomInt(1,3)
	    if choice == 1 then -- FEMALE
		PlayFlavor(NPC, "voiceover/english/ogre_giantslayer/ft/ogre/ogre_giantslayer_1_aggro_gf_4cd8a067.mp3", "I'm gonna squosh you!", "", 3161832271, 3643573572, Spawn, 14)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gf_d4cfd470.mp3", "Feel the might of Rallos!", "", 760635308, 455953200, Spawn,14)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_battle_gf_fa6b8296.mp3", "They cannot match our strength. Charge!", "", 3818976104, 1332551759,14)
        end        
    end
elseif GetRace(NPC) == Troll then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_b7e0b3a.mp3", "Me going to eat your kidney first.", "", 3664886715, 2450110061,15)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_d1a345c7.mp3", "I'm gonna give you a smile like ol' one tooth!", "", 2209033822, 2591536638,15)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_f06d6bb9.mp3", "Not nice to interrupt dinner.", "", 573837171, 4255493444,15)
        end
    else
   	local choice = MakeRandomInt(1,3)
	    if choice == 1 then -- FEMALE
		PlayFlavor(NPC, "voiceover/english/optional3/troll_giantslayer/ft/troll/troll_giantslayer_2_aggro_gf_c0dad131.mp3", "Giantslayer power!", "", 976922385, 2649690552, Spawn, 15)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_b7e0b3a.mp3", "Me going to eat your kidney first.", "", 750980753, 3740010516, Spawn,15)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_aggro_gf_62fd0e82.mp3", "What smells so good?", "", 3335229907, 713747453, Spawn,15)
        end        
    end
end   
end


function death(NPC,Player)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,26 )then
    Garbled(NPC,Player)
    else
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_black_magi/ft/ratonga/ratonga_black_magi_1_death_gm_46ba8472.mp3", "That was just a runt!", "", 2089979278, 2314600701, Player, 26)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_1_death_gm_e7600f72.mp3", "Now who will pick the locks?!", "", 2755004589, 1076685336, Player, 26)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_black_magi/ft/ratonga/ratonga_black_magi_1_death_gm_5a5e2dda.mp3", "This doesn't look so good.", "", 1114919917, 808862085, Player, 26)
       end
    else
   	local choice = MakeRandomInt(1,2)
	    if choice == 1 then -- FEMALE
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_2_death_gf_e7600f72.mp3", "Now who will pick the locks?!", "", 253904273, 1976320729, Player, 26)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_darkblades/ft/ratonga/ratonga_darkblades_2_death_gf_497acee7.mp3", "That just improves my cut of the loot!", "", 1920882673, 458148245, Player, 26)

        end        
    end
    end
end
end
end





function victory(NPC,Player)
    if IsPlayer(Player)and  not HasLanguage(Player,26 )then
        Garbled(NPC,Player)
    elseif  IsPlayer(Player) and HasLanguage(Player,26 )then
    if GetGender(NPC) ==1 then -- MALE
  	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gm_935883a.mp3", "Shhh ... shhh ... it's ok ... shhh ...shhh. Stop fighting it...", "", 1459182295, 1340643629, Player, 26)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gm_732f23e7.mp3", "The dead tell no tales", "", 636430623, 2715556056, Player, 26)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gm_15e8fc93.mp3", "One less worry in my life!", "", 4116602987, 3804155045, Player,26)
       end
    else
   	local choice = MakeRandomInt(1,2)
	    if choice == 1 then -- FEMALE
        PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gf_732f23e7.mp3", "The dead tell no tales", "", 1062202875, 1393213249, Player,26)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gf_935883a.mp3", "Shhh ... shhh ... it's ok ... shhh ...shhh. Stop fighting it...", "", 1459182295, 1340643629, Player, 26)

        end        
    end
    end
end

