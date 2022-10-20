--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/FerithAnar.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 08:10:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 749.41, 13.78, -231.54, 2, 0)
	MovementLoopAddLocation(NPC, 755.83, 13.38, -231.36, 2, 0)
	MovementLoopAddLocation(NPC, 771.48, 13.35, -248.88, 2, 0)
	MovementLoopAddLocation(NPC, 786.09, 13.35, -255.78, 2, 0)
	MovementLoopAddLocation(NPC, 804.37, 11.68, -267.99, 2, 0)
	MovementLoopAddLocation(NPC, 816.87, 7.87, -277.15, 2, 0)
	MovementLoopAddLocation(NPC, 823.56, 6.42, -283.64, 2, 0)
	MovementLoopAddLocation(NPC, 828.64, 6.88, -295.1, 2, 0)
	MovementLoopAddLocation(NPC, 835.56, 5.46, -307.47, 2, 0)
	MovementLoopAddLocation(NPC, 843.99, 4.49, -318.56, 2, 0)
	MovementLoopAddLocation(NPC, 854.74, 3.04, -324.44, 2, 0)
	MovementLoopAddLocation(NPC, 877.71, 1.89, -333.18, 2, 0)
	MovementLoopAddLocation(NPC, 882.57, 1.76, -330.63, 2, 0)
	MovementLoopAddLocation(NPC, 903.15, 2.2, -312.93, 2, 0)
	MovementLoopAddLocation(NPC, 909.24, 2.32, -310.58, 2, 0)
	MovementLoopAddLocation(NPC, 911.41, 2.24, -307.34, 2, 0)
	MovementLoopAddLocation(NPC, 908.64, 2.25, -301.7, 2, 0)
	MovementLoopAddLocation(NPC, 899.67, 2.2, -283.03, 2, 0)
	MovementLoopAddLocation(NPC, 897.62, 1.7, -271.53, 2, 0)
	MovementLoopAddLocation(NPC, 885.31, 0.46, -248.92, 2, 0)
	MovementLoopAddLocation(NPC, 878.18, 0.4, -246.42, 2, 0)
	MovementLoopAddLocation(NPC, 853.35, 2.55, -243.6, 2, 0)
	MovementLoopAddLocation(NPC, 836.17, 3.63, -233.48, 2, 0)
	MovementLoopAddLocation(NPC, 823.75, 4.81, -222.52, 2, 0)
	MovementLoopAddLocation(NPC, 809.69, 6.31, -215.02, 2, 0)
	MovementLoopAddLocation(NPC, 800.42, 6.8, -211.23, 2, 0)
	MovementLoopAddLocation(NPC, 800.75, 6.79, -208.59, 2, 0)
	MovementLoopAddLocation(NPC, 805.6, 6.35, -203.28, 2, 0)
	MovementLoopAddLocation(NPC, 815.78, 5.56, -201.2, 2, 0)
	MovementLoopAddLocation(NPC, 824.21, 4.74, -196.03, 2, 0)
	MovementLoopAddLocation(NPC, 838.82, 3.86, -190.05, 2, 0)
	MovementLoopAddLocation(NPC, 869.75, 1.1, -188.59, 2, 0)
	MovementLoopAddLocation(NPC, 879.61, 0.34, -193.23, 2, 0)
	MovementLoopAddLocation(NPC, 887.57, 1.83, -195.04, 2, 0)
	MovementLoopAddLocation(NPC, 891.44, 2.72, -201.43, 2, 0)
	MovementLoopAddLocation(NPC, 893.45, 3.14, -208.62, 2, 0)
	MovementLoopAddLocation(NPC, 896.7, 3.12, -222.29, 2, 0)
	MovementLoopAddLocation(NPC, 894.83, 2.26, -232.35, 2, 0)
	MovementLoopAddLocation(NPC, 884.88, 0.44, -244.62, 2, 0)
	MovementLoopAddLocation(NPC, 854.38, 2.44, -243.8, 2, 0)
	MovementLoopAddLocation(NPC, 837.41, 3.61, -234.36, 2, 0)
	MovementLoopAddLocation(NPC, 820.34, 4.86, -219.51, 2, 0)
	MovementLoopAddLocation(NPC, 816.51, 5.77, -209.01, 2, 0)
	MovementLoopAddLocation(NPC, 819.21, 5.53, -205.14, 2, 0)
	MovementLoopAddLocation(NPC, 833.2, 6.9, -207.49, 2, 0)
	MovementLoopAddLocation(NPC, 849.66, 9.17, -222.43, 2, 0)
	MovementLoopAddLocation(NPC, 863.15, 10.58, -224.16, 2, 0)
	MovementLoopAddLocation(NPC, 867.01, 11.31, -229.02, 2, 0)
	MovementLoopAddLocation(NPC, 866.54, 11.46, -267.21, 2, 0)
	MovementLoopAddLocation(NPC, 859.15, 12.45, -278.84, 2, 0)
	MovementLoopAddLocation(NPC, 850.93, 13.52, -289.11, 2, 0)
	MovementLoopAddLocation(NPC, 848.52, 13.27, -300.62, 2, 0, "Action")
	MovementLoopAddLocation(NPC, 848.52, 13.27, -300.62, 2, 0)
end

function Action(NPC)
    Despawn(NPC)
end