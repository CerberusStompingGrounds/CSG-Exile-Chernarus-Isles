//		Exile Occupation by second_coming
//		http://www.exilemod.com/profile/60-second_coming/
//
//      For support, visit:
//      http://www.exilemod.com/topic/12517-release-exile-occupation-roaming-ai-more/
//
//		This script uses the fantastic DMS by Defent and eraser1:
//		http://www.exilemod.com/topic/61-dms-defents-mission-system/
//
// Shared Config for each occupation monitor
SC_debug						= false;					// set to true to turn on debug features (not recommended for live servers)
SC_extendedLogging          	= false;                	// set to true for additional 
SC_infiSTAR_log					= false;						// true Use infiSTAR logging, false logs to server rpt
SC_useApexClasses           	= false;                 	// true if you want to use the Apex class list over rides, false to use vanilla Arma gear
SC_useMapOverrides          	= false;                 	// set to true to enable over riding options per map (see the bottom of this file for examples)
SC_maxAIcount					= 100;						// the maximum amount of AI, if the AI count is above this then additional AI won't spawn
SC_mapMarkers					= false;                	// Place map markers at the occupied areas (occupyPlaces and occupyMilitary only) true/false
SC_minFPS						= 5;				    	// any lower than minFPS on the server and additional AI won't spawn
SC_scaleAI						= 10;						// any more than _scaleAI players on the server and _maxAIcount is reduced for each extra player
SC_minDistanceToSpawnZones  	= 1100;                  	// Minimum distance in metres to the nearest spawn zone
SC_minDistanceToTraders     	= 1100;                  	// Minimum distance in metres to the nearest trader zone
SC_minDistanceToTerritory   	= 450;                  	// Minimum distance in metres to the nearest player territory
SC_minDistanceToPlayer      	= 350;                  	// Minimum distance in metres to the nearest player
SC_useWaypoints					= true;                 	// When spawning AI create waypoints to make them enter buildings (can affect performance when the AI is spawned and the waypoints are calculated)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Turn Modules On or Off (can be overridden in the map overrides section)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_processReporter				= false;                 	// log the a list of active server processes every 60 seconds (useful for debugging server problems)
SC_fastNights               	= false;						// true if you want night time to go faster than daytime
SC_occupyPlaces 				= true;						// true if you want villages,towns,cities patrolled by bandits
SC_occupyTraders            	= false;						// true if you want to create trader camps at positions specified in SC_occupyTraderDetails
SC_occupyStatic	 		    	= false;		    		// true if you want to add AI in specific locations
SC_occupyTransport 	        	= false;						// true if you want pubic transport (travels between traders)
SC_occupyLootCrates		    	= true;						// true if you want to have random loot crates with guards
SC_occupyRandomSpawn        	= true;                		// (WORK IN PROGRESS) true if you want random spawning AI that hunt for nearby players
SC_occupyMilitary 		    	= false;			    	// true if you want military buildings patrolled
SC_occupyVehicle				= true;						// true if you want to have roaming AI land vehicles
SC_occupySky					= false;						// true if you want to have roaming AI helis
SC_occupySea					= false;					// true if you want to have roaming AI boats
SC_occupyHeliCrashes			= true;						// true if you want to have Dayz style helicrashes
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Fast nights Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_fastNightsStarts         	= 18;                   	// Start fast nights at this hour (24 hour clock) eg. 18 for 6pm
SC_fastNightsMultiplierNight	= 24;                   	// the time multiplier to use at night (12 = 12x speed)
SC_fastNightsEnds           	= 6;                    	// End fast nights at this hour (24 hour clock) eg. 6 for 6am
SC_fastNightsMultiplierDay  	= 4;                    	// the time multiplier to use during daylight hours (4 = 4x speed)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Random Spawn Setup (Work in progress)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_randomSpawnMinPlayers    	= 1;                    	// Minimum number of players to be online before random spawning AI can spawn
SC_randomSpawnMaxGroups        	= 4;                    	// Maximum amount of random AI groups allowed at any time
SC_randomSpawnMinGroupSize      = 3;                    	// Minimum amount of random AI groups allowed per group
SC_randomSpawnMaxGroupSize      = 5;                    	// Maximum amount of random AI groups allowed per group
SC_randomSpawnChance			= 12;						// Percentage chance of spawning if suitable player found
SC_randomSpawnIgnoreCount		= false;						// true if you want spawn random AI groups regardless of overall AI count (they still count towards the total though)
SC_randomSpawnFrequency			= 3600;						// time in seconds between the possibility of random AI hunting the same player (1800 for 30 minutes)
SC_randomSpawnNearBases			= true;						// true if you want to allow random spawns in range of territories
SC_randomSpawnNearSpawns		= false;					// true if you want to allow random spawns in range of spawn zones
SC_randomSpawnTargetBambis		= false;					// true if you want to allow random spawns to target bambis
SC_randomSpawnAnnounce			= false;						// true if you want a warning toast issued to all players when AI spawns
SC_randomSpawnNameTarget		= false;					// true if you want to name the targeted player
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Occupy Places Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_occupyPlacesSurvivors		= false;						// true if you want a chance to spawn survivor AI as well as bandits (SC_occupyPlaces must be true to use this option)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Trader Base Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_occupyTraderDetails      	= [];  //["mapname","Name",[x,y,z],"filename",true] trader name, location, safezone true/false
        	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Occupy Static Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
SC_staticIgnoreNearbyPlayers	= false;// Spawn even if players are nearby
SC_staticIgnoreAICount			= false;// Ignore the AI count for Static AI Spawns
SC_staticBandits            	= [		//[[pos],ai count,radius,search buildings]
								  ];     
SC_staticSurvivors          	= [		//[[pos],ai count,radius,search buildings]
										//[[3770,8791,0],8,250,true]	
								  ];      
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Public Transport Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////							  
SC_colourTransport          	= false;                 // true if you want the public transport coloured
SC_secureTransport          	= false;                	// true if you want the public transport and pilot to be indestructible
SC_occupyTransportClass 		= ["Exile_Chopper_Orca_BlackCustom"]; // to always use the same vehicle, specify one option only
SC_occupyTransportStartPos  	= [];                   // if empty defaults to map centre
SC_TransportAirFixed        	= false;                // true if you want to use fixed waypoints for air transport, false to autodetect where trader zones are
SC_TransportAirWaypoints    	= [
                                    [1000,1000,0],
                                    [2000,2000,0],
                                    [3000,3000,0],
                                    [4000,4000,0]
                                ];
SC_TransportLandFixed       	= false;                // true if you want to use fixed waypoints for land transport, false to autodetect where trader zones are
SC_TransportLandWaypoints   	= [
                                    [1000,1000,0],
                                    [2000,2000,0],
                                    [3000,3000,0],
                                    [4000,4000,0]
                                ];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Loot Crate Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////								
SC_occupyLootCratesStatic   	= false;			    	// true if you want to have random loot crates spawn in pre-defined locations set in SC_occupyLootCratesLocations
SC_occupyLootCratesLocations	= [
                                    [1000,1000,0]
                                ];
SC_SpawnLootCrateGuards			= true;						// true if you want to enable AI guards
SC_numberofLootCrates       	= 1;                    	// if SC_occupyLootCrates = true spawn this many loot crates (overrided below for Namalsk)
SC_LootCrateGuards          	= 2;                    	// number of AI to spawn at each crate
SC_LootCrateGuardsRandomize 	= true;                 	// Use a random number of guards up to a maximum = SC_LootCrateGuards (so between 1 and SC_LootCrateGuards)
SC_occupyLootCratesMarkers		= false;						// true if you want to have markers on the loot crate spawns
SC_ropeAttach               	= true;                	// Allow lootcrates to be airlifted (for SC_occupyLootCrates and SC_occupyHeliCrashes)
// Array of possible common items to go in loot crates ["classname",fixed amount,random amount]
// ["Exile_Item_Matches",1,2] this example would add between 1 and 3 Exile_Item_Matches to the crate (1 + 0 to 2 more)
// to add a fixed amount make the second number 0
SC_LootCrateItems           	= [
                                    ["Exitem_documents",1,1],
                                    ["Exile_Item_GloriousKnakworst",1,2],
                                    ["Exile_Item_PlasticBottleFreshWater",1,2],
                                    ["Exile_Item_Beer",5,1],
                                    ["Exile_Item_BaseCameraKit",0,2],
                                    ["Exile_Item_InstaDoc",1,1],
                                    ["Exile_Item_Matches",1,0],
                                    ["Exile_Item_CookingPot",1,0],                      
                                    ["Exile_Item_MetalPole",1,0],
                                    ["Exile_Item_LightBulb",1,0],
                                    ["Exile_Item_FuelCanisterEmpty",1,0],
                                    ["Exile_Item_WoodPlank",0,8],
                                    ["Exile_Item_woodFloorKit",0,2],
                                    ["Exile_Item_WoodWindowKit",0,1],
                                    ["Exile_Item_WoodDoorwayKit",0,1],
                                    ["Exile_Item_WoodFloorPortKit",0,2],   
                                    ["Exile_Item_Laptop",0,1],
                                    ["Exile_Item_CodeLock",0,1],
									["Exile_Item_Cement",2,10],
									["Exile_Item_Sand",2,10],
									["Exile_Item_MetalWire",1,5],
									["Exile_Item_WaterCanisterEmpty",0,2],
									["Exile_Item_Shovel",0,1],
									["Exile_Item_MetalScrews",0,5]
                            ];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Blacklisted Zones
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////														
SC_blackListedAreas         	=   [
                                    [[3810,8887,0],     500,    "Chernarus"],       // Vybor Occupation DMS Static Mission
                                    [[12571,14337,0],   500,    "Altis"],           // Neochori Occupation DMS Static Mission
                                    [[3926,7523,0],     500,    "Namalsk"],         // Norinsk Occupation DMS Static Mission  
                                    [[3926,7523,0],     500,    "Napf"],            // Lenzburg Occupation DMS Static Mission   
									[[11685,2666,0],    500,    "Tanoa"],           // Lijnhaven Occupation DMS Static Mission
									[[11580,2051,0],	500,	"Tanoa"],			// Lijnhaven Traders
									[[7228,6986,0],		250,	"Tanoa"]			// Tanoa Airport
                                ];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Heli Crash Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////								
