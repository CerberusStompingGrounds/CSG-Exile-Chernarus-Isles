/*
	"Occupation"
	Created by second_coming
	Multi-map positions help from Diamond
*/
private["_wp","_wp2","_wp3","_pos","_missionName","_msgStart","_msgWIN","_msgLOSE"];
// For logging purposes
private _num = DMS_MissionCount;
// Set mission side (only "bandit" is supported for now)
_side = "bandit";
_chance = floor(random 4);
switch (_chance) do
{
	case 0:
	{
		_pos = [3810,8887,0];
		_missionName = "Vybor Occupation";
		_msgStart = ['#DE5021',"Bandits have gathered a large force and have taken over Vybor."];
		_msgWIN = ['#DE5021',"Survivors have successfully assaulted the town of Vybor and secured the cache!"];
		_msgLOSE = ['#DE5021',"The Bandits have left Vybor, taking the cache with them."];
	};
	case 1:
	{
		_pos = [4088,10990,0];
		_missionName = "Airbase Occupation";
		_msgStart = ['#DE5021',"Bandits have gathered a large force and have taken over Airbase."];
		_msgWIN = ['#DE5021',"Survivors have successfully assaulted the town of Airbase and secured the cache!"];
		_msgLOSE = ['#DE5021',"The Bandits have left Airbase, taking the cache with them."];
	};
	case 2:
	{
		_pos = [7544,5138,0];
		_missionName = "Mogilevka Occupation";
		_msgStart = ['#DE5021',"Bandits have gathered a large force and have taken over Mogilevka."];
		_msgWIN = ['#DE5021',"Survivors have successfully assaulted the town of Mogilevka and secured the cache!"];
		_msgLOSE = ['#DE5021',"The Bandits have left Mogilevka, taking the cache with them."];
	};
	case 3:
	{
		_pos = [5987,10343,0];
		_missionName = "Grishino Occupation";
		_msgStart = ['#DE5021',"Bandits have gathered a large force and have taken over Grishino."];
		_msgWIN = ['#DE5021',"Survivors have successfully assaulted the town of Grishino and secured the cache!"];
		_msgLOSE = ['#DE5021',"The Bandits have left Grishino, taking the cache with them."];
	};
	case 4:
	{
		_pos = [9619,8805,0];
		_missionName = "Gorka Occupation";
		_msgStart = ['#DE5021',"Gorka  has been occupied by bandits! There are reports they have a large weapon cache."];
		_msgWIN = ['#DE5021',"Survivors have successfully assaulted the town of Stary Sobar and secured the cache!"];
		_msgLOSE = ['#DE5021',"The Bandits have left Gorka, taking the cache with them."];
	};
};
if (isNil "_pos") exitWith {};
if ([_pos,DMS_StaticMinPlayerDistance] call DMS_fnc_IsPlayerNearby) exitWith {"delay"};
diag_log text "[DMS]: Town Occupation Mission Started";
// Set general mission difficulty
_difficulty = "hardcore";
// Create AI
_AICount 		= 12;
_group1Count 	= ceil(_AICount/3);
_group2Count 	= ceil(_AICount/3);
_group3Count 	= ceil(_AICount/3);
// Get AI to defend the position
_group = [_pos, _group1Count, _difficulty, "random", _side] call DMS_fnc_SpawnAIGroup;
[ _group,_pos,_difficulty,"COMBAT" ] call DMS_fnc_SetGroupBehavior;
_buildings = _pos nearObjects ["building", 200];
{
	_buildingPositions = [_x, 10] call BIS_fnc_buildingPositions;
	if(count _buildingPositions > 0) then
	{
		_y = _x;
		// Find Highest Point
		_highest = [0,0,0];
		{
			if(_x select 2 > _highest select 2) then
			{
				_highest = _x;
			};

		} foreach _buildingPositions;
		_spawnPosition = _highest;

		_i = _buildingPositions find _spawnPosition;
		_wp = _group addWaypoint [_spawnPosition,0] ;
		_wp setWaypointFormation "Column";
		_wp setWaypointBehaviour "CARELESS";
		_wp setWaypointCombatMode "RED";
		_wp setWaypointCompletionRadius 1;
		_wp waypointAttachObject _y;
		_wp setwaypointHousePosition _i;
		_wp setWaypointType "MOVE";
	};
} foreach _buildings;
if(count _buildings > 0 ) then
{
	_wp setWaypointType "CYCLE";
};
_group2 = [	_pos, _group2Count, _difficulty, "random", _side] call DMS_fnc_SpawnAIGroup;
[ _group2,_pos,_difficulty,"COMBAT" ] call DMS_fnc_SetGroupBehavior;
_buildings = _pos nearObjects ["building", 100];
{
	_buildingPositions = [_x, 10] call BIS_fnc_buildingPositions;
	if(count _buildingPositions > 0) then
	{
		_y = _x;
		// Find Highest Point
		_highest = [0,0,0];
		{
			if(_x select 2 > _highest select 2) then
			{
				_highest = _x;
			};
		} foreach _buildingPositions;
		_spawnPosition = _highest;

		_i = _buildingPositions find _spawnPosition;
		_wp2 = _group2 addWaypoint [_spawnPosition,0] ;
		_wp2 setWaypointFormation "Column";
		_wp2 setWaypointBehaviour "CARELESS";
		_wp2 setWaypointCombatMode "RED";
		_wp2 setWaypointCompletionRadius 1;
		_wp2 waypointAttachObject _y;
		_wp2 setwaypointHousePosition _i;
		_wp2 setWaypointType "MOVE";
	};
} foreach _buildings;
if(count _buildings > 0 ) then
{
	_wp2 setWaypointType "CYCLE";
};
_group3 = [_pos, _group3Count, _difficulty, "random", _side] call DMS_fnc_SpawnAIGroup;
[ _group3,_pos,_difficulty,"COMBAT" ] call DMS_fnc_SetGroupBehavior;
_buildings = _pos nearObjects ["building", 100];
{
	_buildingPositions = [_x, 10] call BIS_fnc_buildingPositions;
	if(count _buildingPositions > 0) then
	{
		_y = _x;
		// Find Highest Point
		_highest = [0,0,0];
		{
			if(_x select 2 > _highest select 2) then
			{
				_highest = _x;
			};
		} foreach _buildingPositions;
		_spawnPosition = _highest;

		_i = _buildingPositions find _spawnPosition;
		_wp3 = _group2 addWaypoint [_spawnPosition,0] ;
		_wp3 setWaypointFormation "Column";
		_wp3 setWaypointBehaviour "CARELESS";
		_wp3 setWaypointCombatMode "RED";
		_wp3 setWaypointCompletionRadius 1;
		_wp3 waypointAttachObject _y;
		_wp3 setwaypointHousePosition _i;
		_wp3 setWaypointType "MOVE";
	};
} foreach _buildings;
if(count _buildings > 0 ) then
{
	_wp3 setWaypointType "CYCLE";
};
enableSentences false;
enableRadio false;
_crate = ["Exile_Container_SupplyBox",_pos] call DMS_fnc_SpawnCrate;
_missionAIUnits =
[
	[_group,_group2,_group3]
];
// Define the group reinforcements
_groupReinforcementsInfo = [];
// Define mission-spawned objects and loot values
_missionObjs =
[
	[_missionAIUnits],			// armed AI vehicle and static gun(s). Note, we don't add the base itself because we don't want to delete it and respawn it if the mission respawns.
	[],
	[[_crate,[5 + (random 5),5 + (random 20),5 + (random 3)]]]			// weapons,items,backpacks
];
// Create Markers
_markers =
[
	_pos,
	_missionName,
	_difficulty
] call DMS_fnc_CreateMarker;
(_markers select 1) setMarkerSize [500,500];
// Record time here (for logging purposes, otherwise you could just put "diag_tickTime" into the "DMS_AddMissionToMonitor" parameters directly)
_time = diag_tickTime;
// Parse and add mission info to missions monitor
_added =
[
	_pos,
	[
		[
			"kill",
			[_group,_group2,_group3]
		],
		[
			"playerNear",
			[_pos,100]
		]
	],
	_groupReinforcementsInfo,
	[
		_time,
		DMS_StaticMissionTimeOut call DMS_fnc_SelectRandomVal
	],
	_missionAIUnits,
	_missionObjs,
	[_missionName,_msgWIN,_msgLOSE],
	_markers,
	_side,
	_difficulty,
	[[],[]]
] call DMS_fnc_AddMissionToMonitor_Static;
// Check to see if it was added correctly, otherwise delete the stuff
if !(_added) exitWith
{
	diag_log format ["DMS ERROR :: Attempt to set up mission %1 with invalid parameters for DMS_fnc_AddMissionToMonitor_Static! Deleting mission objects and resetting DMS_MissionCount.",_missionName];
	_cleanup = [];
	{
		_cleanup pushBack _x;
	} forEach _missionAIUnits;

	_cleanup pushBack ((_missionObjs select 0)+(_missionObjs select 1));

	{
		_cleanup pushBack (_x select 0);
	} foreach (_missionObjs select 2);

	_cleanup call DMS_fnc_CleanUp;
	// Delete the markers directly
	{deleteMarker _x;} forEach _markers;
	// Reset the mission count
	DMS_MissionCount = DMS_MissionCount - 1;
};
// Notify players
[_missionName,_msgStart] call DMS_fnc_BroadcastMissionStatus;
if (DMS_DEBUG) then
{
	(format ["MISSION: (%1) :: Mission #%2 started at %3 with %4 AI units and %5 difficulty at time %6",_missionName,_num,_pos,_AICount,_difficulty,_time]) call DMS_fnc_DebugLog;
};