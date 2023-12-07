--[[
	Script Name		:	antonica.lua
	Script Purpose	:	Handles events in Antonica
	Script Author	:	Jabantiz/neatz09/Dorbin
	Script Date		:	6/16/2016/ 2/23/19 12/6/23
	Script Notes	:	
--]]

function init_zone_script(zone)
	SetLocationProximityFunction(zone, -2128.93, -28.4328, 614.081, 10, "GriffonTower", "Leave")  -- Steppes from Qeynos
	SetLocationProximityFunction(zone, -904.472, -7.23051, -610.321, 10, "GriffonTower", "Leave")  -- Oracle from Qeynos
	SetLocationProximityFunction(zone, 337.246, -17.3142, 537.882, 10, "GriffonTower", "Leave")  -- Qeynos from Steppes
    SetLocationProximityFunction(zone, -912.659, -7.21881, -599.911, 10, "GriffonTower", "Leave")  -- Oracle from Steppes
	SetLocationProximityFunction(zone, 327.727, -17.3058, 529.95, 10, "GriffonTower", "Leave")  -- Qeynos from Oracle
	SetLocationProximityFunction(zone, -2136.6, -28.5276, 608.087, 10, "GriffonTower", "Leave")  -- Steppese from oracle
	
    SetLocationProximityFunction(Zone,127.20, -24.88, 468.20, 30, "CraterLake","LeaveLocation")
    SetLocationProximityFunction(Zone,-102.51, -18.43, 100.64, 35, "CentralFarmlands","LeaveLocation")
    SetLocationProximityFunction(Zone,-123.97, -16.37, 585.85, 35, "QeynosHills","LeaveLocation")
    SetLocationProximityFunction(Zone,-442.50, 2.15, 551.88, 15, "Claymore","LeaveLocation")
    SetLocationProximityFunction(Zone,-503.16, -18.23, 396.36, 35, "QeynosPlains","LeaveLocation")
    SetLocationProximityFunction(Zone,-753.87, -3.03, 592.89, 55, "ArcherWoods","LeaveLocation")
    SetLocationProximityFunction(Zone,-1191.42, -20.26, 261.38, 30, "QeynosHighway","LeaveLocation")
    SetLocationProximityFunction(Zone,-1299.50, 38.29, 44.79, 15, "BellsofVhalen","LeaveLocation")
    SetLocationProximityFunction(Zone,-1506.60, -14.37, -11.08, 55, "GladeoftheCoven","LeaveLocation")
    SetLocationProximityFunction(Zone,-1567.28, 2.28, 609.58, 40, "BrambleWoods","LeaveLocation")
	
end

function CraterLake(Zone,Player)
      SendPopUpMessage(Player, "Crater Lake", 255, 255, 0)
end

function CentralFarmlands(Zone,Player)
      SendPopUpMessage(Player, "Central Farmlands", 255, 255, 0)
end

function QeynosHills(Zone,Player)
      SendPopUpMessage(Player, "Qeynos Hills", 255, 255, 0)
end

function Claymore(Zone,Player)
      SendPopUpMessage(Player, "Claymore Monument", 255, 255, 0)
end

function QeynosPlains(Zone,Player)
      SendPopUpMessage(Player, "Qeynos Plains", 255, 255, 0)
end

function ArcherWoods(Zone,Player)
      SendPopUpMessage(Player, "Archer Woods", 255, 255, 0)
end

function QeynosHighway(Zone,Player)
      SendPopUpMessage(Player, "Qeynos Highway", 255, 255, 0)
end

function BellsofVhalen(Zone,Player)
      SendPopUpMessage(Player, "The Bells of Vhalen", 255, 255, 0)
end

function GladeoftheCoven(Zone,Player)
      SendPopUpMessage(Player, "Glade of the Coven", 255, 255, 0)
end

function BrambleWoods(Zone,Player)
      SendPopUpMessage(Player, "Bramble Woods", 255, 255, 0)
end

function player_entry(zone, player)
 SendPopUpMessage(player, "Antonica", 230, 230, 230)   
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

function GriffonTower(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function Leave(zone, Spawn)
end