SC_occupyHeliCrashesStatic   	= false;			    	// true if you want to have random Heli Crash spawn in pre-defined locations set in SC_occupyHeliCrashesLocations
SC_occupyHeliCrashesLocations	= [
                                    [1000,1000,0]
                                ];
SC_HeliCrashesOnFire			= false;                 	// true if you want the crash on fire, false if you just want smoke
SC_SpawnHeliCrashGuards			= false;						// true if you want to enable AI guards
SC_numberofHeliCrashes      	= 2;						// if SC_occupyHeliCrashes = true spawn this many Heli Crashes
SC_HeliCrashGuards          	= 1;                    	// number of AI to spawn at each crate
SC_HeliCrashGuardsRandomize 	= true;                 	// Use a random number of guards up to a maximum = SC_HeliCrashGuards (so between 1 and SC_HeliCrashGuards)
// Array of possible common items to go in heli crash crates ["classname",fixed amount,random amount] NOT INCLUDING WEAPONS
// ["HandGrenade",0,2] this example would add between 0 and 2 HandGrenade to the crate (fixed 0 plus 0-2 random)
// to add a fixed amount make the second number 0
SC_HeliCrashItems           	=   [
                                    ["B_Parachute",1,1],
                                    ["H_CrewHelmetHeli_B",1,1],
                                    ["Exitem_documents",1,1],
                                    ["Exile_Item_InstaDoc",0,1],
                                    ["Exile_Item_PlasticBottleFreshWater",2,2],
                                    ["Exile_Item_EMRE",2,2]                                 
                                ];
SC_HeliCrashRareItems       	=   [
									["rhs_flightrecorder",0,1]
                                ];
SC_HeliCrashRareItemChance  	= 100;                   // percentage chance to spawn each SC_HeliCrashRareItems                         
// Array of possible weapons to place in the crate                            
SC_HeliCrashWeapons         	=   [
									"rhs_weap_t5000",
									"rhs_weap_XM2010",
									"rhs_weap_XM2010_wd",
									"rhs_weap_XM2010_sa",
									"rhs_weap_m14ebrri",
									"hlc_rifle_M14",
									"hlc_rifle_m14sopmod",
									"hlc_m249_pip1",
									"rhs_weap_m27iar",
									"rhs_weap_m16a4_grip",
									"hlc_rifle_l1a1slr",
									"hlc_rifle_SLR",
									"hlc_rifle_STG58F",
									"hlc_rifle_SLRchopmod",
									"rhs_weap_sr25",
									"rhs_weap_sr25_ec",
									"Exile_Weapon_AKS_Gold",
									"Exile_Item_SafeKit",
									"Exile_Item_Laptop",
									"rhs_weap_M107_w",
									"hlc_rifle_awMagnum_OD_ghillie",
									"hlc_rifle_awcovert_BL",
									"Exile_Item_CodeLock",
									"Exitem_money",
									"Exitem_briefcase",
									"Exitem_multimeter"
                                ];
                                
SC_HeliCrashWeaponsAmount   	= [1,3]; 	// [fixed amount to add, random amount to add]
SC_HeliCrashMagazinesAmount 	= [2,2]; 	// [fixed amount to add, random amount to add]
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Roaming Vehicle Setup - (applies to ground, air and sea vehicles)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_minimumCrewAmount        	= 2;     	// Minimum amount of AI allowed in a vehicle
SC_maximumCrewAmount        	= 5;     	// Maximum amount of AI allowed in a vehicle
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Roaming Land Vehicle Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SC_maxNumberofVehicles 	    	= 5;		// How many roaming vehicles to spawn	
SC_occupyLandVehicleIgnoreCount		= false;	// true if you want spawn vehicles regardless of overall AI count
SC_occupyVehiclesLocked			= false;	// true if AI vehicles to stay locked until all the linked AI are dead		
SC_occupyVehicleSurvivors		= false;	// true if you want a chance to spawn survivor AI as well as bandits (SC_occupyVehicle must be true to use this option)
SC_occupyVehicleUseFixedPos		= false;		// True if you want to specify the patrol positions and radius of the area to patrol / false for random

											// if you set SC_maxNumberofVehicles higher than the number of static positions, the remainder will be random
											// they will also ignore any blacklisted areas
SC_occupyVehicleFixedPositions	= [
                                    [[4434,2892,0],2000,"Tanoa"],	// [[x,y,z],radius,"mapname"] leave no spaces between 
                                    [[2238,6717,0],2000,"Tanoa"]
								  ];
// Array of arrays of ground vehicles which can be used by AI patrols (the number next to next vehicle is the maximum amount of that class allowed, 0 for no limit)				
SC_VehicleClassToUse 			=   [	
									["rhs_uaz_open_MSV_01",1],
									["rhsusf_m998_w_4dr",1],
									["Exile_Car_Golf_Black",1],
									["Exile_Car_Volha_Black",1],
									["Octavia_Civ_01",1]
                                ];
SC_VehicleClassToUseRare		=   [	
									["RHS_Ural_MSV_01",1],
									["rhs_kamaz5350",1],
									["rhs_kamaz5350_open",1],
									["RHS_Ural_Open_MSV_01",1],
									["RHS_Ural_Civ_01",1],
									["RHS_Ural_Civ_02",1],
									["RHS_Ural_Open_Civ_01",1],
									["RHS_Ural_Open_Civ_02",1],
									["rhs_gaz66_flat_msv",1],
									["rhs_gaz66o_msv",1],
									["rhsusf_M977A4_usarmy_wd",1],
									["Exile_Car_Strider",1],
									["rhs_tigr_msv",1],
									["rhs_tigr_3camo_msv",1],
									["rhs_tigr_m_msv",1],
									["rhs_tigr_m_3camo_msv",1],
									["rhsusf_m1025_w",1],
									["rhssaf_m1025_olive",1],
									["Exile_Car_BTR40_Camo",1],
									["Exile_Car_Hunter",1]
                                ];								
// Array of arrays of ground vehicles which can be used by Survivor AI patrols (the number next to next vehicle is the maximum amount of that class allowed, 0 for no limit)									
SC_SurvivorVehicleClassToUse 			=   [	
									["rhs_uaz_open_MSV_01",1],
									["rhsusf_m998_w_4dr",1],
									["Exile_Car_Golf_Black",1],
									["Exile_Car_Volha_Black",1],
									["Octavia_Civ_01",1]
                                ];
SC_SurvivorVehicleClassToUseRare		=   [	
									["RHS_Ural_MSV_01",1],
									["rhs_kamaz5350",1],
									["rhs_kamaz5350_open",1],
									["RHS_Ural_Open_MSV_01",1],
									["RHS_Ural_Civ_01",1],
									["RHS_Ural_Civ_02",1],
									["RHS_Ural_Open_Civ_01",1],
									["RHS_Ural_Open_Civ_02",1],
									["rhs_gaz66_flat_msv",1],
									["rhs_gaz66o_msv",1],
									["rhsusf_M977A4_usarmy_wd",1]
                                ];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Roaming Aircraft Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
// Settings for roaming airborne AI (non armed helis will just fly around)
SC_maxNumberofHelis		    	= 1;
SC_occupySkyVehicleIgnoreCount		= false;	// true if you want spawn vehicles regardless of overall AI count
// Array of aircraft which can be used by AI patrols (the number next to next vehicle is the maximum amount of that class allowed, 0 for no limit)
SC_HeliClassToUse 		    	=   [ ["Exile_Chopper_Huey_Armed_Green",0] ];
SC_occupyHeliUseFixedPos		= true;		// True if you want to specify the patrol positions and radius of the area to patrol / false for random

											// if you set SC_maxNumberofHelis higher than the number of static positions, the remainder will be random
											// they will also ignore any blacklisted areas
SC_occupyHeliFixedPositions		= [
                                    [[4434,2892,400],2000,"Tanoa"],	// [[x,y,z],radius,"mapname"] leave no spaces between 
                                    [[2238,6717,400],2000,"Tanoa"]  
								];							
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Roaming Boats Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Settings for roaming seaborne AI (non armed boats will just sail around)
SC_maxNumberofBoats		    = 1;
SC_occupySeaVehicleIgnoreCount		= false;	// true if you want spawn vehicles regardless of overall AI count
// Array of boats which can be used by AI patrols (the number next to next vehicle is the maximum amount of that class allowed, 0 for no limit)
SC_BoatClassToUse 		    =   [	
                                    ["B_Boat_Armed_01_minigun_F",1],
                                    ["I_Boat_Armed_01_minigun_F",1]
                                ];							
SC_occupyBoatUseFixedPos		= false;	// True if you want to specify the patrol positions and radius of the area to patrol / false for random

											// if you set SC_maxNumberofBoats higher than the number of static positions, the remainder will be random
											// they will also ignore any blacklisted areas
SC_occupyBoatFixedPositions		= [
                                    [[200,200,0],2000,"Tanoa"],	// [[x,y,z],radius,"mapname"] leave no spaces between 
                                    [[400,400,0],2000,"Tanoa"]
								];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Occupy Military Setup
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Array of buildings to add military patrols to
SC_buildings                	= [	"Land_TentHangar_V1_F","Land_Hangar_F","Land_Airport_Tower_F","Land_Cargo_House_V1_F",
                                    "Land_Cargo_House_V3_F","Land_Cargo_HQ_V1_F","Land_Cargo_HQ_V2_F","Land_Cargo_HQ_V3_F"
                                ]; 
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	AI Setup (used in multiple modules)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
SC_useRealNames         		= true;   
// Arrays of names used to generate names for AI
SC_SurvivorFirstNames   		= [
											"Kutyakov",
											"Cowboy Tanaka",
											"Boris",
											"Vladmir",
											"Vasiliy",
											"Bolbi",
											"Ivan",
											"Petrov",
											"Maxwell P Dickhead",
											"Sergey",
											"Bobkov",
											"Cheeki",
											"Joeseph",
											"Strelok",
											"Mechenyi",
											"Artyom",
											"Nikita",
											"Mikhail",
											"Gopnik",
											"Leonid",
											"Filip",
											"Timofey",
											"Kiril",
											"Aleksei",
											"Alyosha",
											"Ruslan",
											"Stepan",
											"Abram",
											"Vitaly",
											"Anatoli",
											"Yuri",
											"Bobra",
											"Andrew",
											"Vladislav",
											"Vlad",
											"Dmitry",
											"Igor",
											"Yakov",
											"Semechki"
										];
