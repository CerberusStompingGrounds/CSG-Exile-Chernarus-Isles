/**
*	DMS static Mission for CSG by Sir Joker
*	Mission:	construction
**/
DMS_AI_KillPercent					= 100; //does only works with 100%
// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_difficulty = "hardcore";

/** Positions for groups, crates, vehicles ...**/
_pos01 = [13145,9994,15.1];				//group1
_pos02 = [1394.2,9931,15.1];			//group2
_pos03 = [13178,9899,30.1];				//MG1
_pos04 = [13154,9962,15.1];				//MG1 group
_pos05 = [13187,9942.23,31.6];			//crate1
_pos06 = [13088,10052,0];				//priceVehicle
_pos07 = [13079,10029,0];				//veh group
_pos08 = [13078,10028,0];				//veh1 start
_pos09 = [13075.23,10022,0];			//veh1 stop
_pos10 = [13134,10035,32.7];			//MG2
_pos11 = [13178,9956,62.7];				//MG3


/////////////////////////////////////////////////////////////////////////////////////////
//Loot Config
/** Spawn lootcrates **/
private _crate1 = ["Exile_Container_SupplyBox",_pos05] call DMS_fnc_SpawnCrate;

/** Spawn PriceVehicle **/
_vehicle1 = ["RHS_Ural_MSV_01",[(_pos06 select 0) -1, (_pos06 select 1) -1],true] call DMS_fnc_SpawnNonPersistentVehicle;

/** create loot amount **/
_crate_weapons 		= (2 + (round (random 5)));
_crate_items 		= (10 + (round (random 10)));
_crate_backpacks 	= (1 + (round (random 1)));

/** create loot content **/
_crate_loot_values =
[
	_crate_weapons,[_crate_items,DMS_BoxBaseParts],_crate_backpacks
];	
// Loot Config END
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Spawn AI
/** set groupsize **/
_AICountGrp = (5 + (round (random 10)));
_AICountMG = 6;
_AICountVEH = (2 + (round (random 4)));

/** place groups **/
_group1 = [_pos01,_AICountGrp,"hardcore","random",_side] call DMS_fnc_SpawnAIGroup; //Group1 center
_group2 = [_pos02,_AICountGrp,"hardcore","random",_side] call DMS_fnc_SpawnAIGroup; //Group2 
_group3 = [_pos04,_AICountMG,"hardcore","random",_side] call DMS_fnc_SpawnAIGroup; //MG Group
_group4 = [_pos07,_AICountVEH,"hardcore","random",_side] call DMS_fnc_SpawnAIGroup; //Veh group

/** place static guns **/
_staticGun1 = [[_pos03],_group3,"assault","hardcore",_side,"random"] call DMS_fnc_SpawnAIStaticMG;
_staticGun2= [[_pos10],_group3,"assault","hardcore",_side,"random"] call DMS_fnc_SpawnAIStaticMG;
_staticGun2= [[_pos11],_group3,"assault","hardcore",_side,"random"] call DMS_fnc_SpawnAIStaticMG;


/** place vehicle pat **/
_veh1 =
[
	[_pos08,_pos09],
	_group4,
	"assault",
	_difficulty,
	_side
] call DMS_fnc_SpawnAIVehicle;

// Spawn AI END
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Mission Monitoring
//** Defie MissionAIUnits
_missionAIUnits = [_group1,_group2,_group3];

//** Definiere Missions Objekte
_missionObjs = [
		[],			// armed AI vehicle, base objects, and static guns
		[_vehicle1],
		[[_crate1,_crate_loot_values],[_vehicle1,_crate_loot_values]]
	];
// Define Mission Start message
_msgStart = ['#DE5021', "Bandits have found a crate of weapons on the LHD and are attempting to secure it"];
// Define Mission Win message
_msgWIN = ['#DE5021', "Survivors have claimed the weapons from the Bandits"];
// Define Mission Lose message
_msgLOSE = ['#DE5021',"The Bandits have successfully recovered the weapons for themselves"];
// Define mission name (for map marker and logging)
_missionName = "LHD Battle";
// Create Markers
_markers =
[
	_pos01,
	_missionName,
	"hardcore"
] call DMS_fnc_CreateMarker;

// Record time here (for logging purposes, otherwise you could just put "diag_tickTime" into the "DMS_AddMissionToMonitor" parameters directly)
_time = diag_tickTime;

// Parse and add mission info to missions monitor
_added =
[
	_pos01,
	[
	["kill",_group1],
	["kill",_group2],
	["kill",_group3],	
	["playerNear",[_crate1,100]]
	],
	[],
	[
		_time,
		DMS_StaticMissionTimeOut call DMS_fnc_SelectRandomVal
	],
	_missionAIUnits,
	_missionObjs,
	[_missionName,_msgWIN,_msgLOSE],
	_markers,
	_side,
	"hardcore",
	[],
    [
        [
            [
                _vehicle1,
                {_this setVariable ["ExileMoney",100,true]}                       
            ]
        ],
        [],
        {},
        {}
    ]
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
	(format ["MISSION: (%1) :: Mission #%2 started at %3 with %4 AI units and %5 difficulty at time %6",_missionName,_num,_pos01,26,"hardcore",_time]) call DMS_fnc_DebugLog;
};