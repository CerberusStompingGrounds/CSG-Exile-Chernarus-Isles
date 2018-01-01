/*
	Main DMS Config File
	Created by eraser1
	Several revisions and additions have been made by community members.
	A lot of these configs are influenced by WAI :P
	https://github.com/nerdalertdk/WICKED-AI
*/
// If you don't want the AI to have marksman DLC weapons, then simply remove the line below, or comment it by putting // at the beginning of the line
//#define GIVE_AI_MARKSMAN_DLC_WEAPONS 1
// If you don't want crates to spawn with marksman DLC weapons, simply remove the line below or comment it out.
#define USE_MARKSMAN_DLC_WEAPONS_IN_CRATES 1
// Uncomment this if you want Apex weapons on AI.
//#define GIVE_AI_APEX_WEAPONS 1
// Uncomment this if you want Apex gear on AI. Uniforms, Vests, Backpacks, Helmets,Scopes
//#define GIVE_AI_APEX_GEAR 1
// Uncomment this if you want Apex weapons in loot crates
#define USE_APEX_WEAPONS_IN_CRATES 1
// Uncomment this if you want Apex vehicles to spawn for AI/missions
//#define USE_APEX_VEHICLES 1
DMS_Use_Map_Config = true;	// Whether or not to use config overwrites specific to the map.
/*
	If you are using a map other than a map listed in the "map_configs" folder, you should set this to false OR create a new file within the map_configs folder for the map so that you don't get a missing file error.
	To share your map-specific config, please create a merge request on GitHub and/or leave a message on the DMS thread in the Exile forums.
	For any questions regarding map-specific configs, please leave a reply in the DMS thread on the Exile forums.
*/
DMS_Enable_RankChange = true; // Whether or not to use Rank Changes. (Required 'true' if using Occupation)
/*
	I am sharing this upgrade to all. If you utilize GR8 Humanity (fully compatible) or a custom version of a ranking system(simple variable changes), this will allow your players to score +/- for Bandit and Hero kills as well as a custom Survivor Faction added to DMS as well. You can still utilize the HERO / BANDIT / SURVIVOR respect and poptab settings for gameplay :) ENJOY! DONKEYPUNCH.INFO!
*/
DMS_Add_AIKill2DB = false;  // Adds killstat for player in the database ;)
DMS_SpawnMissions_Scheduled = false;	// Whether or not to spawn missions in a scheduled environment. Setting to true may help with lag when certain missions spawn.
/* Mission System Settings */
	/*General settings for dynamic missions*/
	DMS_DynamicMission					= true;						// Enable/disable dynamic mission system.
	DMS_MaxBanditMissions				= 3;						// Maximum number of Bandit Missions running at the same time
	DMS_TimeToFirstMission				= [99,188];					// [Minimum,Maximum] time between first mission spawn. | DEFAULT: 3-7 minutes.
	DMS_TimeBetweenMissions				= [101,156];				// [Minimum,Maximum] time between missions (if mission limit is not reached) | DEFAULT: 10-15 mins
	DMS_MissionTimeout					= [106,301]; 				// [Minimum,Maximum] time it will take for a mission to timeout | DEFAULT: 15-30 mins
	DMS_MissionTimeoutResetRange		= 1000;						// If a player is this close to a mission then it won't time-out. Set to 0 to disable this check.
	DMS_MissionTimeoutResetFrequency	= 120;						// How often (in seconds) to check for nearby players and reset the mission timeout.
	DMS_ResetMissionTimeoutOnKill		= true;						// Whether or not to reset the mission timeout when an AI is killed.
	/*General settings for static missions*/
	DMS_StaticMission					= true;						// Enable/disable static mission system.
	DMS_MaxStaticMissions				= 1;						// Maximum number of Static Missions running at the same time. It's recommended you set this to the same amount of static missions that you have in total. This config will be ignored by "DMS_StaticMissionsOnServerStart".
	DMS_TimeToFirstStaticMission		= [1000,2000];				// [Minimum,Maximum] time between first static mission spawn. | DEFAULT: 3-7 minutes.
	DMS_TimeBetweenStaticMissions		= [1701,2109];				// [Minimum,Maximum] time between static missions (if static mission limit is not reached) | DEFAULT: 15-30 mins
	DMS_StaticMissionTimeOut			= [1708,2102]; 				// [Minimum,Maximum] time it will take for a static mission to timeout | DEFAULT: 30-60 mins
	DMS_StaticMissionTimeoutResetRange	= 1000;						// If a player is this close to a mission then it won't time-out. Set to 0 to disable this check.
	DMS_SMissionTimeoutResetFrequency	= 120;						// How often (in seconds) to check for nearby players and reset the mission timeout for static missions.
	DMS_ResetStaticMissionTimeoutOnKill	= true;						// Whether or not to reset the mission timeout when an AI is killed (for Static Missions).
	DMS_StaticMinPlayerDistance			= 1500;						// If a player is this close to a mission location, then it won't spawn the mission and will wait 60 seconds before attempting to spawn it.
	DMS_AllowStaticReinforcements		= false;					// Whether or not static missions will receive reinforcements. This will simply disable the calling of GroupReinforcementsMonitor;
	DMS_SpawnFlareOnReinforcements		= false;					// Whether or not to spawn a flare and noise when AI reinforcements have spawned.
	DMS_playerNearRadius				= 100;						// How close a player has to be to a mission in order to satisfy the "playerNear" mission requirement (can be customized per mission).
	DMS_AI_KillPercent					= 100;						// The percent amount of AI that need to be killed for "killPercent" mission requirement (NOT IMPLEMENTED)
	/*Mission Marker settings*/
	DMS_ShowDifficultyColorLegend		= false;					// Whether or not to show a "color legend" at the bottom left of the map that shows which color corresponds to which difficulty. 
	DMS_ShowMarkerCircle				= false;					// Whether or not to show the colored "circle" around a mission marker.
	DMS_MarkerText_ShowMissionPrefix	= false;					// Whether or not to place a prefix before the mission marker text. Enable this if your players get confused by the marker names :P
	DMS_MarkerText_MissionPrefix		= "";						// The text displayed before the mission name in the mission marker.
	DMS_MarkerText_ShowAICount			= false;					// Whether or not to display the number of remaining AI in the marker name.
	DMS_MarkerText_ShowAICount_Static	= false;					// Whether or not to display the number of remaining AI in the marker name for STATIC missions.
	DMS_MarkerText_AIName				= "";						// What the AI will be called in the map marker. For example, the marker text can show: "Car Dealer (3 Units remaining)"
	DMS_MarkerPosRandomization			= false;					// Randomize the position of the circle marker of a mission
	DMS_MarkerPosRandomRadius			= [25,100];					// Minimum/Maximum distance that the circle marker position will be randomized | DEFAULT: 0 meters to 200 meters
	DMS_RandomMarkerBrush				= "Cross";					// See: https://community.bistudio.com/wiki/setMarkerBrush
	DMS_MissionMarkerWinDot				= true;						// Keep the mission marker dot with a "win" message after mission is over
	DMS_MissionMarkerLoseDot			= true;						// Keep the mission marker dot with a "lose" message after mission is over
	DMS_MissionMarkerWinDot_Type		= "ExileExpansionWinIcon";				// The marker type to show when a mission is completed. Refer to: https://community.bistudio.com/wiki/cfgMarkers
	DMS_MissionMarkerLoseDot_Type		= "ExileExpansionLoseIcon";					// The marker type to show when a mission fails. Refer to: https://community.bistudio.com/wiki/cfgMarkers
	DMS_MissionMarkerWinDotTime			= 20;						// How many seconds the "win" mission dot will remain on the map
	DMS_MissionMarkerLoseDotTime		= 20;						// How many seconds the "lose" mission dot will remain on the map
	DMS_MissionMarkerWinDotColor		= "ColorGreen";				// The color of the "win" marker dot
	DMS_MissionMarkerLoseDotColor		= "ColorRed";				// The color of the "lose" marker dot
	/*Mission Cleanup settings*/
	DMS_CompletedMissionCleanup			= true;						// Cleanup mission-spawned buildings and AI bodies after some time
	DMS_CompletedMissionCleanupTime		= 600;						// Minimum time until mission-spawned buildings and AI are cleaned up
	DMS_CleanUp_PlayerNearLimit			= 300;						// Cleanup of an object is aborted if a player is this many meters close to the object
	DMS_AIVehCleanUpTime				= 300;						// Time until a destroyed AI vehicle is cleaned up.
	/*Mission spawn location settings*/
	DMS_UsePredefinedMissionLocations	= false;					// Whether or not to use a list of pre-defined mission locations instead before attempting to find a random (valid) position. The positions will still be checked for validity. If none of the provided positions are valid, a random one will be generated.
	DMS_PredefinedMissionLocations = 	[							// List of Preset/Predefined mission locations.
											/* List of positions:
											position1: [x_1,y_1,z_1],
											*/
										];
	DMS_PredefinedMissionLocations_WEIGHTED = 	[					// List of Preset/Predefined mission locations WITH WEIGHTED CHANCES. This will NOT override "DMS_PredefinedMissionLocations", and everything from "DMS_PredefinedMissionLocations" will behave as though it has 1 weight per position.
											/* List of arrays with position and weighted chance:
											[[x_1,y_1,z_1], chance_1],
											*/
										];
	DMS_ThrottleBlacklists				= true;						// Whether or not to "throttle" the blacklist distance parameters in DMS_fnc_FindSafePos. This will reduce the values of the minimum
																	//distances for some of the below parameters if several attempts have been made, but a suitable position was not yet found. This
																	//should help with server performance drops when spawning a mission, as DMS_fnc_findSafePos is the most resource-intensive function.
	DMS_AttemptsUntilThrottle			= 5;						// How many attempts until the parameters are throttled.
	DMS_ThrottleCoefficient				= 0.8;						// How much the parameters are throttled. The parameters are multiplied by the coefficient, so 0.9 means 90% of whatever the parameter was.
	DMS_MinThrottledDistance			= 500;						// The minimum distance to which it will throttle. If the throttled value is less than this value, then this value is used instead.
	DMS_PlayerNearBlacklist				= 700;						// Missions won't spawn in a position this many meters close to a player
	DMS_SpawnZoneNearBlacklist			= 1500;						// Missions won't spawn in a position this many meters close to a spawn zone
	DMS_TraderZoneNearBlacklist			= 1500;						// Missions won't spawn in a position this many meters close to a trader zone
	DMS_MissionNearBlacklist			= 3000;						// Missions won't spawn in a position this many meters close to another mission
	DMS_WaterNearBlacklist				= 100;						// Missions won't spawn in a position this many meters close to water
	DMS_TerritoryNearBlacklist			= 150;						// Missions won't spawn in a position this many meters close to a territory flag. This is a resource intensive check, don't set this value too high!
	DMS_MixerNearBlacklist				= 500;						// Missions won't spawn in a position this many meters close to a concrete mixer
	DMS_ContaminatedZoneNearBlacklist	= 0;						// Missions won't spawn in a position this many meters close to a contaminated zone
	DMS_MinSurfaceNormal				= 0.90;						// Missions won't spawn in a position where its surfaceNormal is less than this amount. The lower the value, the steeper the location. Greater values means flatter locations. Values can range from 0-1, with 0 being sideways, and 1 being perfectly flat. For reference: SurfaceNormal of about 0.7 is when you are forced to walk up a surface. If you want to convert surfaceNormal to degrees, use the arc-cosine of the surfaceNormal. 0.9 is about 25 degrees. Google "(arccos 0.9) in degrees"
	DMS_MinDistFromWestBorder			= 500;						// Missions won't spawn in a position this many meters close to the western map border.
	DMS_MinDistFromEastBorder			= 500;						// Missions won't spawn in a position this many meters close to the easter map border.
	DMS_MinDistFromSouthBorder			= 500;						// Missions won't spawn in a position this many meters close to the southern map border.
	DMS_MinDistFromNorthBorder			= 500;						// Missions won't spawn in a position this many meters close to the northern map border.
	DMS_SpawnZoneMarkerTypes =			[							// If you're using custom spawn zone markers, make sure you define them here. CASE SENSITIVE!!!
											"ExileSpawnZoneIcon"										];
	DMS_TraderZoneMarkerTypes =			[							// If you're using custom trader markers, make sure you define them here. CASE SENSITIVE!!!
											"ExileExpansionTraderIcon"
										];
	DMS_MixerMarkerTypes =				[							// If you're using custom concrete mixer map markers, make sure you define them here. CASE SENSITIVE!!!
										];
	DMS_ContaminatedZoneMarkerTypes =	[							// If you're using custom contaminated zone markers, make sure you define them here. CASE SENSITIVE!!!
											//""
										];
	DMS_MinWaterDepth					= 10;						// Minimum depth of water that an underwater mission can spawn at.
	/*Crate/Box settings*/
	DMS_HideBox							= false;					// "Hide" the box from being visible by players until the mission is completed.
	DMS_EnableBoxMoving					= false;					// Whether or not to allow the box to move and/or be lifted by choppers.
	DMS_SpawnBoxSmoke					= true;						// Spawn a smoke grenade on mission box upon misson completion during daytime
	DMS_SpawnBoxIRGrenade				= true;						// Spawn an IR grenade on mission box upon misson completion during nighttime
	/*Mine settings*/
	DMS_SpawnMinefieldForEveryMission	= false;					// Whether or not to spawn a minefield for every dynamic mission.
	DMS_SpawnMinesAroundMissions		= true;						// Whether or not to spawn mines around AI missions that have them.
	DMS_despawnMines_onCompletion		= true;						// Despawn mines spawned around missions when the mission is completed
	DMS_MineInfo_easy					= [5,50];					// Mine info for "easy" missions. This will spawn 5 mines within a 50m radius.
	DMS_MineInfo_moderate				= [10,50];					// Mine info for "moderate" missions. This will spawn 10 mines within a 50m radius.
	DMS_MineInfo_difficult				= [15,75];					// Mine info for "difficult" missions. This will spawn 15 mines within a 75m radius.
	DMS_MineInfo_hardcore				= [25,100];					// Mine info for "hardcore" missions. This will spawn 25 mines within a 100m radius.
	DMS_SpawnMineWarningSigns			= true;						// Whether or not to spawn mine warning signs around a minefield.
	DMS_BulletProofMines				= true;						// Whether or not you want to make the mines bulletproof. Prevents players from being able to shoot the mines and creating explosions.
	DMS_MinPlayerCount					= 0; 						// Minimum number of players until mission start
	DMS_MinServerFPS					= 10; 						// Minimum server FPS for missions to start
	/*Mission notification settings*/
	DMS_PlayerNotificationTypes =		[									// Notification types. Supported values are: ["dynamicTextRequest", "standardHintRequest", "systemChatRequest", "textTilesRequest", "ExileToasts"]. Details below.
											"ExileToasts"					// Default notification type since Exile 0.98, see (http://www.exilemod.com/devblog/new-ingame-notifications/)
										];
	/*Exile Toasts Notification Settings*/
	DMS_ExileToasts_Title_Size			= 22;						// Size for Client Exile Toasts  mission titles.
	DMS_ExileToasts_Title_Font			= "puristaMedium";			// Font for Client Exile Toasts  mission titles.
	DMS_ExileToasts_Message_Color		= "#FFFFFF";				// Exile Toasts color for "ExileToast" client notification type.
	DMS_ExileToasts_Message_Size		= 19;						// Exile Toasts size for "ExileToast" client notification type.
	DMS_ExileToasts_Message_Font		= "PuristaLight";			// Exile Toasts font for "ExileToast" client notification type.
	/*Exile Toasts Notification Settings*/
	/*Dynamic Text Notification Settings*/
	DMS_dynamicText_Duration			= 7;						// Number of seconds that the message will last on the screen.
	DMS_dynamicText_FadeTime			= 1.5;						// Number of seconds that the message will fade in/out (does not affect duration).
	DMS_dynamicText_Title_Size			= 1.2;						// Size for Client Dynamic Text mission titles.
	DMS_dynamicText_Title_Font			= "puristaMedium";			// Font for Client Dynamic Text mission titles.
	DMS_dynamicText_Message_Color		= "#FFFFFF";				// Dynamic Text color for "dynamicTextRequest" client notification type.
	DMS_dynamicText_Message_Size		= 0.65;						// Dynamic Text size for "dynamicTextRequest" client notification type.
	DMS_dynamicText_Message_Font		= "OrbitronMedium";			// Dynamic Text font for "dynamicTextRequest" client notification type.
	/*Standard Hint Notification Settings*/
	DMS_standardHint_Title_Size			= 2;						// Size for Client Standard Hint mission titles.
	DMS_standardHint_Title_Font			= "puristaMedium";			// Font for Client Standard Hint mission titles.
	DMS_standardHint_Message_Color		= "#FFFFFF";				// Standard Hint color for "standardHintRequest" client notification type.
	DMS_standardHint_Message_Size		= 1;						// Standard Hint size for "standardHintRequest" client notification type.
	DMS_standardHint_Message_Font		= "OrbitronMedium";			// Standard Hint font for "standardHintRequest" client notification type.
	/*Text Tiles Notification Settings*/
	DMS_textTiles_Duration				= 10;						// Number of seconds that the message will last on the screen.
	DMS_textTiles_FadeTime				= 1.5;						// Number of seconds that the message will fade in/out (does not affect duration).
	DMS_textTiles_Title_Size			= 2.3;						// Size for Client Text Tiles mission titles.
	DMS_textTiles_Title_Font			= "puristaMedium";			// Font for Client Text Tiles mission titles.
	DMS_textTiles_Message_Color			= "#FFFFFF";				// Text Tiles color for "textTilesRequest" client notification type.
	DMS_textTiles_Message_Size			= 1.25;						// Text Tiles size for "textTilesRequest" client notification type.
	DMS_textTiles_Message_Font			= "OrbitronMedium";			// Text Tiles font for "textTilesRequest" client notification type.
	/*Mission notification settings*/
	DMS_RandomBanditMissionsOnStart		= 0;						// Number of (random) bandit missions to spawn when the server starts, just so players don't have to wait for missions to spawn.
	DMS_BanditMissionTypes =			[			//	List of missions with spawn chances. If they add up to 100%, they represent the percentage chance each one will spawn
											["6x6steal",2],
											["ambulancesteal",2],
											["armyvehicle",4],
											["beerngunstruck",1],
											["blackhawkdown",4],
											["brdm2hqsteal",1],
											["buildingdepot",2],
											["buildingmaterials",3],
											["buildingsupplies",3],
											["carthieves",3],
											["constructionsite",3],
											["drughouse",4],
											["fieldhospital",3],
											["foodshipment",5],
											["guntransport",3],
											["helicoptersteal",1],
											["hoopty",5],
											["hospitalattack",1],
											["houseraid",3],
											["humanitarian",3],
											["m113steal",1],
											["militiabase",2],
											["militiabattalion",3],
											["militiabunker",3],
											["militiafireteam",5],
											["militiagroup",4],
											["militiasquad",3],
											["researchcamp",1],
											["rg33steal",1],
											["snipercamp",1],
											["spetsnazcamp",3],
											["stolencar",5],
											["stolensuv",5],
											["survivorcamp",4],
											["weaponsdeal",1],
											["weaponsshipment",1]
										];
	DMS_StaticMissionTypes =			[								// List of STATIC missions with spawn chances.
											["occupation",1],
											["jokersonstruction",1],
											["betrayslhd",1],
											["ghosthotel",1]
											//["lhdbattle",1]
											//["oilrig",1]
										];
	DMS_SpecialMissions =				[								// List of special missions with restrictions. Each element must be defined as [mission<STRING>, minPlayers<SCALAR>, maxPlayers<SCALAR>, timesPerRestart<SCALAR>, _timeBetween<SCALAR>].
											//["specops",15,60,2,900]	//<-- Example for a mission named "specops.sqf" that must be placed in the "special" folder. It will only spawn when there are at least 15 players, less than 60 players, it will only spawn up to twice per restart, and at least 900 seconds must pass before another instance of the mission can spawn.
										];
	DMS_BasesToImportOnServerStart = 	[								// List of static bases to import on server startup (spawned post-init). This will reduce the amount of work the server has to do when it actually spawns static missions, and players won't be surprised when a base suddenly pops up. You can also include any other M3E-exported bases to spawn here.
											//"jokersonstruction_objects",		//<--Example (already imported by default on Altis)
										];
	DMS_BanditMissionsOnServerStart =	[
											"militiafireteam"
										];
	DMS_StaticMissionsOnServerStart =	[							// List of STATIC missions with spawn chances.
											//"lhdbattle"
										];
	DMS_findSafePosBlacklist =			[							// This list defines areas where missions WILL NOT spawn. For position blacklist info refer to: http://www.exilemod.com/topic/61-dms-defents-mission-system/?do=findComment&comment=31190
											//[[2350,4680],100]		// This random example blacklists any position within 100 meters of coordinates "[2350,4680]"
										];