SC_SurvivorLastNames    		= [
											"Yaroslavovich",
											"Putin",
											"Stroganovsky",
											"Kalashnikov",
											"Shinoksky",
											"Breeki",
											"Stalin",
											"Lenin",
											"Gopnik",
											"Krushchev",
											"Brezhnev",
											"Gorbachev",
											"Kamenev",
											"Pushkin",
											"Tolstoy",
											"Gurevich",
											"Kuznetsov",
											"Bychkov",
											"Mikoyan",
											"Strugackiy",
											"Malyukov",
											"Sarafanov",
											"Semechki",
											"Ivanov",
											"Popov",
											"Smirnov",
											"Volkov",
											"Pavlov",
											"Orlov",
											"Kuznetsov",
											"Szczucki"
										]; 
SC_BanditFirstNames     		= [
											"Kutyakov",
											"Boris",
											"Vladmir",
											"Vasiliy",
											"Bolbi",
											"Ivan",
											"Petrov",
											"Sergey",
											"Bobkov",
											"Cheeki",
											"Joeseph",
											"Strelok",
											"Mechenyi",
											"Artyom",
											"Nikita",
											"Mikhail",
											"Gopnik",
											"Leonid",
											"Filip",
											"Timofey",
											"Kiril",
											"Aleksei",
											"Alyosha",
											"Ruslan",
											"Stepan",
											"Abram",
											"Vitaly",
											"Anatoli",
											"Yuri",
											"Bobra",
											"Andrew",
											"Vladislav",
											"Vlad",
											"Dmitry",
											"Igor",
											"Yakov",
											"Semechki"
										];
SC_BanditLastNames      		= [
											"Yaroslavovich",
											"Putin",
											"Stroganovsky",
											"Kalashnikov",
											"Shinoksky",
											"Breeki",
											"Stalin",
											"Lenin",
											"Gopnik",
											"Krushchev",
											"Brezhnev",
											"Gorbachev",
											"Kamenev",
											"Pushkin",
											"Tolstoy",
											"Gurevich",
											"Kuznetsov",
											"Bychkov",
											"Mikoyan",
											"Strugackiy",
											"Malyukov",
											"Sarafanov",
											"Semechki",
											"Ivanov",
											"Popov",
											"Smirnov",
											"Volkov",
											"Pavlov",
											"Orlov",
											"Kuznetsov",
											"Szczucki"
										];
		
SC_SurvivorsChance          	= 0;						// chance in % to spawn survivors instead of bandits (for places and land vehicles)
SC_SurvivorsFriendly        	= false;                 	// true if you want survivors to be friendly to players (until they are attacked by players)
															// false if you want survivors to be aggressive to players
// Possible equipment for survivor AI to spawn with 
// spawning survivors without vests or backpacks will result in them having no ammunition                                                   
SC_SurvivorUniforms         	= ["Exile_Uniform_BambiOverall"]; 
SC_SurvivorVests            	= ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli"];  
SC_SurvivorHeadgear         	= []; 
SC_SurvivorWeapon           	= ["arifle_MXC_F","arifle_TRG20_F"];
SC_SurvivorWeaponAttachments	= [];
SC_SurvivorMagazines        	= ["Exile_Item_Vishpirin","Exile_Item_Bandage"];
SC_SurvivorPistol           	= ["hgun_Rook40_F"];
SC_SurvivorPistolAttachments	= [];
SC_SurvivorAssignedItems    	= ["ItemMap","ItemCompass","ItemRadio","ItemWatch","Exile_Item_XM8"]; // all these items will be added
SC_SurvivorLauncher         	= [];
SC_SurvivorBackpack         	= [];
// Possible equipment for bandit AI to spawn with 
// spawning bandits without vests or backpacks will result in them having no ammunition                                                    
SC_BanditUniforms           	= [
											"U_I_C_Soldier_Para_1_F",
											"U_I_C_Soldier_Para_2_F",
											"U_I_C_Soldier_Para_3_F",
											"U_I_C_Soldier_Para_4_F",
											"U_I_C_Soldier_Para_5_F",
											"U_I_C_Soldier_Bandit_1_F",
											"U_I_C_Soldier_Bandit_2_F",
											"U_I_C_Soldier_Bandit_3_F",
											"U_I_C_Soldier_Bandit_4_F",
											"U_I_C_Soldier_Bandit_5_F",
											"U_I_C_Soldier_Camo_F",
											"U_C_man_sport_2_F",
											"U_C_Man_casual_1_F",
											"U_C_Man_casual_3_F",
											"U_C_Man_casual_4_F",
											"U_C_Man_casual_5_F",
											"U_C_Man_casual_6_F",
											"FGN_RU_Gorka_Skol",					
											"FGN_RU_Gorka_Leto",				
											"FGN_RU_Krot_Berezhka",			
											"FGN_RU_Krot_Skol",					
											"FGN_M88_Khaki_VV",					
											"FGN_M88_KhakiVSR_VV",				
											"FGN_CauR_M88_M81Black",				
											"FGN_CauR_M88_Tiger",					
											"FGN_M88_VSR2_VV",				
											"FGN_M88_VSRKhaki_VV",				
											"FGN_CauR_M88_M81",				
											"FGN_CauR_M88_M81Green",				
											"FGN_CauR_M88_M81Tiger",				
											"FGN_M88_VSR2_VDV",				
											"FGN_M88_TTsKOVSR_VMF",				
											"FGN_M88_VSRTTsKO_VMF",			
											"FGN_CauR_M93_M81",					
											"FGN_CauR_M93_M81Green",				
											"FGN_RU_NPOSM_Podlesok",				
											"FGN_CauR_Sklon_Kamysh",				
											"FGN_CauR_Smock_BlackWoodland",		
											"FGN_CauR_Smock_Woodland",			
											"FGN_RU_Splav_SMK",					
											"FGN_RU_SPOSN_Leto",				
											"FGN_RU_Sumrak_BerezhkaY",
											"rhsgref_uniform_alpenflage",
											"rhsgref_uniform_flecktarn",
											"rhsgref_uniform_para_ttsko_mountain",
											"rhsgref_uniform_para_ttsko_oxblood",
											"rhsgref_uniform_specter",
											"rhsgref_uniform_tigerstripe",
											"rhsgref_uniform_ttsko_forest",
											"rhsgref_uniform_ttsko_mountain",
											"rhsgref_uniform_vsr",
											"rhsgref_uniform_woodland",
											"rhsgref_uniform_woodland_olive",
											"rhssaf_uniform_m10_digital",
											"rhssaf_uniform_m10_digital_summer",
											"rhssaf_uniform_m93_oakleaf",
											"rhssaf_uniform_m93_oakleaf_summer",
											"rhs_uniform_m88_patchless",
											"rhs_uniform_emr_patchless",
											"rhs_uniform_flora_patchless",
											"rhs_uniform_flora_patchless_alt",
											"rhs_uniform_FROG01_m81",
											"rhs_uniform_FROG01_wd",
											"rhs_uniform_m88_patchless",
											"rhs_uniform_mflora_patchless",
											"rhs_uniform_vdv_mflora",
											"rhs_uniform_msv_emr",
											"rhs_uniform_flora",
											"rhs_uniform_vdv_flora",
											"rhs_uniform_gorka_r_g",
											"rhs_uniform_gorka_r_y",
											"rhs_chdkz_uniform_5",
											"rhs_chdkz_uniform_4",
											"rhs_chdkz_uniform_3",
											"rhs_chdkz_uniform_2",
											"rhs_chdkz_uniform_1",
											"rhs_uniform_mvd_izlom",
											"TRYK_hoodie_Blk",
											"TRYK_hoodie_FR",
											"TRYK_hoodie_Wood",
											"TRYK_hoodie_3c",
											"TRYK_T_camo_3c",
											"TRYK_T_camo_Wood",
											"TRYK_T_camo_wood_marpat",
											"TRYK_T_camo_3c_BG",
											"TRYK_T_camo_Wood_BG",
											"TRYK_T_PAD",
											"TRYK_T_OD_PAD",
											"TRYK_T_BLK_PAD",
											"TRYK_T_T2_PAD",
											"TRYK_T_CSAT_PAD",
											"TRYK_U_nohoodPcu_gry",
											"TRYK_U_hood_nc",
											"TRYK_U_hood_mc",
											"TRYK_U_denim_hood_blk",
											"TRYK_U_denim_hood_mc",
											"TRYK_U_denim_hood_3c",
											"TRYK_U_denim_hood_nc",
											"TRYK_U_denim_jersey_blu",
											"TRYK_U_denim_jersey_blk",
											"TRYK_shirts_PAD",
											"TRYK_shirts_OD_PAD",
											"TRYK_shirts_BLK_PAD",
											"TRYK_shirts_PAD_BK",
											"TRYK_shirts_OD_PAD_BK",
											"TRYK_shirts_BLK_PAD_BK",
											"TRYK_shirts_PAD_BLW",
											"TRYK_shirts_OD_PAD_BLW",
											"TRYK_shirts_BLK_PAD_BLW",
											"TRYK_shirts_PAD_YEL",
											"TRYK_shirts_OD_PAD_YEL",
											"TRYK_shirts_BLK_PAD_YEL",
											"TRYK_shirts_PAD_RED2",
											"TRYK_shirts_OD_PAD_RED2",
											"TRYK_shirts_BLK_PAD_RED2",
											"TRYK_shirts_PAD_BLU3",
											"TRYK_shirts_OD_PAD_BLU3",
											"TRYK_shirts_BLK_PAD_BLU3",
											"TRYK_shirts_DENIM_R",
											"TRYK_shirts_DENIM_BL",
											"TRYK_shirts_DENIM_BK",
											"TRYK_shirts_DENIM_RED2",
											"TRYK_shirts_DENIM_ylb",
											"TRYK_shirts_DENIM_od",
											"TRYK_shirts_DENIM_R_Sleeve",
											"TRYK_shirts_DENIM_BL_Sleeve",
											"TRYK_shirts_DENIM_BK_Sleeve",
											"TRYK_shirts_DENIM_ylb_Sleeve",
											"TRYK_shirts_DENIM_od_Sleeve",
											"TRYK_shirts_PAD_BL",
											"TRYK_shirts_OD_PAD_BL",
											"TRYK_shirts_BLK_PAD_BL",
											"TRYK_U_taki_COY",
											"TRYK_U_taki_BL",
											"TRYK_U_taki_BLK",
											"TRYK_U_Bts_PCUGs",
											"TRYK_U_Bts_PCUODs",
											"TRYK_U_B_PCUODHs",
											"TRYK_ZARATAKI",
											"TRYK_ZARATAKI2",
											"U_C_Journalist",
											"U_C_Poloshirt_burgundy",
											"U_C_Poloshirt_salmon",
											"U_C_Poloshirt_stripped",
											"U_C_Poloshirt_tricolour",
											"U_C_Poor_1",
											"U_C_Poor_2",
											"U_IG_Guerilla1_1",
											"U_IG_Guerilla2_1",
											"U_IG_Guerilla2_2",
											"U_IG_Guerilla2_3",
											"U_IG_Guerilla3_1",
											"U_BG_Guerilla2_1",
											"U_IG_Guerilla3_2",
											"U_BG_Guerrilla_6_1",
											"U_BG_Guerilla1_1",
											"U_BG_Guerilla2_2",
											"U_BG_Guerilla2_3",
											"U_BG_Guerilla3_1",
											"U_BG_leader",
											"U_IG_leader",
											"U_I_G_resistanceLeader_F"
										];
