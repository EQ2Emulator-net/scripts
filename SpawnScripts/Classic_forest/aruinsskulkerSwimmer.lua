--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulkerSwimmer.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.15 03:10:33
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
if GetSpawnLocationID(NPC) ==133778313 then
	MovementLoopAddLocation(NPC, 1037.24, -24.83, -733.79, 2, 0)
	MovementLoopAddLocation(NPC, 1035.23, -25.26, -727.73, 2, 0)
	MovementLoopAddLocation(NPC, 1035.55, -25.47, -724.39, 2, 15)
	MovementLoopAddLocation(NPC, 1036.12, -25.52, -723.5, 2, 0)
	MovementLoopAddLocation(NPC, 1036.4, -25.46, -724.52, 2, 0)
	MovementLoopAddLocation(NPC, 1035.65, -25.01, -731.6, 2, 0)
	MovementLoopAddLocation(NPC, 1037.01, -24.77, -735.03, 2, 0)
	MovementLoopAddLocation(NPC, 1043.98, -24.6, -734.9, 2, 15)
	MovementLoopAddLocation(NPC, 1049.38, -24.62, -730.51, 2, 0)
	MovementLoopAddLocation(NPC, 1057.37, -24.84, -724.94, 2, 0)
	MovementLoopAddLocation(NPC, 1066.82, -25.08, -722.17, 2, 0)
	MovementLoopAddLocation(NPC, 1075.97, -25.11, -724.01, 2, 15)
	MovementLoopAddLocation(NPC, 1080.54, -24.88, -717.87, 2, 0)
	MovementLoopAddLocation(NPC, 1083.76, -24.83, -710.87, 2, 0)
	MovementLoopAddLocation(NPC, 1091.62, -24.51, -704.87, 2, 0)
	MovementLoopAddLocation(NPC, 1093.98, -24.07, -703.38, 2, 0)
	MovementLoopAddLocation(NPC, 1099.49, -22.64, -706.91, 2, 0)
	MovementLoopAddLocation(NPC, 1100.57, -21.48, -714.32, 2, 0)
	MovementLoopAddLocation(NPC, 1101.52, -20.9, -713.68, 2, 15)
	MovementLoopAddLocation(NPC, 1105.31, -18.83, -711.79, 2, 0)
	MovementLoopAddLocation(NPC, 1105.31, -18.83, -711.79, 2, 15)
	MovementLoopAddLocation(NPC, 1106.07, -18.64, -710.4, 2, 0)
	MovementLoopAddLocation(NPC, 1102.01, -21.49, -706.23, 2, 0)
	MovementLoopAddLocation(NPC, 1096.89, -23.73, -707.18, 2, 0)
	MovementLoopAddLocation(NPC, 1095.16, -24.03, -707.91, 2, 0)
	MovementLoopAddLocation(NPC, 1085.14, -24.7, -711.23, 2, 0)
	MovementLoopAddLocation(NPC, 1082.19, -24.77, -715.79, 2, 0)
	MovementLoopAddLocation(NPC, 1072.61, -25.28, -718.29, 2, 0)
	MovementLoopAddLocation(NPC, 1067.44, -25.26, -719.92, 2, 15)
	MovementLoopAddLocation(NPC, 1061.51, -24.85, -723.46, 2, 0)
	MovementLoopAddLocation(NPC, 1055.78, -25.4, -720.66, 2, 0)
	MovementLoopAddLocation(NPC, 1048.99, -25.43, -722.11, 2, 0)
	MovementLoopAddLocation(NPC, 1043.25, -25.36, -720.85, 2, 0)
	MovementLoopAddLocation(NPC, 1036.89, -25.23, -719.75, 2, 0)
	MovementLoopAddLocation(NPC, 1031.45, -25.23, -729.75, 2, 15)
	elseif GetSpawnLocationID(NPC) ==133778756 then
	MovementLoopAddLocation(NPC, 1004.47, -33.4, -937.5, 2, 0)
	MovementLoopAddLocation(NPC, 1012.81, -33.4, -935.75, 2, 0)
	MovementLoopAddLocation(NPC, 1023.98, -32.46, -935.99, 2, 0)
	MovementLoopAddLocation(NPC, 1032.3, -32.46, -937.58, 2, 0)
	MovementLoopAddLocation(NPC, 1037.3, -32.46, -948.44, 2, 15)
	MovementLoopAddLocation(NPC, 1033.47, -32.46, -947.37, 2, 0)
	MovementLoopAddLocation(NPC, 1026.37, -32.46, -944.33, 2, 0)
	MovementLoopAddLocation(NPC, 1017.17, -32.46, -940.32, 2, 0)
	MovementLoopAddLocation(NPC, 1007.79, -32.46, -936.25, 2, 0)
	MovementLoopAddLocation(NPC, 1000.24, -33.08, -929.93, 2, 0)
	MovementLoopAddLocation(NPC, 993.23, -33.08, -926.2, 2, 0)
	MovementLoopAddLocation(NPC, 986.15, -33.08, -924.57, 2, 0)
	MovementLoopAddLocation(NPC, 976.65, -33.52, -925.53, 2, 0)
	MovementLoopAddLocation(NPC, 965.94, -32.94, -927.03, 2, 0)
	MovementLoopAddLocation(NPC, 958.29, -33.26, -923.24, 2, 0)
	MovementLoopAddLocation(NPC, 955.75, -33.22, -913.98, 2, 15)
	MovementLoopAddLocation(NPC, 959.54, -34.05, -912.13, 2, 0)
	MovementLoopAddLocation(NPC, 966.26, -34.27, -916.26, 2, 0)
	MovementLoopAddLocation(NPC, 972.62, -33.14, -921.94, 2, 0)
	MovementLoopAddLocation(NPC, 983.31, -31.66, -932.71, 2, 0)
	MovementLoopAddLocation(NPC, 992.02, -33.97, -940.34, 2, 0)
	MovementLoopAddLocation(NPC, 1001.48, -32.75, -942.54, 2, 0)
	MovementLoopAddLocation(NPC, 992.02, -33.97, -940.34, 2, 0)
	MovementLoopAddLocation(NPC, 983.31, -31.66, -932.71, 2, 0)
	MovementLoopAddLocation(NPC, 972.62, -33.14, -921.94, 2, 0)
	MovementLoopAddLocation(NPC, 966.26, -34.27, -916.26, 2, 0)
	MovementLoopAddLocation(NPC, 959.54, -34.05, -912.13, 2, 0)
	MovementLoopAddLocation(NPC, 955.75, -33.22, -913.98, 2, 15)
	MovementLoopAddLocation(NPC, 958.29, -33.26, -923.24, 2, 0)
	MovementLoopAddLocation(NPC, 965.94, -32.94, -927.03, 2, 0)
	MovementLoopAddLocation(NPC, 976.65, -33.52, -925.53, 2, 0)
	MovementLoopAddLocation(NPC, 986.15, -33.08, -924.57, 2, 0)
	MovementLoopAddLocation(NPC, 993.23, -33.08, -926.2, 2, 0)
	MovementLoopAddLocation(NPC, 1000.24, -33.08, -929.93, 2, 0)
	MovementLoopAddLocation(NPC, 1007.79, -32.46, -936.25, 2, 0)
	MovementLoopAddLocation(NPC, 1017.17, -32.46, -940.32, 2, 0)
	MovementLoopAddLocation(NPC, 1026.37, -32.46, -944.33, 2, 0)
	MovementLoopAddLocation(NPC, 1033.47, -32.46, -947.37, 2, 0)
	MovementLoopAddLocation(NPC, 1037.3, -32.46, -948.44, 2, 15)
	MovementLoopAddLocation(NPC, 1032.3, -32.46, -937.58, 2, 0)
	MovementLoopAddLocation(NPC, 1023.98, -32.46, -935.99, 2, 0)
	MovementLoopAddLocation(NPC, 1012.81, -33.4, -935.75, 2, 0)
	MovementLoopAddLocation(NPC, 1004.47, -33.4, -937.5, 2, 0)	    
	elseif GetSpawnLocationID(NPC) ==133778753 then
	MovementLoopAddLocation(NPC, 936.78, -31.74, -902.6, 2, 15)
	MovementLoopAddLocation(NPC, 943.1, -33.83, -907.91, 2, 0)
	MovementLoopAddLocation(NPC, 950.79, -34.17, -913.26, 2, 15)
	MovementLoopAddLocation(NPC, 950.43, -36.08, -918.87, 2, 0)
	MovementLoopAddLocation(NPC, 956.78, -30.99, -921.94, 2, 0)
	MovementLoopAddLocation(NPC, 971.1, -33.94, -920.07, 2, 0)
	MovementLoopAddLocation(NPC, 974.73, -34.29, -920.03, 2, 15)
	MovementLoopAddLocation(NPC, 982.33, -30.74, -910.45, 2, 0)
	MovementLoopAddLocation(NPC, 987.22, -26.88, -902.88, 2, 0)
	MovementLoopAddLocation(NPC, 987.89, -25.96, -897.45, 2, 0)
	MovementLoopAddLocation(NPC, 985.4, -24.18, -878.68, 2, 15)
	MovementLoopAddLocation(NPC, 980.13, -24.66, -878.19, 2, 0)
	MovementLoopAddLocation(NPC, 964.83, -26.84, -886.18, 2, 0)
	MovementLoopAddLocation(NPC, 950.18, -31.29, -896.21, 2, 0)
	MovementLoopAddLocation(NPC, 937.38, -33.51, -904.17, 2, 15)
	MovementLoopAddLocation(NPC, 932.81, -32.32, -898.3, 2, 0)
	MovementLoopAddLocation(NPC, 930.09, -31.8, -893.23, 2, 0)
	MovementLoopAddLocation(NPC, 930.09, -31.8, -893.23, 2, 15)
	MovementLoopAddLocation(NPC, 956.36, -32.88, -916.91, 2, 0)
	MovementLoopAddLocation(NPC, 984.11, -38.21, -934.89, 2, 0)
	MovementLoopAddLocation(NPC, 1007.02, -33.72, -943.5, 2, 2)
	MovementLoopAddLocation(NPC, 1011.12, -33.38, -944.11, 2, 15)
	MovementLoopAddLocation(NPC, 1012.81, -33.25, -943.96, 2, 0)
	MovementLoopAddLocation(NPC, 1015.45, -32.73, -939.49, 2, 0)
	MovementLoopAddLocation(NPC, 1005.7, -34.54, -935.1, 2, 0)
	MovementLoopAddLocation(NPC, 998.38, -36.05, -932.48, 2, 0)
	MovementLoopAddLocation(NPC, 989.02, -37.24, -930.72, 2, 0)
	MovementLoopAddLocation(NPC, 982.51, -38.18, -931.22, 2, 0)
	MovementLoopAddLocation(NPC, 975.69, -36.08, -928.67, 2, 0)
	MovementLoopAddLocation(NPC, 968.35, -34.21, -920.71, 2, 0)
	MovementLoopAddLocation(NPC, 961.44, -31.79, -915.96, 2, 0)
	MovementLoopAddLocation(NPC, 945.07, -31.91, -908.23, 2, 0)
	MovementLoopAddLocation(NPC, 936.86, -32.63, -899.76, 2, 15)
	MovementLoopAddLocation(NPC, 945.07, -31.91, -908.23, 2, 0)
	MovementLoopAddLocation(NPC, 961.44, -31.79, -915.96, 2, 0)
	MovementLoopAddLocation(NPC, 968.35, -34.21, -920.71, 2, 0)
	MovementLoopAddLocation(NPC, 975.69, -36.08, -928.67, 2, 0)
	MovementLoopAddLocation(NPC, 982.51, -38.18, -931.22, 2, 0)
	MovementLoopAddLocation(NPC, 989.02, -37.24, -930.72, 2, 0)
	MovementLoopAddLocation(NPC, 998.38, -36.05, -932.48, 2, 0)
	MovementLoopAddLocation(NPC, 1005.7, -34.54, -935.1, 2, 0)
	MovementLoopAddLocation(NPC, 1015.45, -32.73, -939.49, 2, 0)
	MovementLoopAddLocation(NPC, 1012.81, -33.25, -943.96, 2, 0)
	MovementLoopAddLocation(NPC, 1011.12, -33.38, -944.11, 2, 15)
	MovementLoopAddLocation(NPC, 1007.02, -33.72, -943.5, 2, 2)
	MovementLoopAddLocation(NPC, 984.11, -38.21, -934.89, 2, 0)
	MovementLoopAddLocation(NPC, 956.36, -32.88, -916.91, 2, 0)
	MovementLoopAddLocation(NPC, 930.09, -31.8, -893.23, 2, 15)
	MovementLoopAddLocation(NPC, 930.09, -31.8, -893.23, 2, 0)
	MovementLoopAddLocation(NPC, 932.81, -32.32, -898.3, 2, 0)
	MovementLoopAddLocation(NPC, 937.38, -33.51, -904.17, 2, 15)
	MovementLoopAddLocation(NPC, 950.18, -31.29, -896.21, 2, 0)
	MovementLoopAddLocation(NPC, 964.83, -26.84, -886.18, 2, 0)
	MovementLoopAddLocation(NPC, 980.13, -24.66, -878.19, 2, 0)
	MovementLoopAddLocation(NPC, 985.4, -24.18, -878.68, 2, 15)
	MovementLoopAddLocation(NPC, 987.89, -25.96, -897.45, 2, 0)
	MovementLoopAddLocation(NPC, 987.22, -26.88, -902.88, 2, 0)
	MovementLoopAddLocation(NPC, 982.33, -30.74, -910.45, 2, 0)
	MovementLoopAddLocation(NPC, 974.73, -34.29, -920.03, 2, 15)
	MovementLoopAddLocation(NPC, 971.1, -33.94, -920.07, 2, 0)
	MovementLoopAddLocation(NPC, 956.78, -30.99, -921.94, 2, 0)
	MovementLoopAddLocation(NPC, 950.43, -36.08, -918.87, 2, 0)
	MovementLoopAddLocation(NPC, 950.79, -34.17, -913.26, 2, 15)
	MovementLoopAddLocation(NPC, 943.1, -33.83, -907.91, 2, 0)
	MovementLoopAddLocation(NPC, 936.78, -31.74, -902.6, 2, 15)
end
end