/* AI Settings */
	DMS_AI_Classname					= "O_G_Soldier_lite_F";
	DMS_AI_NamingType					= 2;						// This specifies the "naming scheme" for the AI. 0 corresponds with the default ArmA names; 1 means you want a DMS name (eg: [DMS BANDIT SOLDIER 123]); 2 means you want to generate a name from a list of first and last names (DMS_AI_FirstNames, DMS_AI_LastNames).
	DMS_AI_FirstNames =					[							// List of "first names" that an AI can have. Only used when DMS_AI_NamingType = 2.
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
											"Semechki",
											"Sir Joker"
										];
	DMS_AI_LastNames =					[							// List of "last names" that an AI can have. Only used when DMS_AI_NamingType = 2.
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
	DMS_Show_Kill_Poptabs_Notification	= true;						// Whether or not to show the poptabs gained/lost message on the player's screen when killing an AI. (It will still change the player's money, it just won't show the "Money Received" notification)
	DMS_Show_Kill_Respect_Notification	= true;						// Whether or not to show the "Frag Message" on the player's screen when killing an AI. (It will still change the player's respect, it just won't show the "AI Killed" frag message)
	DMS_Show_Kill_Rank_Notification		= false;
	DMS_Show_Party_Kill_Notification	= false;					// Whether or not to show in chat when a party member kills an AI.
	DMS_Spawn_AI_With_Money				= true;						// Whether or not to spawn AI with money that can be looted from the body.
	DMS_AIMoney_PopulationMultiplier	= 5;						// This determines how much EXTRA money an AI will have on his body. For example, setting this to 5 and having a server population of 30 means the AI will have an extra 150 poptabs on the body. Set to 0 to disable.
	DMS_GiveMoneyToPlayer_OnAIKill		= false;					// Whether or not to give money directly to players when they kill AI (old method of giving money).
	DMS_GiveRespectToPlayer_OnAIKill	= true;						// Whether or not to give respect to players when they kill AI.
	DMS_Bandit_Soldier_MoneyGain		= 50;						// The amount of Poptabs gained for killing a bandit soldier
	DMS_Bandit_Soldier_RepGain			= 20;						// The amount of Respect gained for killing a bandit soldier
	DMS_Bandit_Soldier_RankGain			= 25;
	DMS_Bandit_Soldier_SpawnMoney		= 50;						// The amount of Poptabs carried by a bandit soldier
	DMS_Bandit_Static_MoneyGain			= 75;						// The amount of Poptabs gained for killing a bandit static gunner
	DMS_Bandit_Static_RepGain			= 25;						// The amount of Respect gained for killing a bandit static gunner
	DMS_Bandit_Static_RankGain			= 30;
	DMS_Bandit_Static_SpawnMoney		= 75;						// The amount of Poptabs carried by a bandit static gunner
	DMS_Bandit_Vehicle_MoneyGain		= 100;						// The amount of Poptabs gained for killing a bandit vehicle crew member
	DMS_Bandit_Vehicle_RepGain			= 25;						// The amount of Respect gained for killing a bandit vehicle crew member
	DMS_Bandit_Vehicle_RankGain			= 50;
	DMS_Bandit_Vehicle_SpawnMoney		= 100;						// The amount of Poptabs carried by a bandit vehicle crew member
/* DonkeyPunchDMS Custom Settings for Hero AI*/
	DMS_Hero_Soldier_MoneyGain			= 100;						// The amount of Poptabs gained for killing a hero soldier
	DMS_Hero_Soldier_RepGain			= 20;						// The amount of Respect gained for killing a hero soldier
	DMS_Hero_Soldier_RankGain			= -30;
	DMS_Hero_Soldier_SpawnMoney			= 100;						// The amount of Poptabs carried by a hero soldier
	DMS_Hero_Static_MoneyGain			= 120;						// The amount of Poptabs gained for killing a hero static gunner
	DMS_Hero_Static_RepGain				= 30;						// The amount of Respect gained for killing a hero static gunner
	DMS_Hero_Static_RankGain			= -60;
	DMS_Hero_Static_SpawnMoney			= 120;						// The amount of Poptabs carried by a hero static gunner
	DMS_Hero_Vehicle_MoneyGain			= 200;						// The amount of Poptabs gained for killing a hero vehicle crew member
	DMS_Hero_Vehicle_RepGain			= 50;						// The amount of Respect gained for killing a hero vehicle crew member
	DMS_Hero_Vehicle_RankGain			= -100;
	DMS_Hero_Vehicle_SpawnMoney			= 200;						// The amount of Poptabs carried by a hero vehicle crew member
/* DonkeyPunchDMS Custom Settings for Survivor AI*/
	DMS_Survivor_Soldier_MoneyGain		= -100;						// The amount of Poptabs gained for killing a Survivor soldier
	DMS_Survivor_Soldier_RepGain		= -100;						// The amount of Respect gained for killing a Survivor soldier
	DMS_Survivor_Soldier_RankGain		= -250;
	DMS_Survivor_Soldier_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor soldier
	DMS_Survivor_Static_MoneyGain		= -100;						// The amount of Poptabs gained for killing a Survivor static gunner
	DMS_Survivor_Static_RepGain			= -100;						// The amount of Respect gained for killing a Survivor static gunner
	DMS_Survivor_Static_RankGain		= -400;
	DMS_Survivor_Static_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor static gunner
	DMS_Survivor_Vehicle_MoneyGain		= -500;						// The amount of Poptabs gained for killing a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RepGain		= -100;						// The amount of Respect gained for killing a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RankGain		= -600;
	DMS_Survivor_Vehicle_SpawnMoney		= 0;						// The amount of Poptabs carried by a Survivor vehicle crew member
	DMS_AIKill_DistanceBonusMinDistance	= 100;						// Minimum distance from the player to the AI to apply the distance bonus.
	DMS_AIKill_DistanceBonusCoefficient	= 0.05;						// If the distance from the player to the killed unit is more than "DMS_AIKill_DistanceBonusMinDistance" meters then the player gets a respect bonus equivalent to the distance multiplied by this coefficient. For example, killing an AI from 400 meters will give 100 extra respect (when the coefficient is 0.25). Set to 0 to disable the bonus. This bonus will not be applied if there isn't a regular AI kill bonus.
	DMS_Diff_RepOrTabs_on_roadkill 		= true;						// Whether or not you want to use different values for giving respect/poptabs when you run an AI over. Default values are NEGATIVE. This means player will LOSE respect or poptabs.
	DMS_Bandit_Soldier_RoadkillMoney	= -100;						// The amount of Poptabs gained/lost for running over a bandit soldier
	DMS_Bandit_Soldier_RoadkillRep		= -500;						// The amount of Respect gained/lost for running over a bandit soldier
	DMS_Bandit_Soldier_RoadkillRank		= 20;
	DMS_Bandit_Static_RoadkillMoney		= -100;						// The amount of Poptabs gained/lost for running over a bandit static gunner
	DMS_Bandit_Static_RoadkillRep		= -500;						// The amount of Respect gained/lost for running over a bandit static gunner
	DMS_Bandit_Static_RoadkillRank		= 30;
	DMS_Bandit_Vehicle_RoadkillMoney	= -100;						// The amount of Poptabs gained/lost for running over a bandit vehicle crew member
	DMS_Bandit_Vehicle_RoadkillRep		= -500;						// The amount of Respect gained/lost for running over a bandit vehicle crew member
	DMS_Bandit_Vehicle_RoadkillRank		= 50;
/* DonkeyPunchDMS Custom RoadKill Settings for Hero AI*/
	DMS_Hero_Soldier_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero soldier
	DMS_Hero_Soldier_RoadkillRep		= 10;						// The amount of Respect gained/lost for running over a hero soldier
	DMS_Hero_Soldier_RoadkillRank		= -40;
	DMS_Hero_Static_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero static gunner
	DMS_Hero_Static_RoadkillRep			= 10;						// The amount of Respect gained/lost for running over a hero static gunner
	DMS_Hero_Static_RoadkillRank		= -60;
	DMS_Hero_Vehicle_RoadkillMoney		= 20;						// The amount of Poptabs gained/lost for running over a hero vehicle crew member
	DMS_Hero_Vehicle_RoadkillRep		= 10;						// The amount of Respect gained/lost for running over a hero vehicle crew member
	DMS_Hero_Vehicle_RoadkillRank		= -100;
	/* DonkeyPunchDMS Custom Roadkill Settings for Survivor AI*/
	DMS_Survivor_Soldier_RoadkillMoney	= -200;						// The amount of Poptabs gained/lost for running over a Survivor soldier
	DMS_Survivor_Soldier_RoadkillRep	= -200;						// The amount of Respect gained/lost for running over a Survivor soldier
	DMS_Survivor_Soldier_RoadkillRank	= -200;
	DMS_Survivor_Static_RoadkillMoney	= -200;						// The amount of Poptabs gained/lost for running over a Survivor static gunner
	DMS_Survivor_Static_RoadkillRep		= -200;						// The amount of Respect gained/lost for running over a Survivor static gunner
	DMS_Survivor_Static_RoadkillRank	= -200;
	DMS_Survivor_Vehicle_RoadkillMoney	= -500;						// The amount of Poptabs gained/lost for running over a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RoadkillRep	= -100;						// The amount of Respect gained/lost for running over a Survivor vehicle crew member
	DMS_Survivor_Vehicle_RoadkillRank	= -100;
	DMS_banditSide						= EAST;						// The side (team) that AI Bandits will spawn on
/* DonkeyPunchDMS Custom Side Factions */
	DMS_heroSide						= EAST;						// The side (team) that AI Heros will spawn on
	DMS_survivorSide					= CIV;						// The side (team) that AI Survivor will spawn on
	DMS_clear_AI_body					= false;					// Clear AI body as soon as they die
	DMS_clear_AI_body_chance			= 20;						// Percentage chance that AI bodies will be cleared when they die
	DMS_ai_disable_ramming_damage 		= true;						// Disables damage due to ramming into AI. !!!NOTE: THIS WILL NOT BE RELIABLE WITH "DMS_ai_offload_to_client"!!!
	DMS_remove_roadkill					= true; 					// Remove gear from AI bodies that are roadkilled
	DMS_remove_roadkill_chance			= 100;						// Percentage chance that roadkilled AI bodies will be deleted
	DMS_explode_onRoadkill				= true;						// Whether or not to spawn an explosion when an AI gets run over. It will likely take out the 2 front wheels. Should help mitigate the ineffective AI vs. striders issue ;)
	DMS_RemoveNVG						= false;					// Remove NVGs from AI bodies
	DMS_MaxAIDistance					= 100;						// The maximum distance an AI unit can be from a mission before he is killed. Helps with AI running away and forcing the mission to keep running. Set to 0 if you don't want it.
	DMS_AIDistanceCheckFrequency		= 30;						// How often to check within DMS_fnc_TargetsKilled whether or not the AI is out of the maximum radius. Lower values increase frequency and increase server load, greater values decrease frequency and may cause longer delays for "runaway" AI.
	DMS_ai_offload_to_client			= true;						// Offload spawned AI groups to random clients. Helps with server performance.
	DMS_ai_offload_Only_DMS_AI			= true;						// Don't set this to false unless you know what you're doing.
	DMS_ai_offload_notifyClient			= false;					// Notify the client when AI has been offloaded to the client.
	DMS_ai_allowFreezing				= true;						// Whether or not to "freeze" AI that are a certain distance away from players (and therefore inactive).
	DMS_ai_freeze_Only_DMS_AI			= false;					// Whether or not to "freeze" AI that are not spawned by DMS.
	DMS_ai_freezingDistance				= 2750;						// If there are no players within this distance of the leader of an AI group, then the AI group will be "frozen".
	DMS_ai_unfreezingDistance			= 2750;						// If there are players within this distance of the leader of an AI group, then the AI group will be "un-frozen".
	DMS_ai_offloadOnUnfreeze			= true;						// Whether or not to offload AI to clients once they have been "un-frozen". NOTE: This config will be ignored if "DMS_ai_offload_to_client" is set to false.
	DMS_ai_freezeCheckingDelay			= 15;						// How often (in seconds) DMS will check whether to freeze/un-freeze AI.
	DMS_ai_freezeOnSpawn				= true;						// Whether or not to freeze an AI group when initially spawned.
	DMS_ai_share_info					= false;					// Share info about killer
	DMS_ai_share_info_distance			= 25;						// The distance killer's info will be shared to other AI
	DMS_ai_nighttime_accessory_chance	= 75;						// Percentage chance that AI will have a flashlight or laser pointer on their guns if spawned during nighttime
	DMS_ai_enable_water_equipment		= true;						// Enable/disable overriding default weapons of an AI if it spawns on/in water
	DMS_ai_skill_static					= [["aimingAccuracy",0.15],["aimingShake",0.15],["aimingSpeed",0.20],["spotDistance",0.15],["spotTime",0.15],["courage",0.30],["reloadSpeed",0.30],["commanding",0.30],["general",0.30]];	// Static AI Skills
	DMS_ai_skill_easy					= [["aimingAccuracy",0.20],["aimingShake",0.20],["aimingSpeed",0.30],["spotDistance",0.20],["spotTime",0.20],["courage",0.40],["reloadSpeed",0.40],["commanding",0.40],["general",0.40]];	// Easy
	DMS_ai_skill_moderate				= [["aimingAccuracy",0.30],["aimingShake",0.30],["aimingSpeed",0.40],["spotDistance",0.30],["spotTime",0.30],["courage",0.50],["reloadSpeed",0.50],["commanding",0.50],["general",0.50]];	// Moderate
	DMS_ai_skill_difficult				= [["aimingAccuracy",0.40],["aimingShake",0.40],["aimingSpeed",0.50],["spotDistance",0.40],["spotTime",0.40],["courage",0.60],["reloadSpeed",0.60],["commanding",0.60],["general",0.60]]; 	// Difficult
	DMS_ai_skill_hardcore				= [["aimingAccuracy",0.50],["aimingShake",0.50],["aimingSpeed",0.60],["spotDistance",0.50],["spotTime",0.50],["courage",0.70],["reloadSpeed",0.70],["commanding",0.70],["general",0.70]]; 	// Hardcore
	DMS_ai_skill_random					= ["hardcore","difficult","difficult","difficult","moderate","moderate","moderate","moderate","easy","easy"];	// Skill frequencies for "random" AI skills | Default: 10% hardcore, 30% difficult, 40% moderate, and 20% easy
	DMS_ai_skill_randomDifficult		= ["hardcore","difficult","difficult","difficult"];	// 60% chance for "difficult", 40% chance for "hardcore" AI.
	DMS_ai_skill_randomEasy				= ["moderate","moderate","easy","easy","easy"];		// 60% chance for "easy", 40% chance for "moderate" AI
	DMS_ai_skill_randomIntermediate		= ["difficult","moderate","moderate","moderate"];	// 60% chance for "moderate", 40% chance for "difficult" AI.
	DMS_AI_WP_Radius_easy				= 20;						// Waypoint radius for "easy" AI.
	DMS_AI_WP_Radius_moderate			= 30;						// Waypoint radius for "moderate" AI.
	DMS_AI_WP_Radius_difficult			= 40;						// Waypoint radius for "difficult" AI.
	DMS_AI_WP_Radius_hardcore			= 50;						// Waypoint radius for "hardcore" AI.
	DMS_AI_AimCoef_easy					= 0.9;						// "Custom Aim Coefficient" (weapon sway multiplier) for "easy" AI
	DMS_AI_AimCoef_moderate				= 0.65;						// "Custom Aim Coefficient" (weapon sway multiplier) for "moderate" AI
	DMS_AI_AimCoef_difficult			= 0.4;						// "Custom Aim Coefficient" (weapon sway multiplier) for "difficult" AI
	DMS_AI_AimCoef_hardcore				= 0.1;						// "Custom Aim Coefficient" (weapon sway multiplier) for "hardcore" AI
	DMS_AI_EnableStamina_easy			= true;						// Whether or not to keep the stamina system for "easy" AI.
	DMS_AI_EnableStamina_moderate		= true;						// Whether or not to keep the stamina system for "moderate" AI.
	DMS_AI_EnableStamina_difficult		= true;					// Whether or not to keep the stamina system for "difficult" AI.
	DMS_AI_EnableStamina_hardcore		= true;					// Whether or not to keep the stamina system for "hardcore" AI.
	DMS_AI_WP_Radius_base				= 5;						// Waypoint radius for AI in bases.
	DMS_AI_WP_Radius_heli				= 500;						// Waypoint radius for AI in helis.
	DMS_AI_destroyVehicleChance			= 50;						// Percent chance that an AI vehicle will be destroyed after the AI have been killed. Set to 100 for always, or 0 for never.
	DMS_AI_destroyStaticWeapon			= true;						// Whether or not to destroy static HMGs after AI death.
	DMS_AI_destroyStaticWeapon_chance	= 100;						// Percent chance that a static weapon will be destroyed (only applied if "DMS_AI_destroyStaticWeapon" is true)
	DMS_static_weapons =				[							// Static weapons for AI
											"O_HMG_01_high_F"
										];
	DMS_ai_default_items =				[							// Toolbelt items each AI will spawn with
											"ItemWatch",
											"ItemMap",
											"ItemCompass"
										];
	DMS_ai_BipodList =					[
											"bipod_01_F_blk",
											"bipod_02_F_blk",
											"bipod_03_F_blk",
											"bipod_03_F_oli"
										];
	//Assault Class
	DMS_assault_weps =					[							// Assault Rifles
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
	DMS_assault_pistols =				[							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
											"rhs_weap_pya",
											"rhs_weap_makarov_pm",
											"rhs_weap_pp2000_folded",
											"rhsusf_weap_m9",
											"hgun_Pistol_heavy_02_F",
											"hgun_Pistol_Signal_F",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus"
										];
	DMS_assault_optics =				[							// Optics for Assault Class
											"HLC_Optic_PSO1",
											"HLC_Optic_1p29",
											"hlc_optic_kobra",
											"rhs_acc_1pn93_2",
											"rhs_acc_1p29",
											"rhs_acc_1p78",
											"rhs_acc_pkas",
											"rhs_acc_1p63",
											"rhs_acc_ekp1",
											"rhs_acc_pso1m2",
											"rhs_acc_nita",
											"rhs_acc_1pn93_1",
											"rhs_acc_rakursPM",
											"SMA_MICRO_T2_LM",
											"SMA_BARSKA"
										];
	DMS_assault_optic_chance			= 25;						// Percentage chance that an Assault Class AI will get an optic
	DMS_assault_bipod_chance			= 5;						// Percentage chance that an Assault Class AI will get a bipod
	DMS_assault_suppressor_chance		= 5;						// Percentage chance that an Assault Class AI will get a suppressor
	DMS_assault_items =					[							// Items for Assault Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exitem_bandage_dirty",
											"Exitem_bandage_dirty",
											"Exitem_dressing",
											"Exitem_franta",
											"Exitem_bakedbeans"
										];
	DMS_assault_equipment =				[							// Equipment for Assault Class AI (stuff that goes in toolbelt slots)
											"ItemGPS"
										];
	DMS_assault_RandItemCount =			2;							// How many random items to add to the AI's inventory.
	DMS_assault_RandItems =				[							// The random items that will be added to the AI's inventory.
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_Surstromming",
											"Exile_Item_DuctTape",
											"Exile_Item_PowerDrink",
											"Exile_Item_EnergyDrink",
											"Exile_Item_InstaDoc",
											"Exile_Item_Vishpirin"
										];
	DMS_assault_helmets	=				[							// Helmets for Assault Class
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
	DMS_assault_clothes	=				[							// Uniforms for Assault Class
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
	DMS_assault_vests =					[							// Vests for Assault Class
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
	DMS_assault_backpacks =				[							// Backpacks for Assault Class
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
	//Officer Class
	DMS_officer_weps =					[							// Officer Rifles
											"hlc_rifle_l1a1slr",
											"hlc_rifle_SLR",
											"hlc_rifle_STG58F",
											"hlc_rifle_SLRchopmod",
											"rhs_weap_sr25",
											"rhs_weap_sr25_ec",
											"rhs_weap_svd",
											"rhs_weap_svdp_wd",
											"rhs_weap_svdp_wd_npz",
											"rhs_weap_svdp_npz",
											"rhs_weap_svds",
											"rhs_weap_m24sws",
											"rhs_weap_svds_npz"
										];
	DMS_officer_pistols =				[							// Pistols for Officer Class (Set to empty array if you don't want to give them any pistols)
											"rhs_weap_pya",
											"rhs_weap_makarov_pm",
											"rhs_weap_pp2000_folded",
											"rhsusf_weap_m9",
											"hgun_Pistol_heavy_02_F",
											"hgun_Pistol_Signal_F",
											"Exile_Weapon_Makarov",
											"Exile_Weapon_Taurus",
											"Exile_Weapon_TaurusGold"
										];
	DMS_officer_optics =				[							// Optics for Officer Class
											"HLC_Optic_PSO1",
											"rhs_acc_pso1m2",
											"optic_AMS",
											"SMA_BARSKA"
										];
	DMS_officer_optic_chance			= 100;						// Percentage chance that an Officer Class AI will get an optic
	DMS_officer_bipod_chance			= 90;						// Percentage chance that an Officer Class AI will get a bipod
	DMS_officer_suppressor_chance		= 5;						// Percentage chance that an Officer Class AI will get a suppressor
	DMS_officer_items =					[							// Items for Officer Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exitem_dressing",
											"Exitem_dressing",
											"Exitem_vitamins",
											"Exile_Item_EMRE",
											"Exile_Item_PlasticBottleCoffee",
											"Exitem_documents"
										];
	DMS_officer_equipment =				[							// Equipment for Officer Class AI (stuff that goes in toolbelt slots)
											"ItemGPS",
											"rhs_tr8_periscope_pip"
										];
	DMS_officer_RandItemCount =			2;							// How many random items to add to the AI's inventory.
	DMS_officer_RandItems =				[							// The random items that will be added to the AI's inventory.
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_Surstromming",
											"Exile_Item_PowerDrink",
											"Exile_Item_EnergyDrink",
											"Exile_Item_InstaDoc",
											"Exile_Item_Bandage",
											"Exile_Item_DuctTape",
											"Exile_Item_Vishpirin"
										];
	DMS_officer_helmets	=				[							// Helmets for Officer Class
											"FGN_RU_Beret_OMON_New",
											"FGN_RU_OSNBeret",
											"rhssaf_beret_green",
											"rhssaf_beret_red",
											"rhssaf_beret_black"
										];
	DMS_officer_clothes	=				[							// Uniforms for Officer Class
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
											"rhs_uniform_cu_ocp",
											"rhs_uniform_cu_ucp",
											"rhs_uniform_cu_ocp_101st",
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
											"rhs_uniform_mvd_izlom"
										];
	DMS_officer_vests =					[							// Vests for Officer Class
											"FGN_RU_6B513_Khaki_Officer",
											"FGN_RU_6B513_Officer",
											"FGN_RU_6B513_TTsKO_Officer",
											"FGN_RU_6B513_VSR_Officer",
											"FGN_RU_6B519_Khaki_Officer",
											"FGN_RU_6B519_Officer",
											"FGN_RU_6B519_TTsKO_Officer",
											"FGN_RU_6B519_VSR_Officer",
											"rhsgref_6b23_khaki_officer",
											"rhsgref_6b23_ttsko_digi_officer",
											"rhsgref_6b23_ttsko_mountain_officer",
											"rhssaf_vest_md98_officer",
											"rhs_vest_commander"
										];
	DMS_officer_backpacks =				[							// Backpacks for Officer Class
											"TRYK_B_Coyotebackpack_BLK"
										];
	//Medic Class
	DMS_medic_weps =					[							// Medic Rifles
											"hlc_m249_pip1",
											"rhs_weap_m27iar",
											"rhs_weap_m16a4_grip"
										];
	DMS_medic_pistols =				[								// Pistols for Medic Class (Set to empty array if you don't want to give them any pistols)
											"Exile_Weapon_Taurus",
											"Exile_Weapon_TaurusGold"
										];
	DMS_medic_optics =				[								// Optics for Medic Class
											"rhsusf_acc_ACOG2",
											"SMA_MICRO_T2_LM"
										];
	DMS_medic_optic_chance			= 75;							// Percentage chance that an Medic Class AI will get an optic
	DMS_medic_bipod_chance			= 50;							// Percentage chance that an Medic Class AI will get a bipod
	DMS_medic_suppressor_chance		= 20;							// Percentage chance that an Medic Class AI will get a suppressor
	DMS_medic_items =					[							// Items for Medic Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exitem_bloodbag",
											"Exitem_bloodbag",
											"Exitem_bloodbag",
											"Exitem_bloodbag",
											"Exitem_dressing",
											"Exitem_dressing",
											"Exitem_splint",
											"Exitem_morphine",
											"Exile_Item_GloriousKnakworst_Cooked",
											"Exile_Item_PlasticBottleFreshWater",
											"Exitem_documents"
										];
	DMS_medic_equipment =				[							// Equipment for Medic Class AI (stuff that goes in toolbelt slots)
											"ItemGPS",
											"Binocular"
										];
	DMS_medic_RandItemCount =			1;							// How many random items to add to the AI's inventory.
	DMS_medic_RandItems =				[							// The random items that will be added to the AI's inventory.
											"Exile_Item_Defibrillator",
											"Exile_Item_Surstromming",
											"Exile_Item_PowerDrink",
											"Exile_Item_EnergyDrink",
											"Exile_Item_DuctTape",
											"Exitem_bloodbag_empty",
											"Exitem_painkillers",
											"Exile_Item_InstaDoc",
											"Exile_Item_Vishpirin"
										];
	DMS_medic_helmets	=				[							// Helmets for Medic Class
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
											"rhs_6b28_flora_ess_bala"
										];
	DMS_medic_clothes	=				[							// Uniforms for Medic Class
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
											"rhs_uniform_cu_ocp",
											"rhs_uniform_cu_ucp",
											"rhs_uniform_cu_ocp_101st",
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
											"rhs_uniform_mvd_izlom"
										];
	DMS_medic_vests =					[							// Vests for Medic Class
											"FGN_RU_6B513_Khaki_Medic",
											"FGN_RU_6B513_Medic",
											"FGN_RU_6B513_TTsKO_Medic",
											"FGN_RU_6B513_VSR_Officer",
											"FGN_RU_6B519_Khaki_Medic",
											"FGN_RU_6B519_Medic",
											"FGN_RU_6B519_TTsKO_Medic",
											"FGN_RU_6B519_VSR_Medic",
											"rhsgref_6b23_khaki_medic",
											"rhsgref_6b23_ttsko_digi_medic",
											"rhsgref_6b23_ttsko_mountain_medic",
											"rhs_6b23_medic",
											"rhs_6b23_digi_medic",
											"rhs_6b23_ML_medic"
										];
	DMS_medic_backpacks =				[							// Backpacks for Medic Class
											"rhs_medic_bag",
											"TRYK_B_Medbag_OD",
											"TRYK_B_Medbag_BK"
										];					
	//Machine Gun Class
	DMS_MG_weps	=						[							// Machine Guns
											"PKP",
											"Pecheneg",
											"hlc_rifle_rpk",
											"hlc_rifle_rpk12",
											"hlc_rifle_rpk74n",
											"rhs_weap_pkm",
											"rhs_weap_pkp",
											"hlc_lmg_MG42",
											"Exile_Weapon_RPK",
											"hlc_rifle_saiga12k",
											"Exile_Weapon_PK",
											"Exile_Weapon_PKP"
										];
	DMS_MG_pistols =					[							// Pistols for Assault Class (Set to empty array if you don't want to give them any pistols)
										"rhs_weap_pya",
										"rhs_weap_makarov_pm"
										];
	DMS_MG_optics =						[							//	Optics for MG Class
											"HLC_Optic_PSO1",
											"HLC_Optic_1p29",
											"hlc_optic_kobra",
											"rhs_acc_1pn93_2",
											"rhsusf_acc_ACOG2",
											"rhs_acc_1p29",
											"rhs_acc_1p78",
											"rhs_acc_pkas",
											"rhs_acc_1p63",
											"rhs_acc_ekp1",
											"rhs_acc_pso1m2",
											"rhs_acc_nita",
											"rhs_acc_1pn93_1",
											"rhs_acc_rakursPM",
											"SMA_MICRO_T2_LM",
											"SMA_BARSKA"
											];
	DMS_MG_optic_chance					= 15;						// Percentage chance that an MG Class AI will get an optic
	DMS_MG_bipod_chance					= 90;						// Percentage chance that an MG Class AI will get a bipod
	DMS_MG_suppressor_chance			= 1;						// Percentage chance that an MG Class AI will get a suppressor
	DMS_MG_items =						[							// Items for MG Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exitem_dressing",
											"Exitem_dressing",
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_PlasticBottleFreshWater"
										];
	DMS_MG_equipment =					[							// Equipment for MG Class AI (stuff that goes in toolbelt slots)
											"Binocular"
										];
	DMS_MG_RandItemCount =				3;							// How many random items to add to the AI's inventory.
	DMS_MG_RandItems =					[							// The random items that will be added to the AI's inventory.
											"Exile_Item_EMRE",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_PowerDrink",
											"Exile_Item_PlasticBottleCoffee",
											"Exile_Item_Vishpirin",
											"Exile_Item_InstaDoc"
										];
	DMS_MG_helmets =					[							// Helmets for MG Class
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
											"H_Hat_brown",
											"H_Hat_camo",
											"H_Hat_checker",
											"H_Hat_grey",
											"H_Shemag_khk",
											"H_Shemag_olive",
											"H_Shemag_olive_hs",
											"H_ShemagOpen_khk",
											"H_TurbanO_blk"
										];
	DMS_MG_clothes =					[							// Uniforms for MG Class
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
	DMS_MG_vests =						[							// Vests for MG Class
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
	DMS_MG_backpacks =					[							// Backpacks for MG Class
											"rhssaf_kitbag_md2camo",
											"rhssaf_kitbag_digital",
											"rhssaf_kitbag_smb",
											"rhsusf_assault_eagleaiii_coy",
											"rhsusf_assault_eagleaiii_ocp",
											"rhsusf_assault_eagleaiii_ucp",
											"rhsusf_falconii_coy",
											"rhsusf_falconii_mc",
											"rhsusf_falconii",
											"rhs_assault_umbts",
											"rhs_assault_umbts_engineer_empty",
											"rhs_sidor",
											"rhs_rpg_empty",
											"TRYK_B_AssaultPack_UCP",
											"TRYK_B_AssaultPack_Type2camo",
											"TRYK_B_Kitbag_Base",
											"TRYK_B_Kitbag_blk",
											"TRYK_B_Kitbag_aaf",
											"TRYK_B_Carryall_blk",
											"TRYK_B_Carryall_wood",
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
											"B_AssaultPack_khk",
											"B_AssaultPack_rgr",
											"B_AssaultPack_sgg",
											"B_Bergen_blk",
											"B_Carryall_ocamo",
											"B_Carryall_oli",
											"B_FieldPack_blk",
											"B_FieldPack_cbr",
											"B_FieldPack_ocamo",
											"B_HuntingBackpack",
											"B_Kitbag_cbr",
											"B_Kitbag_sgg"
										];
	//Sniper Class
	DMS_sniper_weps =					[							// Sniper Rifles
											"rhs_weap_t5000",
											"rhs_weap_XM2010",
											"rhs_weap_XM2010_wd",
											"rhs_weap_XM2010_sa",
											"rhs_weap_m14ebrri",
											"hlc_rifle_M14",
											"hlc_rifle_m14sopmod"
										];
	DMS_sniper_pistols =				[							// Pistols for Sniper Class (Set to empty array if you don't want to give them any pistols)
											"rhs_weap_pp2000_folded",
											"Exile_Weapon_Colt1911"
										];
	DMS_sniper_optics =					[							// Optics for Sniper Class
											"rhsusf_acc_LEUPOLDMK4_2",
											"optic_AMS",
											"optic_LRPS"
										];
	DMS_sniper_optic_chance				= 99;						// Percentage chance that a Sniper Class AI will get an optic
	DMS_sniper_bipod_chance				= 100;						// Percentage chance that a Sniper Class AI will get a bipod
	DMS_sniper_suppressor_chance		= 5;						// Percentage chance that a Sniper Class AI will get a suppressor

	DMS_sniper_items =					[							// Items for Sniper Class AI (Loot stuff that goes in uniform/vest/backpack)
											"Exitem_dressing",
											"Exitem_dressing",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_PlasticBottleFreshWater",
											"Exile_Item_PlasticBottleFreshWater",
											"Exitem_documents"
										];
	DMS_sniper_equipment =				[							// Equipment for Sniper Class AI (stuff that goes in toolbelt slots)
											"rangefinder",
											"ItemGPS"
										];
	DMS_sniper_RandItemCount =			3;							// How many random items to add to the AI's inventory.
	DMS_sniper_RandItems =				[							// The random items that will be added to the AI's inventory.
											"Exile_Item_EMRE",
											"Exile_Item_PlasticBottleCoffee",
											"Exile_Item_CanOpener",
											"Exile_Item_DuctTape"
										];
	DMS_sniper_helmets =				[							// Helmets for Sniper Class
											"H_Booniehat_oli",
											"rhssaf_booniehat_woodland",
											"rhs_Booniehat_m81",
											"rhs_Booniehat_flora",
											"H_Booniehat_indp"
										];
	DMS_sniper_clothes =				[							// Uniforms for Sniper Class
											"rhs_uniform_g3_mc",
											"U_B_GhillieSuit",
											"rhs_uniform_g3_m81",
											"rhs_uniform_g3_rgr",
											"rhs_uniform_g3_blk",
											"TRYK_U_B_MARPAT_Wood",
											"rhs_uniform_FROG01_wd",
											"TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt"
										];
	DMS_sniper_vests =					[							// Vests for Sniper Class
											"FGN_RU_6B513_Khaki_Sniper",
											"FGN_RU_6B513_Sniper",
											"FGN_RU_6B513_TTsKO_Sniper",
											"FGN_RU_6B513_VSR_Sniper",
											"FGN_RU_6B519_Khaki_Sniper",
											"FGN_RU_6B519_Sniper",
											"FGN_RU_6B519_TTsKO_Sniper",
											"FGN_RU_6B519_VSR_Sniper",
											"rhsgref_6b23_khaki_sniper",
											"rhsgref_6b23_ttsko_digi_sniper",
											"rhsgref_6b23_ttsko_mountain_sniper",
											"rhs_6b23_sniper",
											"rhs_6b23_digi_sniper",
											"rhs_6b23_ML_sniper"
										];
	DMS_sniper_backpacks =				[							// Backpacks for Sniper Class
											"TRYK_B_Kitbag_blk",
											"TRYK_B_Kitbag_aaf",
											"TRYK_B_Carryall_blk",
											"TRYK_B_Carryall_wood",
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
											"B_Bergen_blk",
											"B_Bergen_rgr",
											"B_Bergen_sgg",
											"B_Carryall_cbr",
											"B_Carryall_khk",
											"B_Carryall_ocamo",
											"B_Carryall_oli",
											"B_FieldPack_blk",
											"B_FieldPack_cbr",
											"B_FieldPack_ocamo"
										];
	DMS_ai_SupportedClasses =			[							// Allowed AI classes. If you want to create your own class, make sure you define everything as I've defined above, and add it here
											"assault",
											"MG",
											"sniper",
											"officer",
											"medic"
										];
	DMS_ai_SupportedRandomClasses = 	[							// Allowed "random" AI presets here if you want to create different random presets.
											"random",
											"random_non_assault",
											"random_non_officer",
											"random_non_medic",
											"random_non_MG",
											"random_non_sniper"
										];
	DMS_random_AI =						[							// Random AI preset that contains all default classes | DEFAULT: 60% Assault, 20% MG, 20% Sniper
											"assault",
											"assault",
											"assault",
											"assault",
											"assault",
											"assault",
											"assault",
											"assault",
											"assault",
											"assault",
											"MG",
											"MG",
											"officer",
											"officer",
											"medic",
											"sniper"
										];
	DMS_random_non_assault_AI =			[							// Random AI preset that excludes the "assault" class
											"MG",
											"MG",
											"officer",
											"officer",
											"sniper"
										];
	DMS_random_non_officer_AI =			[							// Random AI preset that excludes the "officer" class
											"MG",
											"MG",
											"assault",
											"assault",
											"officer"
										];
	DMS_random_non_medic_AI =			[							// Random AI preset that excludes the "medic" class
											"MG",
											"MG",
											"assault",
											"assault",
											"sniper"
										];										
	DMS_random_non_MG_AI =				[							// Random AI preset that excludes the "MG" class
											"assault",
											"assault",
											"medic",
											"medic",
											"sniper"
										];
	DMS_random_non_sniper_AI =			[							// Random AI preset that excludes the "sniper" class
											"assault",
											"assault",
											"officer",
											"medic",
											"MG"
										];	
	DMS_ai_use_launchers				= true;						// Enable/disable spawning an AI in a group with a launcher
	DMS_ai_launchers_per_group			= 1;						// How many units per AI group can get a launcher.
	DMS_ai_use_launchers_chance			= 50;						// Percentage chance to actually spawn the launcher (per-unit). With "DMS_ai_launchers_per_group" set to 2, and "DMS_ai_use_launchers_chance" set to 50, there will be an average of 1 launcher per group.
	DMS_AI_launcher_ammo_count			= 1;						// How many rockets an AI will get with its launcher
	DMS_ai_remove_launchers				= true;						// Remove rocket launchers on AI death

	DMS_AI_wep_launchers_AT =			[							// AT Launchers
											"rhs_weap_m72a7"
										];
	DMS_AI_wep_launchers_AA =			[							// AA Launchers
											//"rhs_weap_fim92"
										];
	DMS_RHeli_Height					= 500;						// Altitude of the heli when flying to drop point.
	DMS_RHeli_MinDistFromDrop			= 500;						// Minimum distance for the reinforcement heli to spawn from drop point.
	DMS_RHeli_MaxDistFromDrop			= 5000;						// Maximum distance for the reinforcement heli to spawn from drop point.
	DMS_RHeli_MinDistFromPlayers		= 1000;						// Minimum distance for the reinforcement heli to spawn from players.
/* AI Settings */
/* Loot Settings */
	DMS_GodmodeCrates 					= true;						// Whether or not crates will have godmode after being filled with loot.
	DMS_MinimumMagCount					= 2;						// Minimum number of magazines for weapons.
	DMS_MaximumMagCount					= 5;						// Maximum number of magazines for weapons.
	DMS_CrateCase_Sniper =				[							// If you pass "Sniper" in _lootValues, then it will spawn these weapons/items/backpacks
											[
												["rangefinder",1],
												["rhs_weap_M107",1],
												["rhs_weap_m24sws_blk",1]
											],
											[
												["ItemGPS",1],
												["Exile_Item_InstaDoc",2],
												["Exile_Item_Surstromming_Cooked",3],
												["Exile_Item_PlasticBottleFreshWater",3],
												["optic_DMS",1],
												["acc_pointer_IR",1],
												["optic_AMS",1],
												["rhsusf_5Rnd_762x51_m993_Mag",2],
												["rhsusf_5Rnd_762x51_m118_special_Mag",2],
												["rhsusf_mag_10Rnd_STD_50BMG_M33",2]
											],
											[
												["B_Carryall_cbr",1]
											]
										];
	DMS_BoxWeapons =					[							// List of weapons that can spawn in a crate
											"Exile_Weapon_AKS_Gold",
											"hlc_rifle_Colt727",
											"hlc_rifle_Colt727_GL",
											"hlc_rifle_aug",
											"hlc_rifle_auga1_B",
											"hlc_rifle_auga1carb",
											"hlc_rifle_aughbar",
											"hlc_rifle_aughbar_b",
											"hlc_rifle_auga2",
											"hlc_rifle_auga2_b",
											"hlc_rifle_auga2carb_b",
											"hlc_rifle_auga2lsw",
											"hlc_rifle_auga2lsw_b",
											"hlc_rifle_augsr",
											"hlc_rifle_augsr_t",
											"hlc_rifle_augsrcarb",
											"hlc_rifle_augsrcarb_b",
											"hlc_rifle_augsrhbar",
											"hlc_rifle_augsrhbar_b",
											"hlc_rifle_auga3",
											"hlc_rifle_auga3_bl",
											"hlc_rifle_auga3_b",
											"hlc_rifle_auga3_GL",
											"hlc_rifle_auga3_GL_BL",
											"hlc_rifle_auga3_GL_B",
											"hlc_rifle_l1a1slr",
											"hlc_rifle_SLR",
											"hlc_rifle_STG58F",
											"hlc_rifle_FAL5061",
											"hlc_rifle_FAL5000",
											"hlc_rifle_FAL5000Rail",
											"hlc_rifle_c1A1",
											"HLC_Rifle_g3ka4_GL",
											"hlc_rifle_hk51",
											"hlc_rifle_hk53",
											"hlc_rifle_hk53RAS",
											"hlc_rifle_hk33a2",
											"hlc_rifle_hk33a2RIS",
											"hlc_rifle_MG36",
											"hlc_rifle_FAL5061Rail",
											"rhs_weap_g36c",
											"rhs_weap_g36kv",
											"rhs_weap_g36kv_ag36",
											"SMA_HK416afgQCB",
											"SMA_HK416afg",
											"SMA_HK416vfg",
											"SMA_HK416GL",
											"SMA_HK416afgOD",
											"SMA_HK416MOEOD",
											"SMA_HK416CQBafgOD",
											"SMA_HK416CQBMOEOD",
											"SMA_HK416GLOD",
											"SMA_HK416CQBGLOD",
											"SMA_HK416_afg_ODPAINTED",
											"SMA_HK416_GL_ODPAINTED",
											"SMA_HK416_vfg_ODPAINTED",
											"SMA_HK416CQB_vfg_ODPAINTED",
											"SMA_HK416CUSTOMafg",
											"SMA_HK416CUSTOMCQBvfg",
											"SMA_HK416CUSTOMCQBvfgB",
											"SMA_HK416CUSTOMCQBvfgODP",
											"SMA_HK416CUSTOMvfg",
											"SMA_HK416CUSTOMvfgB",
											"SMA_HK416CUSTOMvfgODP",
											"SMA_HK416CUSTOMCQBafg",
											"SMA_HK416CUSTOMCQBafgB",
											"SMA_HK416CUSTOMCQBafgODP",
											"SMA_HK416CUSTOMafgB",
											"SMA_HK416CUSTOMafgODP",
											"SMA_HK416GLCQB",
											"SMA_HK416GLCQB_B",
											"SMA_SAR21_F",
											"SMA_SAR21MMS_F",
											"SMA_SAR21_AFG_F",
											"SMA_SAR21MMS_AFG_F",
											"SMA_SKS_F",
											"SMA_STG_E4_F",
											"SMA_STG_E4_BLACK_F",
											"SMA_STG_E4_OD_F",
											"SMA_AUG_EGLM",
											"SMA_AUG_A3_F",
											"SMA_AUG_A3_MCAM_F",
											"SMA_AUG_A3_KRYPT_F",
											"SMA_AUG_EGLM_Olive",
											"SMA_MK16",
											"SMA_Mk17",
											"SMA_Mk16_EGLM",
											"SMA_Mk17_EGLM",
											"SMA_Mk16_black",
											"SMA_Mk16_Green",
											"SMA_Mk16_blackQCB",
											"SMA_Mk16_GreenQCB",
											"SMA_Mk16QCB",
											"SMA_Mk17_black",
											"SMA_Mk17_Green",
											"SMA_ACR",
											"SMA_ACRblk",
											"SMA_ACRGL",
											"SMA_ACRGL_B",
											"SMA_ACRMOE",
											"SMA_ACRMOE_Blk",
											"SMA_ACRREM",
											"SMA_ACRREMblk",
											"SMA_ACRREMGL",
											"SMA_ACRREMGL_B",
											"SMA_ACRREMCQBGL",
											"SMA_ACRREMCQBGL_B",
											"SMA_ACRREMMOE",
											"SMA_ACRREMMOEblk",
											"SMA_ACRREMMOECQB",
											"SMA_ACRREMMOECQBblk",
											"SMA_ACRREMAFG",
											"SMA_ACRREMAFGblk",
											"SMA_ACRREMAFGCQB",
											"SMA_ACRREMAFGCQBblk",
											"SMA_ACRREM_N",
											"SMA_ACRREMblk_N",
											"SMA_ACRREMMOE_N",
											"SMA_ACRREMMOEblk_N",
											"SMA_ACRREMMOECQB_N",
											"SMA_ACRREMMOECQBblk_N",
											"SMA_ACRREMAFG_N",
											"SMA_ACRREMAFGblk_N",
											"SMA_ACRREMAFGCQB_N",
											"SMA_ACRREMAFGCQBblk_N",
											"SMA_ACRREMCQBGL_B_N",
											"SMA_ACRREMCQBGL_N",
											"SMA_ACRREMGL_B_N",
											"SMA_ACRREMGL_N",
											"SMA_L85RIS",
											"SMA_L85RISNR",
											"SMA_L85RISafg",
											"SMA_L85RISafgNR",
											"SMA_Steyr_AUG_F",
											"SMA_Steyr_AUG_BLACK_F",
											"SMA_AAC_MPW_9_Black",
											"SMA_AAC_MPW_16_OD",
											"SMA_Tavor_F",
											"SMA_TavorOD_F",
											"SMA_TavorBLK_F",
											"SMA_CTAR_F",
											"SMA_CTAROD_F",
											"SMA_CTARBLK_F",
											"SMA_MK18afg",
											"SMA_MK18afg_SM",
											"SMA_MK18afgBLK",
											"SMA_MK18afgODBLK",
											"SMA_MK18afgBLK_SM",
											"SMA_MK18afgODBLK_SM",
											"SMA_MK18afgOD",
											"SMA_MK18afgOD_SM",
											"SMA_MK18MOE",
											"SMA_MK18MOE_SM",
											"SMA_MK18MOEBLK",
											"SMA_MK18MOEBLK_SM",
											"SMA_MK18MOEODBLK",
											"SMA_MK18MOEODBLK_SM",
											"SMA_MK18MOEOD",
											"SMA_MK18MOEOD_SM",
											"SMA_MK18_GL",
											"SMA_MK18_GL_SM",
											"SMA_MK18BLK_GL",
											"SMA_MK18BLK_GL_SM",
											"SMA_MK18ODBLK_GL",
											"SMA_MK18ODBLK_GL_SM",
											"SMA_MK18OD_GL",
											"SMA_MK18OD_GL_SM",
											"SMA_M4_GL",
											"SMA_M4_GL_SM",
											"SMA_M4afg",
											"SMA_M4afg_SM",
											"SMA_M4afg_OD",
											"SMA_M4afg_OD_SM",
											"SMA_M4afg_BLK1",
											"SMA_M4afg_BLK1_SM",
											"SMA_M4MOE",
											"SMA_M4MOE_SM",
											"SMA_M4MOE_OD",
											"SMA_M4MOE_OD_SM",
											"SMA_M4MOE_BLK1",
											"SMA_M4MOE_BLK1_SM",
											"SMA_M4afgSTOCK",
											"SMA_M4CQBR",
											"SMA_M4CQBRMOE"
										];
	DMS_BoxFood =						[							// List of food that can spawn in a crate.
											"Exile_Item_GloriousKnakworst",
											"Exile_Item_Surstromming_Cooked",
											"Exile_Item_SausageGravy",
											"Exile_Item_ChristmasTinner_Cooked",
											"Exile_Item_BBQSandwich",
											"Exile_Item_Catfood_Cooked",
											"Exile_Item_DogFood",
											"Exile_Item_EMRE",
											"Exile_Item_BeefParts",
											"Exile_Item_Noodles",
											"Exile_Item_SeedAstics",
											"Exile_Item_Raisins",
											"Exile_Item_Moobar",
											"Exile_Item_InstantCoffee"
										];
	DMS_BoxDrinks =						[
											"Exile_Item_PlasticBottleCoffee",
											"Exile_Item_PowerDrink",
											"Exile_Item_PlasticBottleFreshWater",
											"Exile_Item_EnergyDrink",
											"Exile_Item_MountainDupe",
											"Exile_Item_ChocolateMilk",
											"Exile_Headgear_GasMask"
										];
	DMS_BoxMeds =						[
											"Exile_Item_InstaDoc",
											"Exile_Item_Vishpirin",
											"Exile_Item_Bandage"
										];
	DMS_BoxSurvivalSupplies	=			[							//List of survival supplies (food/drink/meds) that can spawn in a crate. "DMS_BoxFood", "DMS_BoxDrinks", and "DMS_BoxMeds" is automatically added to this list.
											"Exile_Item_Matches",
											"Exile_Item_CookingPot",
											"Exile_Melee_Axe",
											"Exile_Item_CanOpener"
										] + DMS_BoxFood + DMS_BoxDrinks + DMS_BoxMeds;
	DMS_Box_BaseParts_Wood =			[							// List of wooden base parts.
											"Exile_Item_WoodWallKit",
											"Exile_Item_WoodDoorKit",
											"Exile_Item_WoodGateKit",
											"Exile_Item_WoodFloorKit",
											"Exile_Item_WoodStairsKit",
											"Exitem_documents",
											"Exitem_documents"
										];
	DMS_Box_BaseParts_Concrete =		[							// List of concrete base parts
											"Exile_Item_ConcreteWallKit",
											"Exile_Item_ConcreteWallKit",
											"Exile_Item_ConcreteWallKit",
											"Exile_Item_ConcreteWallKit",
											"Exile_Item_ConcreteDoorKit",
											"Exile_Item_ConcreteGateKit",
											"Exile_Item_ConcreteFloorKit",
											"Exile_Item_ConcreteStairsKit",
											"Exile_Headgear_GasMask",
											"Exitem_documents",
											"Exitem_documents",
											"Exitem_documents",
											"Exitem_documents"
										];
	DMS_BoxBaseParts =					[							// List of all base parts to spawn. Weighted towards wood base parts.
											"Exile_Item_FortificationUpgrade",
											"Exile_Item_FortificationUpgrade",
											"Exile_Item_SandBagsKit_Long",
											"Exile_Item_SandBagsKit_Long",
											"Exile_Item_SandBagsKit_Corner",
											"Exile_Item_SandBagsKit_Corner",
											"Exile_Item_HBarrier5Kit",
											"Exitem_documents"
										] + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Wood + DMS_Box_BaseParts_Concrete;
	DMS_BoxCraftingMaterials =			[
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_Cement",
											"Exile_Item_Cement",
											"Exile_Item_Cement",
											"Exile_Item_Cement",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_FuelCanisterFull",
											"Exile_Item_FuelCanisterFull",
											"Exile_Item_JunkMetal",
											"Exile_Item_JunkMetal",
											"Exile_Item_JunkMetal",
											"Exitem_documents",
											"Exitem_documents"
										];
	DMS_BoxTools =						[
											"Exile_Item_Grinder",
											"Exile_Item_Handsaw",
											"Exile_Item_CanOpener"
										];
	DMS_BoxBuildingSupplies	=			[							// List of building supplies that can spawn in a crate ("DMS_BoxBaseParts", "DMS_BoxCraftingMaterials", and "DMS_BoxTools" are automatically added to this list. "DMS_BoxCraftingMaterials" is added twice for weight.)
											"Exile_Item_DuctTape",
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_Sand",
											"Exile_Item_Cement",
											"Exile_Item_Cement",
											"Exile_Item_Cement",
											"Exile_Item_Cement",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_WaterCanisterDirtyWater",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_MetalPole",
											"Exile_Item_FuelCanisterFull",
											"Exile_Item_FuelCanisterFull",
											"Exile_Item_PortableGeneratorKit"
										] + DMS_BoxBaseParts + DMS_BoxCraftingMaterials + DMS_BoxCraftingMaterials + DMS_BoxTools;
	DMS_BoxOptics =						[							// List of optics that can spawn in a crate
											"HLC_Optic_PSO1",
											"HLC_Optic_1p29",
											"hlc_optic_kobra",
											"hlc_optic_suit",
											"hlc_optic_Kern",
											"hlc_optic_Kern2d",
											"hlc_optic_artel_m14",
											"hlc_optic_PVS4M14",
											"hlc_optic_LRT_m14",
											"HLC_Optic_ZFSG1",
											"hlc_optic_accupoint_g3",
											"hlc_optic_PVS4G3",
											"rhsusf_acc_eotech_552",
											"rhsusf_acc_LEUPOLDMK4",
											"rhsusf_acc_ELCAN",
											"rhsusf_acc_ELCAN_pip",
											"rhsusf_acc_ACOG",
											"rhsusf_acc_ACOG_pip",
											"rhs_acc_1pn93_2",
											"rhsusf_acc_ACOG2",
											"rhsusf_acc_ACOG_USMC",
											"rhsusf_acc_ACOG2_USMC",
											"rhsusf_acc_ACOG3_USMC",
											"rhsusf_acc_LEUPOLDMK4_2",
											"rhs_acc_1p29",
											"rhs_acc_1p78",
											"rhs_acc_pkas",
											"rhs_acc_1p63",
											"rhs_acc_ekp1",
											"rhs_acc_pso1m2",
											"rhs_acc_nita",
											"rhs_acc_1pn93_1",
											"rhsusf_acc_ACOG_MDO",
											"rhsusf_acc_ACOG_RMR",
											"rhsusf_acc_ACOG_d",
											"rhsusf_acc_ACOG_wd",
											"rhsusf_acc_premier_anpvs27",
											"rhsusf_acc_premier_low",
											"rhsusf_acc_premier",
											"rhsusf_acc_SpecterDR",
											"rhsusf_acc_SpecterDR_OD",
											"rhsusf_acc_SpecterDR_D",
											"rhsusf_acc_SpecterDR_A_3d",
											"rhsusf_acc_M8541",
											"rhsusf_acc_M8541_low",
											"rhsusf_acc_M8541_low_d",
											"rhsusf_acc_M8541_low_wd",
											"rhs_acc_dh520x56",
											"SMA_ELCAN_SPECTER",
											"SMA_ELCAN_SPECTER_GREEN",
											"SMA_ELCAN_SPECTER_ARDRDS",
											"SMA_ELCAN_SPECTER_GREEN_ARDRDS",
											"SMA_ELCAN_SPECTER_RDS",
											"SMA_ELCAN_SPECTER_GREEN_RDS",
											"SMA_MICRO_T2",
											"SMA_MICRO_T2_LM",
											"SMA_MICRO_T2_3XDOWN",
											"SMA_eotech",
											"SMA_eotech_T",
											"SMA_eotech552_3XDOWN_wdl",
											"sma_spitfire_01_sc_black",
											"sma_spitfire_01_black",
											"sma_spitfire_03_sc_black",
											"sma_spitfire_03_black",
											"sma_spitfire_03_rds_black",
											"sma_spitfire_03_rds_low_black",
											"sma_spitfire_03_rds_low_ard_black",
											"SMA_AIMPOINT",
											"SMA_AIMPOINT_GLARE",
											"SMA_BARSKA",
											"SMA_CMORE",
											"SMA_CMOREGRN",
											"SMA_ELCAN_SPECTER_4z",
											"SMA_ELCAN_SPECTER_GREEN_4z",
											"SMA_ELCAN_SPECTER_ARDRDS_4z",
											"SMA_ELCAN_SPECTER_GREEN_ARDRDS_4z",
											"SMA_ELCAN_SPECTER_RDS_4z",
											"SMA_ELCAN_SPECTER_GREEN_RDS_4z",
											"optic_Aco",
											"optic_ACO_grn",
											"optic_ACO_grn_smg",
											"optic_Aco_smg",
											"optic_AMS",
											"optic_AMS_khk",
											"optic_AMS_snd",
											"optic_Arco",
											"optic_DMS",
											"optic_Hamr",
											"optic_Holosight",
											"optic_Holosight_smg",
											"optic_KHS_blk",
											"optic_KHS_hex",
											"optic_KHS_old",
											"optic_LRPS",
											"optic_MRCO",
											"optic_Nightstalker",
											"optic_SOS"
										];
	DMS_BoxBackpacks =					[							//List of backpacks that can spawn in a crate
											"rhssaf_kitbag_md2camo",
											"rhssaf_kitbag_digital",
											"rhssaf_kitbag_smb",
											"rhsusf_assault_eagleaiii_coy",
											"rhsusf_assault_eagleaiii_ocp",
											"rhsusf_assault_eagleaiii_ucp",
											"rhsusf_falconii_coy",
											"rhsusf_falconii_mc",
											"rhsusf_falconii",
											"TRYK_B_AssaultPack_UCP",
											"TRYK_B_AssaultPack_Type2camo",
											"TRYK_B_AssaultPack_MARPAT_Wood",
											"TRYK_B_Kitbag_Base",
											"TRYK_B_Kitbag_blk",
											"TRYK_B_Kitbag_aaf",
											"TRYK_B_Carryall_blk",
											"TRYK_B_Coyotebackpack",
											"TRYK_B_Coyotebackpack_OD",
											"TRYK_B_Coyotebackpack_BLK",
											"TRYK_B_Alicepack",
											"TRYK_B_Medbag",
											"TRYK_B_Medbag_OD",
											"TRYK_B_Medbag_BK",
											"TRYK_B_Medbag_ucp",
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
											"B_Carryall_cbr",
											"B_Carryall_khk",
											"B_Carryall_ocamo",
											"B_Carryall_oli",
											"B_FieldPack_blk",
											"B_FieldPack_cbr",
											"B_FieldPack_ocamo",
											"B_HuntingBackpack",
											"B_Kitbag_cbr",
											"B_Kitbag_sgg"
										];
	DMS_BoxItems						= DMS_BoxSurvivalSupplies+DMS_BoxBuildingSupplies+DMS_BoxOptics;	// Random "items" can spawn optics, survival supplies, or building supplies
	DMS_Box_BreachingCharges =			[							// List of breaching charges (weighted). Not used (yet).
											"BreachingChargeBigMomma",
											"BreachingChargeMetal",
											"BreachingChargeMetal",
											"BreachingChargeWood",
											"BreachingChargeWood",
											"BreachingChargeWood"
										];
	DMS_RareLoot						= true;						// Potential chance to spawn rare loot in any crate.
	DMS_RareLootAmount					= 1;						// How many rare loot items to add.
	DMS_RareLootList =					[							// List of rare loot to spawn
											"Exile_Item_SafeKit",
											"Exile_Item_Laptop",
											"rhs_weap_M107_w",
											"hlc_rifle_awMagnum_OD_ghillie",
											"hlc_rifle_awcovert_BL",
											"Exile_Item_CodeLock",
											"Exitem_money",
											"Exitem_documents",
											"Exitem_briefcase",
											"Exitem_apsi",
											"Exitem_multimeter",
											"rhs_flightrecorder",
											"MineDetector",
											"Exile_Headgear_GasMask"
										];
	DMS_RareLootChance					= 75;						// Percentage Chance to spawn rare loot in any crate | Default: 10%
	// Vehicles
	DMS_ArmedVehicles =					[							// List of armed vehicles that can spawn
											"rhs_tigr_sts_3camo_msv",
											"rhsgref_ins_g_uaz_dshkm_chdkz",
											"rhsusf_m1025_w_m2",
											"Exile_Car_BRDM2_HQ",
											"Exile_Car_BTR40_MG_Green",
											"Exile_Car_BTR40_MG_Camo",
											"rhsusf_m1025_w_m2"
										];
	DMS_MilitaryVehicles =				[							// List of (unarmed) military vehicles that can spawn
											"Exile_Car_Strider",
											"rhs_tigr_msv",
											"rhs_tigr_3camo_msv",
											"rhs_tigr_m_msv",
											"rhs_tigr_m_3camo_msv",
											"rhsusf_m1025_w",
											"rhssaf_m1025_olive",
											"Exile_Car_BTR40_Camo",
											"Exile_Car_Hunter"
										];
	DMS_TransportTrucks =				[							// List of transport trucks that can spawn
											"RHS_Ural_MSV_01",
											"rhs_kamaz5350",
											"rhs_kamaz5350_open",
											"RHS_Ural_Open_MSV_01",
											"RHS_Ural_Civ_01",
											"RHS_Ural_Civ_02",
											"RHS_Ural_Open_Civ_01",
											"RHS_Ural_Open_Civ_02",
											"rhs_gaz66_flat_msv",
											"rhs_gaz66o_msv",
											"rhsusf_M977A4_usarmy_wd"
										];
	DMS_RefuelTrucks =					[							// List of refuel trucks that can spawn
											"RHS_Ural_Fuel_MSV_01",
											"Exile_Car_V3S_Covered",
											"rhsusf_M1078A1P2_B_wd_fmtv_usarmy",
											"Exile_Car_Van_Fuel_Guerilla03"
										];
	DMS_CivilianVehicles =				[							// List of civilian vehicles that can spawn
											"rhs_uaz_open_MSV_01",
											"rhsusf_m998_w_4dr",
											"Exile_Car_Golf_Black",
											"Exile_Car_Volha_Black",
											"Octavia_Civ_01"
										];
	DMS_TransportHelis =				[							// List of transport helis that can spawn
											"Exile_Chopper_Huron_Black",
											"Exile_Chopper_Huron_Green",
											"rhssaf_airforce_ht48",
											"Exile_Chopper_Huey_Green",
											"Exile_Chopper_Huey_Desert",
											"B_Heli_Light_01_F"
										];
	DMS_ReinforcementHelis =			[							// List of helis that can spawn for AI paratrooper reinforcements.
											"B_Heli_Light_01_F"
										] + DMS_TransportHelis;
	DMS_CarThievesVehicles =			[							// List of vehicles that can spawn in the "car thieves" mission. By default, it's just "DMS_MilitaryVehicles" and "DMS_TransportTrucks".
											//"rhsgref_ins_uaz_dshkm"
										] + DMS_MilitaryVehicles + DMS_TransportTrucks;
/* Loot Settings */
DMS_ConfigLoaded = true;