SC_BanditVests              	= [							// Vests for Assault Class
											"FGN_RU_6B513_Khaki",
											"FGN_RU_6B513",
											"FGN_RU_6B513_TTsKO",
											"FGN_RU_6B513_VSR",
											"FGN_RU_6B519_Khaki",
											"FGN_RU_6B519",
											"FGN_RU_6B519_TTsKO",
											"FGN_RU_6B519_VSR",
											"FGN_RU_V95_Black",
											"FGN_RU_V95_Kamysh",
											"FGN_RU_V95_KKO",
											"FGN_RU_V95_Podlesok",
											"FGN_RU_V95_VSR",
											"FGN_RU_V95_Black_OMON",
											"FGN_RU_V95_Kamysh_OMON",
											"FGN_RU_V95_KKO_OMON",
											"FGN_RU_V95_Podlesok_OMON",
											"FGN_RU_V95_VSR_OMON",
											"FGN_RU_V95_Black_2",
											"FGN_RU_V95_Kamysh_2",
											"FGN_RU_V95_KKO_2",
											"FGN_RU_V95_Podlesok_2",
											"FGN_RU_V95_VSR_2",
											"rhsgref_6b23_khaki",
											"rhsgref_6b23_khaki_nco",
											"rhsgref_6b23_khaki_rifleman",
											"rhsgref_6b23_ttsko_digi",
											"rhsgref_6b23_ttsko_digi_nco",
											"rhsgref_6b23_ttsko_digi_rifleman",
											"rhsgref_6b23_ttsko_forest",
											"rhsgref_6b23_ttsko_forest_rifleman",
											"rhsgref_6b23_ttsko_mountain",
											"rhsgref_6b23_ttsko_mountain_nco",
											"rhsgref_6b23_ttsko_mountain_rifleman",
											"rhsgref_otv_digi",
											"rhsgref_otv_khaki",
											"rhsgref_TacVest_ERDL",
											"rhssaf_vest_md98_woodland",
											"rhssaf_vest_md98_md2camo",
											"rhssaf_vest_md98_digital",
											"rhssaf_vest_md98_rifleman",
											"rhssaf_vest_otv_md2camo",
											"rhssaf_vest_md99_md2camo_rifleman",
											"rhssaf_vest_md99_digital_rifleman",
											"rhssaf_vest_md99_woodland_rifleman",
											"rhssaf_vest_md99_md2camo",
											"rhssaf_vest_md99_digital",
											"rhssaf_vest_md99_woodland",
											"rhs_6sh92",
											"rhs_6sh92_radio",
											"rhs_6sh92_vog",
											"rhs_6sh92_vog_headset",
											"rhs_6sh92_headset",
											"rhs_6sh92_digi",
											"rhs_6sh92_digi_radio",
											"rhs_6sh92_digi_vog",
											"rhs_6sh92_digi_vog_headset",
											"rhs_6sh92_digi_headset",
											"rhs_6b23",
											"rhs_6b23_crew",
											"rhs_6b23_engineer",
											"rhs_6b23_rifleman",
											"rhs_6b23_6sh92",
											"rhs_6b23_6sh92_radio",
											"rhs_6b23_6sh92_vog",
											"rhs_6b23_6sh92_vog_headset",
											"rhs_6b23_6sh92_headset",
											"rhs_6b23_6sh92_headset_mapcase",
											"rhs_6b23_digi",
											"rhs_6b23_digi_crew",
											"rhs_6b23_digi_engineer",
											"rhs_6b23_digi_rifleman",
											"rhs_6b23_digi_6sh92",
											"rhs_6b23_digi_6sh92_radio",
											"rhs_6b23_digi_6sh92_vog",
											"rhs_6b23_digi_6sh92_vog_headset",
											"rhs_6b23_digi_6sh92_headset",
											"rhs_6b23_digi_6sh92_headset_mapcase",
											"rhs_6b23_ML",
											"rhs_6b23_ML_crew",
											"rhs_6b23_ML_engineer",
											"rhs_6b23_ML_rifleman",
											"rhs_6b23_ML_6sh92",
											"rhs_6b23_ML_6sh92_radio",
											"rhs_6b23_ML_6sh92_vog",
											"rhs_6b23_ML_6sh92_vog_headset",
											"rhs_6b23_ML_6sh92_headset",
											"rhs_6b23_ML_6sh92_headset_mapcase",
											"rhs_6b43",
											"rhs_vydra_3m",
											"V_Press_F",
											"V_Rangemaster_belt",
											"V_TacVest_blk",
											"V_TacVest_blk_POLICE",
											"V_TacVest_brn",
											"V_TacVest_camo",
											"V_TacVest_khk",
											"V_TacVest_oli",
											"V_TacVestCamo_khk",
											"V_TacVestIR_blk",
											"V_I_G_resistanceLeader_F",
											"V_BandollierB_blk",
											"V_BandollierB_cbr",
											"V_BandollierB_khk",
											"V_BandollierB_oli",
											"V_BandollierB_rgr",
											"V_Chestrig_blk",
											"V_Chestrig_khk",
											"V_Chestrig_oli",
											"V_Chestrig_rgr"
										];
SC_BanditHeadgear           	= [							// Helmets for Assault Class
											"FGN_CauR_Beanie_Black",
											"FGN_CauR_Beanie_Brown",
											"FGN_CauR_Beanie_Woodland",
											"FGN_CauR_Boonie_M81",
											"FGN_FieldCap_Kamysh",
											"FGN_CauR_Pakol_03",
											"FGN_CauR_Pakol_01",
											"FGN_CauR_Pakol_02",
											"FGN_CauR_PatrolCap_M81",
											"FGN_SSH68_Flora",
											"FGN_SSH68_Khaki",
											"FGN_SSH68_KLMK",
											"FGN_SSH68_TTsKO",
											"FGN_SSH68_TTsKO2",
											"FGN_SSH68_VSR2",
											"FGN_SSH68_VSR",
											"FGN_SferaS_Green",
											"FGN_SferaS_VSR",
											"FGN_Sfera_Green",
											"FGN_Sfera_VSR",
											"FGN_ZSH12",
											"FGN_ZSH12_Black",
											"FGN_ZSH12_Balaclava",
											"rhsgref_6b27m",
											"rhsgref_6b27m_ttsko_digi",
											"rhsgref_6b27m_ttsko_forest",
											"rhsgref_6b27m_ttsko_mountain",
											"rhsgref_Booniehat_alpen",
											"rhsgref_fieldcap",
											"rhsgref_fieldcap_ttsko_digi",
											"rhsgref_fieldcap_ttsko_forest",
											"rhsgref_fieldcap_ttsko_mountain",
											"rhsgref_patrolcap_specter",
											"rhsgref_ssh68",
											"rhsgref_ssh68_emr",
											"rhsgref_ssh68_ttsko_digi",
											"rhsgref_ssh68_ttsko_forest",
											"rhsgref_ssh68_ttsko_mountain",
											"rhssaf_helmet_m59_85_nocamo",
											"rhssaf_helmet_m59_85_oakleaf",
											"rhssaf_helmet_m97_olive_nocamo",
											"rhssaf_helmet_m97_olive_nocamo_black_ess",
											"rhssaf_helmet_m97_olive_nocamo_black_ess_bare",
											"rhssaf_helmet_m97_black_nocamo",
											"rhssaf_helmet_m97_black_nocamo_black_ess",
											"rhssaf_helmet_m97_black_nocamo_black_ess_bare",
											"rhssaf_Helmet_m97_woodland",
											"rhssaf_Helmet_m97_digital",
											"rhssaf_Helmet_m97_md2camo",
											"rhssaf_Helmet_m97_oakleaf",
											"rhssaf_helmet_m97_woodland_black_ess",
											"rhssaf_helmet_m97_woodland_black_ess_bare",
											"rhssaf_helmet_m97_digital_black_ess",
											"rhssaf_helmet_m97_digital_black_ess_bare",
											"rhssaf_helmet_m97_md2camo_black_ess",
											"rhssaf_helmet_m97_md2camo_black_ess_bare",
											"rhssaf_helmet_m97_oakleaf_black_ess",
											"rhssaf_helmet_m97_oakleaf_black_ess_bare",
											"rhssaf_helmet_hgu56p",
											"rhssaf_booniehat_digital",
											"rhssaf_booniehat_md2camo",
											"rhssaf_booniehat_woodland",
											"rhs_6b27m_digi",
											"rhs_6b27m_digi_ess",
											"rhs_6b27m_digi_bala",
											"rhs_6b27m_digi_ess_bala",
											"rhs_6b27m",
											"rhs_6b27m_bala",
											"rhs_6b27m_ess",
											"rhs_6b27m_ess_bala",
											"rhs_6b27m_ml",
											"rhs_6b27m_ml_ess",
											"rhs_6b27m_ml_bala",
											"rhs_6b27m_ML_ess_bala",
											"rhs_6b27m_green",
											"rhs_6b27m_green_ess",
											"rhs_6b27m_green_ess_bala",
											"rhs_6b26_green",
											"rhs_6b26_bala_green",
											"rhs_6b26_ess_green",
											"rhs_6b26_ess_bala_green",
											"rhs_6b26",
											"rhs_6b26_bala",
											"rhs_6b26_ess",
											"rhs_6b26_ess_bala",
											"rhs_6b28_green",
											"rhs_6b28_green_bala",
											"rhs_6b28_green_ess",
											"rhs_6b28_green_ess_bala",
											"rhs_6b28",
											"rhs_6b28_bala",
											"rhs_6b28_ess",
											"rhs_6b28_ess_bala",
											"rhs_6b28_flora",
											"rhs_6b28_flora_bala",
											"rhs_6b28_flora_ess",
											"rhs_6b28_flora_ess_bala",
											"rhs_altyn_novisor",
											"rhs_altyn_novisor_bala",
											"rhs_altyn_novisor_ess",
											"rhs_altyn_novisor_ess_bala",
											"rhs_altyn_visordown",
											"rhs_altyn",
											"rhs_altyn_bala",
											"TRYK_ESS_CAP",
											"TRYK_ESS_CAP_OD",
											"TRYK_R_CAP_BLK",
											"TRYK_R_CAP_OD_US",
											"TRYK_r_cap_blk_Glasses",
											"TRYK_r_cap_od_Glasses",
											"TRYK_H_headsetcap_Glasses",
											"TRYK_H_headsetcap_blk_Glasses",
											"TRYK_H_headsetcap_od_Glasses",
											"TRYK_Headphone_NV",
											"TRYK_balaclava_BLACK_NV",
											"TRYK_balaclava_NV",
											"TRYK_balaclava_BLACK_EAR_NV",
											"TRYK_balaclava_EAR_NV",
											"TRYK_Shemagh_MESH_NV",
											"TRYK_Shemagh_G_NV",
											"TRYK_Shemagh_EAR_NV",
											"TRYK_Shemagh_EAR_G_NV",
											"TRYK_ShemaghESSOD_NV",
											"TRYK_Shemagh_shade_MESH",
											"TRYK_Shemagh_shade_N",
											"TRYK_Shemagh_shade_G_N",
											"TRYK_Headset_NV",
											"TRYK_G_bala_ess_NV",
											"TRYK_bandana_NV",
											"TRYK_SPgearG_NV",
											"TRYK_SPgear_PHC1_NV",
											"TRYK_SPgear_PHC2_NV",
											"TRYK_Kio_Balaclava",
											"H_Cap_blk",
											"H_Watchcap_blk",
											"H_Watchcap_camo",
											"H_Watchcap_khk",
											"H_Watchcap_sgg",
											"H_MilCap_rucamo",
											"H_Bandanna_camo",
											"H_Bandanna_cbr",
											"H_Bandanna_gry",
											"H_Bandanna_khk",
											"H_Bandanna_khk_hs",
											"H_Bandanna_sgg",
											"H_Hat_camo",
											"H_Shemag_khk",
											"H_Shemag_olive",
											"H_Shemag_olive_hs",
											"H_ShemagOpen_khk",
											"H_TurbanO_blk"
];
SC_BanditWeapon             	= [
											"Exile_Weapon_AKS_Gold",
											"hlc_rifle_ak74",
											"hlc_rifle_ak74_MTK",
											"hlc_rifle_ak74_dirty",
											"hlc_rifle_ak74_dirty2",
											"hlc_rifle_aks74",
											"hlc_rifle_aks74_MTK",
											"hlc_rifle_aks74u",
											"hlc_rifle_aks74u_MTK",
											"hlc_rifle_ak47",
											"hlc_rifle_akm",
											"hlc_rifle_akm_MTK",
											"hlc_rifle_ak12",
											"hlc_rifle_aku12",
											"hlc_rifle_rpk74n",
											"hlc_rifle_ak12gl",
											"hlc_rifle_akmgl",
											"hlc_rifle_aks74_GL",
											"hlc_rifle_aek971",
											"hlc_rifle_aek971_mtk",
											"hlc_rifle_RK62",
											"hlc_rifle_slr107u",
											"hlc_rifle_slr107u_MTK",
											"hlc_rifle_ak74m",
											"hlc_rifle_ak74m_gl",
											"hlc_rifle_ak74m_MTK",
											"hlc_rifle_RU556",
											"hlc_rifle_RU5562",
											"rhs_weap_akm",
											"rhs_weap_akm_gp25",	
											"rhs_weap_akms",
											"rhs_weap_akms_gp25",
											"rhs_weap_ak74n",
											"rhs_weap_ak74n_gp25",
											"rhs_weap_ak74n_gp25_npz",
											"rhs_weap_ak74n_npz",
											"rhs_weap_ak74_3",
											"rhs_weap_ak74_2",
											"rhs_weap_aks74_2",
											"rhs_weap_m70b1n",
											"rhs_weap_m70b3n",							
											"rhs_weap_m70b3n_pbg40",				
											"rhs_weap_m21a_pr_pbg40",		
											"rhs_weap_m21a_pbg40",
											"rhs_weap_m21a",
											"rhs_weap_m21a_fold",							
											"rhs_weap_m21a_pr",								
											"rhs_weap_m21s",									
											"rhs_weap_m21s_fold",						
											"rhs_weap_m21s_pr",			
											"rhs_weap_m70ab2",								
											"rhs_weap_m70ab2_fold",							
											"rhs_weap_m70b1",							
											"rhs_weap_m76",								
											"rhs_weap_m92",								
											"rhs_weap_m92_fold",
											"SMA_M4afg",
											"SMA_M4CQBRMOE"
										];
SC_BanditWeaponAttachments  	= [];
SC_BanditMagazines          	= ["Exile_Item_InstaDoc","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_DuctTape","Exile_Item_PlasticBottleFreshWater","Exile_Item_Energydrink","Exile_Item_EMRE","Exile_Item_Cheathas","Exile_Item_Noodles","Exile_Item_BBQSandwich","Exile_Item_Catfood"];
SC_BanditPistol             	= [							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
											"rhs_weap_pya",
											"rhs_weap_makarov_pm",
											"rhs_weap_pp2000_folded",
											"rhsusf_weap_m9",
											"hgun_Pistol_heavy_02_F",
											"hgun_Pistol_Signal_F",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus"
										];
SC_BanditPistolAttachments  	= [];
SC_BanditAssignedItems      	= ["ItemMap","ItemCompass","ItemRadio","ItemWatch"]; // all these items will be added
SC_BanditLauncher           	= [];
SC_BanditBackpack           	= [							// Backpacks for Assault Class
											"rhssaf_kitbag_md2camo",
											"rhssaf_kitbag_digital",
											"rhssaf_kitbag_smb",
											"rhs_assault_umbts",
											"rhs_assault_umbts_engineer_empty",
											"rhs_sidor",
											"rhs_rpg_empty",
											"TRYK_B_AssaultPack_Type2camo",
											"TRYK_B_Kitbag_Base",
											"TRYK_B_Kitbag_blk",
											"TRYK_B_Kitbag_aaf",
											"TRYK_B_Coyotebackpack",
											"TRYK_B_Coyotebackpack_OD",
											"TRYK_B_Coyotebackpack_BLK",
											"TRYK_B_Alicepack",
											"TRYK_B_Belt",
											"TRYK_B_Belt_BLK",
											"TRYK_B_Belt_CYT",
											"TRYK_B_Belt_br",
											"TRYK_B_Belt_GR",
											"TRYK_B_Belt_AOR1",
											"TRYK_B_Belt_AOR2",
											"TRYK_B_BAF_BAG_BLK",
											"TRYK_B_BAF_BAG_CYT",
											"TRYK_B_BAF_BAG_OD",
											"TRYK_B_BAF_BAG_rgr",
											"TRYK_B_tube_cyt",
											"TRYK_B_tube_od",
											"TRYK_B_tube_blk",
											"TRYK_B_FieldPack_Wood",
											"B_AssaultPack_blk",
											"B_AssaultPack_cbr",
											"B_AssaultPack_dgtl",
											"B_AssaultPack_khk",
											"B_AssaultPack_rgr",
											"B_AssaultPack_sgg",
											"B_FieldPack_blk",
											"B_FieldPack_cbr",
											"B_FieldPack_ocamo",
											"B_HuntingBackpack",
											"B_Kitbag_cbr",
											"B_Kitbag_sgg"
										];
// Possible equipment for random ai to spawn with 
// spawning random ai without vests or backpacks will result in them having no ammunition                                                    
SC_RandomUniforms           	= [							// Uniforms for Assault Class
											"U_I_C_Soldier_Para_1_F",
											"U_I_C_Soldier_Para_2_F",
											"U_I_C_Soldier_Para_3_F",
											"U_I_C_Soldier_Para_4_F",
											"U_I_C_Soldier_Para_5_F",
											"U_I_C_Soldier_Bandit_1_F",
											"U_I_C_Soldier_Bandit_2_F",
											"U_I_C_Soldier_Bandit_3_F",
											"U_I_C_Soldier_Bandit_4_F",
											"U_I_C_Soldier_Bandit_5_F",
											"U_I_C_Soldier_Camo_F",
											"U_C_man_sport_2_F",
											"U_C_Man_casual_1_F",
											"U_C_Man_casual_3_F",
											"U_C_Man_casual_4_F",
											"U_C_Man_casual_5_F",
											"U_C_Man_casual_6_F",
											"FGN_RU_Gorka_Skol",					
											"FGN_RU_Gorka_Leto",				
											"FGN_RU_Krot_Berezhka",			
											"FGN_RU_Krot_Skol",					
											"FGN_M88_Khaki_VV",					
											"FGN_M88_KhakiVSR_VV",				
											"FGN_CauR_M88_M81Black",				
											"FGN_CauR_M88_Tiger",					
											"FGN_M88_VSR2_VV",				
											"FGN_M88_VSRKhaki_VV",				
											"FGN_CauR_M88_M81",				
											"FGN_CauR_M88_M81Green",				
											"FGN_CauR_M88_M81Tiger",				
											"FGN_M88_VSR2_VDV",				
											"FGN_M88_TTsKOVSR_VMF",				
											"FGN_M88_VSRTTsKO_VMF",			
											"FGN_CauR_M93_M81",					
											"FGN_CauR_M93_M81Green",				
											"FGN_RU_NPOSM_Podlesok",				
											"FGN_CauR_Sklon_Kamysh",				
											"FGN_CauR_Smock_BlackWoodland",		
											"FGN_CauR_Smock_Woodland",			
											"FGN_RU_Splav_SMK",					
											"FGN_RU_SPOSN_Leto",				
											"FGN_RU_Sumrak_BerezhkaY",
											"rhsgref_uniform_alpenflage",
											"rhsgref_uniform_flecktarn",
											"rhsgref_uniform_para_ttsko_mountain",
											"rhsgref_uniform_para_ttsko_oxblood",
											"rhsgref_uniform_specter",
											"rhsgref_uniform_tigerstripe",
											"rhsgref_uniform_ttsko_forest",
											"rhsgref_uniform_ttsko_mountain",
											"rhsgref_uniform_vsr",
											"rhsgref_uniform_woodland",
											"rhsgref_uniform_woodland_olive",
											"rhssaf_uniform_m10_digital",
											"rhssaf_uniform_m10_digital_summer",
											"rhssaf_uniform_m93_oakleaf",
											"rhssaf_uniform_m93_oakleaf_summer",
											"rhs_uniform_m88_patchless",
											"rhs_uniform_emr_patchless",
											"rhs_uniform_flora_patchless",
											"rhs_uniform_flora_patchless_alt",
											"rhs_uniform_FROG01_m81",
											"rhs_uniform_FROG01_wd",
											"rhs_uniform_m88_patchless",
											"rhs_uniform_mflora_patchless",
											"rhs_uniform_vdv_mflora",
											"rhs_uniform_msv_emr",
											"rhs_uniform_flora",
											"rhs_uniform_vdv_flora",
											"rhs_uniform_gorka_r_g",
											"rhs_uniform_gorka_r_y",
											"rhs_chdkz_uniform_5",
											"rhs_chdkz_uniform_4",
											"rhs_chdkz_uniform_3",
											"rhs_chdkz_uniform_2",
											"rhs_chdkz_uniform_1",
											"rhs_uniform_mvd_izlom",
											"TRYK_hoodie_Blk",
											"TRYK_hoodie_FR",
											"TRYK_hoodie_Wood",
											"TRYK_hoodie_3c",
											"TRYK_T_camo_3c",
											"TRYK_T_camo_Wood",
											"TRYK_T_camo_wood_marpat",
											"TRYK_T_camo_3c_BG",
											"TRYK_T_camo_Wood_BG",
											"TRYK_T_PAD",
											"TRYK_T_OD_PAD",
											"TRYK_T_BLK_PAD",
											"TRYK_T_T2_PAD",
											"TRYK_T_CSAT_PAD",
											"TRYK_U_nohoodPcu_gry",
											"TRYK_U_hood_nc",
											"TRYK_U_hood_mc",
											"TRYK_U_denim_hood_blk",
											"TRYK_U_denim_hood_mc",
											"TRYK_U_denim_hood_3c",
											"TRYK_U_denim_hood_nc",
											"TRYK_U_denim_jersey_blu",
											"TRYK_U_denim_jersey_blk",
											"TRYK_shirts_PAD",
											"TRYK_shirts_OD_PAD",
											"TRYK_shirts_BLK_PAD",
											"TRYK_shirts_PAD_BK",
											"TRYK_shirts_OD_PAD_BK",
											"TRYK_shirts_BLK_PAD_BK",
											"TRYK_shirts_PAD_BLW",
											"TRYK_shirts_OD_PAD_BLW",
											"TRYK_shirts_BLK_PAD_BLW",
											"TRYK_shirts_PAD_YEL",
											"TRYK_shirts_OD_PAD_YEL",
											"TRYK_shirts_BLK_PAD_YEL",
											"TRYK_shirts_PAD_RED2",
											"TRYK_shirts_OD_PAD_RED2",
											"TRYK_shirts_BLK_PAD_RED2",
											"TRYK_shirts_PAD_BLU3",
											"TRYK_shirts_OD_PAD_BLU3",
											"TRYK_shirts_BLK_PAD_BLU3",
											"TRYK_shirts_DENIM_R",
											"TRYK_shirts_DENIM_BL",
											"TRYK_shirts_DENIM_BK",
											"TRYK_shirts_DENIM_RED2",
											"TRYK_shirts_DENIM_ylb",
											"TRYK_shirts_DENIM_od",
											"TRYK_shirts_DENIM_R_Sleeve",
											"TRYK_shirts_DENIM_BL_Sleeve",
											"TRYK_shirts_DENIM_BK_Sleeve",
											"TRYK_shirts_DENIM_ylb_Sleeve",
											"TRYK_shirts_DENIM_od_Sleeve",
											"TRYK_shirts_PAD_BL",
											"TRYK_shirts_OD_PAD_BL",
											"TRYK_shirts_BLK_PAD_BL",
											"TRYK_U_taki_COY",
											"TRYK_U_taki_BL",
											"TRYK_U_taki_BLK",
											"TRYK_U_Bts_PCUGs",
											"TRYK_U_Bts_PCUODs",
											"TRYK_U_B_PCUODHs",
											"TRYK_ZARATAKI",
											"TRYK_ZARATAKI2",
											"U_C_Journalist",
											"U_C_Poloshirt_burgundy",
											"U_C_Poloshirt_salmon",
											"U_C_Poloshirt_stripped",
											"U_C_Poloshirt_tricolour",
											"U_C_Poor_1",
											"U_C_Poor_2",
											"U_IG_Guerilla1_1",
											"U_IG_Guerilla2_1",
											"U_IG_Guerilla2_2",
											"U_IG_Guerilla2_3",
											"U_IG_Guerilla3_1",
											"U_BG_Guerilla2_1",
											"U_IG_Guerilla3_2",
											"U_BG_Guerrilla_6_1",
											"U_BG_Guerilla1_1",
											"U_BG_Guerilla2_2",
											"U_BG_Guerilla2_3",
											"U_BG_Guerilla3_1",
											"U_BG_leader",
											"U_IG_leader",
											"U_I_G_resistanceLeader_F"
										];
SC_RandomVests              	= [							// Vests for Assault Class
											"FGN_RU_6B513_Khaki",
											"FGN_RU_6B513",
											"FGN_RU_6B513_TTsKO",
											"FGN_RU_6B513_VSR",
											"FGN_RU_6B519_Khaki",
											"FGN_RU_6B519",
											"FGN_RU_6B519_TTsKO",
											"FGN_RU_6B519_VSR",
											"FGN_RU_V95_Black",
											"FGN_RU_V95_Kamysh",
											"FGN_RU_V95_KKO",
											"FGN_RU_V95_Podlesok",
											"FGN_RU_V95_VSR",
											"FGN_RU_V95_Black_OMON",
											"FGN_RU_V95_Kamysh_OMON",
											"FGN_RU_V95_KKO_OMON",
											"FGN_RU_V95_Podlesok_OMON",
											"FGN_RU_V95_VSR_OMON",
											"FGN_RU_V95_Black_2",
											"FGN_RU_V95_Kamysh_2",
											"FGN_RU_V95_KKO_2",
											"FGN_RU_V95_Podlesok_2",
											"FGN_RU_V95_VSR_2",
											"rhsgref_6b23_khaki",
											"rhsgref_6b23_khaki_nco",
											"rhsgref_6b23_khaki_rifleman",
											"rhsgref_6b23_ttsko_digi",
											"rhsgref_6b23_ttsko_digi_nco",
											"rhsgref_6b23_ttsko_digi_rifleman",
											"rhsgref_6b23_ttsko_forest",
											"rhsgref_6b23_ttsko_forest_rifleman",
											"rhsgref_6b23_ttsko_mountain",
											"rhsgref_6b23_ttsko_mountain_nco",
											"rhsgref_6b23_ttsko_mountain_rifleman",
											"rhsgref_otv_digi",
											"rhsgref_otv_khaki",
											"rhsgref_TacVest_ERDL",
											"rhssaf_vest_md98_woodland",
											"rhssaf_vest_md98_md2camo",
											"rhssaf_vest_md98_digital",
											"rhssaf_vest_md98_rifleman",
											"rhssaf_vest_otv_md2camo",
											"rhssaf_vest_md99_md2camo_rifleman",
											"rhssaf_vest_md99_digital_rifleman",
											"rhssaf_vest_md99_woodland_rifleman",
											"rhssaf_vest_md99_md2camo",
											"rhssaf_vest_md99_digital",
											"rhssaf_vest_md99_woodland",
											"rhs_6sh92",
											"rhs_6sh92_radio",
											"rhs_6sh92_vog",
											"rhs_6sh92_vog_headset",
											"rhs_6sh92_headset",
											"rhs_6sh92_digi",
											"rhs_6sh92_digi_radio",
											"rhs_6sh92_digi_vog",
											"rhs_6sh92_digi_vog_headset",
											"rhs_6sh92_digi_headset",
											"rhs_6b23",
											"rhs_6b23_crew",
											"rhs_6b23_engineer",
											"rhs_6b23_rifleman",
											"rhs_6b23_6sh92",
											"rhs_6b23_6sh92_radio",
											"rhs_6b23_6sh92_vog",
											"rhs_6b23_6sh92_vog_headset",
											"rhs_6b23_6sh92_headset",
											"rhs_6b23_6sh92_headset_mapcase",
											"rhs_6b23_digi",
											"rhs_6b23_digi_crew",
											"rhs_6b23_digi_engineer",
											"rhs_6b23_digi_rifleman",
											"rhs_6b23_digi_6sh92",
											"rhs_6b23_digi_6sh92_radio",
											"rhs_6b23_digi_6sh92_vog",
											"rhs_6b23_digi_6sh92_vog_headset",
											"rhs_6b23_digi_6sh92_headset",
											"rhs_6b23_digi_6sh92_headset_mapcase",
											"rhs_6b23_ML",
											"rhs_6b23_ML_crew",
											"rhs_6b23_ML_engineer",
											"rhs_6b23_ML_rifleman",
											"rhs_6b23_ML_6sh92",
											"rhs_6b23_ML_6sh92_radio",
											"rhs_6b23_ML_6sh92_vog",
											"rhs_6b23_ML_6sh92_vog_headset",
											"rhs_6b23_ML_6sh92_headset",
											"rhs_6b23_ML_6sh92_headset_mapcase",
											"rhs_6b43",
											"rhs_vydra_3m",
											"V_Press_F",
											"V_Rangemaster_belt",
											"V_TacVest_blk",
											"V_TacVest_blk_POLICE",
											"V_TacVest_brn",
											"V_TacVest_camo",
											"V_TacVest_khk",
											"V_TacVest_oli",
											"V_TacVestCamo_khk",
											"V_TacVestIR_blk",
											"V_I_G_resistanceLeader_F",
											"V_BandollierB_blk",
											"V_BandollierB_cbr",
											"V_BandollierB_khk",
											"V_BandollierB_oli",
											"V_BandollierB_rgr",
											"V_Chestrig_blk",
											"V_Chestrig_khk",
											"V_Chestrig_oli",
											"V_Chestrig_rgr"
										]; 
SC_RandomHeadgear           	= [							// Helmets for Assault Class
											"FGN_CauR_Beanie_Black",
											"FGN_CauR_Beanie_Brown",
											"FGN_CauR_Beanie_Woodland",
											"FGN_CauR_Boonie_M81",
											"FGN_FieldCap_Kamysh",
											"FGN_CauR_Pakol_03",
											"FGN_CauR_Pakol_01",
											"FGN_CauR_Pakol_02",
											"FGN_CauR_PatrolCap_M81",
											"FGN_SSH68_Flora",
											"FGN_SSH68_Khaki",
											"FGN_SSH68_KLMK",
											"FGN_SSH68_TTsKO",
											"FGN_SSH68_TTsKO2",
											"FGN_SSH68_VSR2",
											"FGN_SSH68_VSR",
											"FGN_SferaS_Green",
											"FGN_SferaS_VSR",
											"FGN_Sfera_Green",
											"FGN_Sfera_VSR",
											"FGN_ZSH12",
											"FGN_ZSH12_Black",
											"FGN_ZSH12_Balaclava",
											"rhsgref_6b27m",
											"rhsgref_6b27m_ttsko_digi",
											"rhsgref_6b27m_ttsko_forest",
											"rhsgref_6b27m_ttsko_mountain",
											"rhsgref_Booniehat_alpen",
											"rhsgref_fieldcap",
											"rhsgref_fieldcap_ttsko_digi",
											"rhsgref_fieldcap_ttsko_forest",
											"rhsgref_fieldcap_ttsko_mountain",
											"rhsgref_patrolcap_specter",
											"rhsgref_ssh68",
											"rhsgref_ssh68_emr",
											"rhsgref_ssh68_ttsko_digi",
											"rhsgref_ssh68_ttsko_forest",
											"rhsgref_ssh68_ttsko_mountain",
											"rhssaf_helmet_m59_85_nocamo",
											"rhssaf_helmet_m59_85_oakleaf",
											"rhssaf_helmet_m97_olive_nocamo",
											"rhssaf_helmet_m97_olive_nocamo_black_ess",
											"rhssaf_helmet_m97_olive_nocamo_black_ess_bare",
											"rhssaf_helmet_m97_black_nocamo",
											"rhssaf_helmet_m97_black_nocamo_black_ess",
											"rhssaf_helmet_m97_black_nocamo_black_ess_bare",
											"rhssaf_Helmet_m97_woodland",
											"rhssaf_Helmet_m97_digital",
											"rhssaf_Helmet_m97_md2camo",
											"rhssaf_Helmet_m97_oakleaf",
											"rhssaf_helmet_m97_woodland_black_ess",
											"rhssaf_helmet_m97_woodland_black_ess_bare",
											"rhssaf_helmet_m97_digital_black_ess",
											"rhssaf_helmet_m97_digital_black_ess_bare",
											"rhssaf_helmet_m97_md2camo_black_ess",
											"rhssaf_helmet_m97_md2camo_black_ess_bare",
											"rhssaf_helmet_m97_oakleaf_black_ess",
											"rhssaf_helmet_m97_oakleaf_black_ess_bare",
											"rhssaf_helmet_hgu56p",
											"rhssaf_booniehat_digital",
											"rhssaf_booniehat_md2camo",
											"rhssaf_booniehat_woodland",
											"rhs_6b27m_digi",
											"rhs_6b27m_digi_ess",
											"rhs_6b27m_digi_bala",
											"rhs_6b27m_digi_ess_bala",
											"rhs_6b27m",
											"rhs_6b27m_bala",
											"rhs_6b27m_ess",
											"rhs_6b27m_ess_bala",
											"rhs_6b27m_ml",
											"rhs_6b27m_ml_ess",
											"rhs_6b27m_ml_bala",
											"rhs_6b27m_ML_ess_bala",
											"rhs_6b27m_green",
											"rhs_6b27m_green_ess",
											"rhs_6b27m_green_ess_bala",
											"rhs_6b26_green",
											"rhs_6b26_bala_green",
											"rhs_6b26_ess_green",
											"rhs_6b26_ess_bala_green",
											"rhs_6b26",
											"rhs_6b26_bala",
											"rhs_6b26_ess",
											"rhs_6b26_ess_bala",
											"rhs_6b28_green",
											"rhs_6b28_green_bala",
											"rhs_6b28_green_ess",
											"rhs_6b28_green_ess_bala",
											"rhs_6b28",
											"rhs_6b28_bala",
											"rhs_6b28_ess",
											"rhs_6b28_ess_bala",
											"rhs_6b28_flora",
											"rhs_6b28_flora_bala",
											"rhs_6b28_flora_ess",
											"rhs_6b28_flora_ess_bala",
											"rhs_altyn_novisor",
											"rhs_altyn_novisor_bala",
											"rhs_altyn_novisor_ess",
											"rhs_altyn_novisor_ess_bala",
											"rhs_altyn_visordown",
											"rhs_altyn",
											"rhs_altyn_bala",
											"TRYK_ESS_CAP",
											"TRYK_ESS_CAP_OD",
											"TRYK_R_CAP_BLK",
											"TRYK_R_CAP_OD_US",
											"TRYK_r_cap_blk_Glasses",
											"TRYK_r_cap_od_Glasses",
											"TRYK_H_headsetcap_Glasses",
											"TRYK_H_headsetcap_blk_Glasses",
											"TRYK_H_headsetcap_od_Glasses",
											"TRYK_Headphone_NV",
											"TRYK_balaclava_BLACK_NV",
											"TRYK_balaclava_NV",
											"TRYK_balaclava_BLACK_EAR_NV",
											"TRYK_balaclava_EAR_NV",
											"TRYK_Shemagh_MESH_NV",
											"TRYK_Shemagh_G_NV",
											"TRYK_Shemagh_EAR_NV",
											"TRYK_Shemagh_EAR_G_NV",
											"TRYK_ShemaghESSOD_NV",
											"TRYK_Shemagh_shade_MESH",
											"TRYK_Shemagh_shade_N",
											"TRYK_Shemagh_shade_G_N",
											"TRYK_Headset_NV",
											"TRYK_G_bala_ess_NV",
											"TRYK_bandana_NV",
											"TRYK_SPgearG_NV",
											"TRYK_SPgear_PHC1_NV",
											"TRYK_SPgear_PHC2_NV",
											"TRYK_Kio_Balaclava",
											"H_Cap_blk",
											"H_Watchcap_blk",
											"H_Watchcap_camo",
											"H_Watchcap_khk",
											"H_Watchcap_sgg",
											"H_MilCap_rucamo",
											"H_Bandanna_camo",
											"H_Bandanna_cbr",
											"H_Bandanna_gry",
											"H_Bandanna_khk",
											"H_Bandanna_khk_hs",
											"H_Bandanna_sgg",
											"H_Hat_camo",
											"H_Shemag_khk",
											"H_Shemag_olive",
											"H_Shemag_olive_hs",
											"H_ShemagOpen_khk",
											"H_TurbanO_blk"
										];
SC_RandomWeapon             	= [							// Assault Rifles
											"Exile_Weapon_AKS_Gold",
											"hlc_rifle_ak74",
											"hlc_rifle_ak74_MTK",
											"hlc_rifle_ak74_dirty",
											"hlc_rifle_ak74_dirty2",
											"hlc_rifle_aks74",
											"hlc_rifle_aks74_MTK",
											"hlc_rifle_aks74u",
											"hlc_rifle_aks74u_MTK",
											"hlc_rifle_ak47",
											"hlc_rifle_akm",
											"hlc_rifle_akm_MTK",
											"hlc_rifle_ak12",
											"hlc_rifle_aku12",
											"hlc_rifle_rpk74n",
											"hlc_rifle_ak12gl",
											"hlc_rifle_akmgl",
											"hlc_rifle_aks74_GL",
											"hlc_rifle_aek971",
											"hlc_rifle_aek971_mtk",
											"hlc_rifle_RK62",
											"hlc_rifle_slr107u",
											"hlc_rifle_slr107u_MTK",
											"hlc_rifle_ak74m",
											"hlc_rifle_ak74m_gl",
											"hlc_rifle_ak74m_MTK",
											"hlc_rifle_RU556",
											"hlc_rifle_RU5562",
											"rhs_weap_akm",
											"rhs_weap_akm_gp25",	
											"rhs_weap_akms",
											"rhs_weap_akms_gp25",
											"rhs_weap_ak74n",
											"rhs_weap_ak74n_gp25",
											"rhs_weap_ak74n_gp25_npz",
											"rhs_weap_ak74n_npz",
											"rhs_weap_ak74_3",
											"rhs_weap_ak74_2",
											"rhs_weap_aks74_2",
											"rhs_weap_m70b1n",
											"rhs_weap_m70b3n",							
											"rhs_weap_m70b3n_pbg40",				
											"rhs_weap_m21a_pr_pbg40",		
											"rhs_weap_m21a_pbg40",
											"rhs_weap_m21a",
											"rhs_weap_m21a_fold",							
											"rhs_weap_m21a_pr",								
											"rhs_weap_m21s",									
											"rhs_weap_m21s_fold",						
											"rhs_weap_m21s_pr",			
											"rhs_weap_m70ab2",								
											"rhs_weap_m70ab2_fold",							
											"rhs_weap_m70b1",							
											"rhs_weap_m76",								
											"rhs_weap_m92",								
											"rhs_weap_m92_fold",
											"SMA_M4afg",
											"SMA_M4CQBRMOE"
										];
SC_RandomWeaponAttachments  	= [];
SC_RandomMagazines          	= ["Exile_Item_InstaDoc","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_DuctTape","Exile_Item_PlasticBottleFreshWater","Exile_Item_Energydrink","Exile_Item_EMRE","Exile_Item_Cheathas","Exile_Item_Noodles","Exile_Item_BBQSandwich","Exile_Item_Catfood"];
SC_RandomPistol             	= [							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
											"rhs_weap_pya",
											"rhs_weap_makarov_pm",
											"rhs_weap_pp2000_folded",
											"rhsusf_weap_m9",
											"hgun_Pistol_heavy_02_F",
											"hgun_Pistol_Signal_F",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus"
										];
SC_RandomPistolAttachments  	= [];
SC_RandomAssignedItems      	= ["ItemMap","ItemCompass","ItemRadio","ItemWatch"]; // all these items will be added
SC_RandomLauncher           	= [];
SC_RandomBackpack           	= [							// Backpacks for Assault Class
											"rhssaf_kitbag_md2camo",
											"rhssaf_kitbag_digital",
											"rhssaf_kitbag_smb",
											"rhs_assault_umbts",
											"rhs_assault_umbts_engineer_empty",
											"rhs_sidor",
											"rhs_rpg_empty",
											"TRYK_B_AssaultPack_Type2camo",
											"TRYK_B_Kitbag_Base",
											"TRYK_B_Kitbag_blk",
											"TRYK_B_Kitbag_aaf",
											"TRYK_B_Coyotebackpack",
											"TRYK_B_Coyotebackpack_OD",
											"TRYK_B_Coyotebackpack_BLK",
											"TRYK_B_Alicepack",
											"TRYK_B_Belt",
											"TRYK_B_Belt_BLK",
											"TRYK_B_Belt_CYT",
											"TRYK_B_Belt_br",
											"TRYK_B_Belt_GR",
											"TRYK_B_Belt_AOR1",
											"TRYK_B_Belt_AOR2",
											"TRYK_B_BAF_BAG_BLK",
											"TRYK_B_BAF_BAG_CYT",
											"TRYK_B_BAF_BAG_OD",
											"TRYK_B_BAF_BAG_rgr",
											"TRYK_B_tube_cyt",
											"TRYK_B_tube_od",
											"TRYK_B_tube_blk",
											"TRYK_B_FieldPack_Wood",
											"B_AssaultPack_blk",
											"B_AssaultPack_cbr",
											"B_AssaultPack_dgtl",
											"B_AssaultPack_khk",
											"B_AssaultPack_rgr",
											"B_AssaultPack_sgg",
											"B_FieldPack_blk",
											"B_FieldPack_cbr",
											"B_FieldPack_ocamo",
											"B_HuntingBackpack",
											"B_Kitbag_cbr",
											"B_Kitbag_sgg"
										];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Apex Specific Settings (only used if SC_useApexClasses = true)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if(SC_useApexClasses) then 
{
	SC_BanditWeapon 			=	[
									"arifle_MX_khk_F",
									"arifle_MX_GL_khk_F",
									"arifle_MX_SW_khk_F",
									"arifle_MXC_khk_F",
									"arifle_MXM_khk_F",
									"arifle_AK12_F",
									"arifle_AK12_GL_F",
									"arifle_AKM_F",
									"arifle_AKS_F",
									"arifle_ARX_blk_F",
									"arifle_ARX_ghex_F",
									"arifle_ARX_hex_F",
									"arifle_CTAR_blk_F",
									"arifle_CTAR_GL_blk_F",
									"arifle_CTARS_blk_F",
									"arifle_SPAR_01_blk_F",
									"arifle_SPAR_01_khk_F",
									"arifle_SPAR_01_snd_F",
									"arifle_SPAR_01_GL_blk_F",
									"arifle_SPAR_01_GL_khk_F",
									"arifle_SPAR_01_GL_snd_F",
									"arifle_SPAR_02_blk_F",
									"arifle_SPAR_02_khk_F",
									"arifle_SPAR_02_snd_F",
									"arifle_SPAR_03_blk_F",
									"arifle_SPAR_03_khk_F",
									"arifle_SPAR_03_snd_F"
									];						
	SC_BanditUniforms			=	[
									"U_I_C_Soldier_Para_1_F",
									"U_I_C_Soldier_Para_2_F",
									"U_I_C_Soldier_Para_3_F",
									"U_I_C_Soldier_Para_4_F",
									"U_I_C_Soldier_Para_5_F",
									"U_I_C_Soldier_Bandit_1_F",
									"U_I_C_Soldier_Bandit_2_F",
									"U_I_C_Soldier_Bandit_3_F",
									"U_I_C_Soldier_Bandit_4_F",
									"U_I_C_Soldier_Bandit_5_F",
									"U_I_C_Soldier_Camo_F",
									"U_B_CTRG_Soldier_urb_1_F",
									"U_B_CTRG_Soldier_urb_2_F",
									"U_B_CTRG_Soldier_urb_3_F"
									];
	
	SC_VehicleClassToUse 		=   [
									["B_GEN_Offroad_01_gen_F",0],
									["C_Offroad_02_unarmed_F",0],
									["I_C_Offroad_02_unarmed_F",0]
									];
									
    SC_VehicleClassToUseRare	=   [	
                                    ["B_LSV_01_unarmed_black_F",1],
                                    ["O_T_LSV_02_unarmed_black_F",1],
                                    ["O_T_Truck_03_device_ghex_F",1]
									];
};
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	Debug Settings (only used if SC_debug = true)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if (SC_debug) then
{
    SC_extendedLogging       	= true;
    SC_processReporter      	= true;
    SC_mapMarkers			    = true;
    SC_occupyPlaces 			= false;
    SC_occupyVehicle			= true;
    SC_occupyMilitary 			= false;
	SC_occupyRandomSpawn        = true;
    SC_occupyStatic				= false;
    SC_occupySky				= false;
    SC_occupySea				= false;
	SC_occupyTraders            = false;	
    SC_occupyTransport			= true;
    SC_occupyLootCrates			= false;
    SC_occupyHeliCrashes		= false;
	SC_maxAIcount				= 150;	
    SC_maxNumberofVehicles		= 10;
    SC_maxNumberofBoats			= 5;
    SC_maxNumberofHelis			= 1; 
	SC_randomSpawnChance		= 100;
	SC_randomSpawnIgnoreCount	= true;
	SC_randomSpawnFrequency		= 120;
};
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Don't alter anything below this point, unless you want your server to explode :)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if(!SC_SurvivorsFriendly) then 
{ 
	CIVILIAN setFriend[RESISTANCE,0]; 
};
CIVILIAN    	setFriend [EAST,0]; 
CIVILIAN    	setFriend [WEST,0]; 
EAST        	setFriend [CIVILIAN,0]; 
WEST        	setFriend [CIVILIAN,0]; 
EAST        	setFriend [WEST,0]; 
WEST        	setFriend [EAST,0];
SC_SurvivorSide         		= CIVILIAN;
SC_BanditSide           		= EAST;
SC_liveVehicles 				= 0;
SC_liveVehiclesArray    		= [];
SC_liveHelis	 				= 0;
SC_liveHelisArray       		= [];
SC_liveBoats	 				= 0;
SC_liveBoatsArray       		= [];
SC_liveStaticGroups				= [];
SC_liveRandomGroups				= [];
SC_transportArray       		= [];
// Remove spawn locations for roaming vehicles that aren't for this map
_occupyVehicleFixedPositions = [];
{
	_currentWorld = _x select 2;
	if(worldName == _currentWorld) then 
	{ 
		_occupyVehicleFixedPositions pushback _x; 
	};
}forEach SC_occupyVehicleFixedPositions;
SC_occupyVehicleFixedPositions = _occupyVehicleFixedPositions;
publicVariable "SC_liveVehicles";
publicVariable "SC_liveVehiclesArray";
publicVariable "SC_liveHelis";
publicVariable "SC_liveHelisArray";
publicVariable "SC_liveBoats";
publicVariable "SC_liveBoatsArray";
publicVariable "SC_liveStaticGroups";
publicVariable "SC_liveRandomGroups";
publicVariable "SC_numberofLootCrates";
publicVariable "SC_transportArray";
publicVariable "SC_SurvivorSide";
publicVariable "SC_BanditSide";
SC_CompiledOkay				= true;