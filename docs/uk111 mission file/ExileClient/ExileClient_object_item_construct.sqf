private ["_found", "_point", "_cantBuildNear", "_locations"];
if (isOnRoad getPosATL player) exitWith {
	(findDisplay 602) closeDisplay 2;
	["ErrorTitleOnly",["You cannot build on roads!"]] call ExileClient_gui_toaster_addTemplateToast;
};

if ((_this select 0) isEqualTo "Exile_Item_Flag") then {
	_found = false;
	_point = "";
	_cantBuildNear = ["Land_Dome_Big_F","Land_Dome_Small_F","Land_Barracks_ruins_F","Land_i_Barracks_V1_F","Land_i_Barracks_V1_dam_F","Land_i_Barracks_V2_F","Land_i_Barracks_V2_dam_F","Land_u_Barracks_V2_F","Land_Hospital_main_F","Land_Hospital_side1_F","Land_Hospital_side2_F","Land_MilOffices_V1_F","Land_TentHangar_V1_F","Land_Hangar_F","Land_Airport_Tower_F","Land_Cargo_House_V1_F","Land_Cargo_House_V3_F","Land_Cargo_HQ_V1_F","Land_Cargo_HQ_V2_F","Land_Cargo_HQ_V3_F","Land_Cargo_Patrol_V1_F","Land_Cargo_Patrol_V2_F","Land_Cargo_Tower_V1_F","Land_Cargo_Tower_V1_No1_F","Land_Cargo_Tower_V1_No2_F","Land_Cargo_Tower_V1_No3_F","Land_Cargo_Tower_V1_No4_F","Land_Cargo_Tower_V1_No5_F","Land_Cargo_Tower_V1_No6_F","Land_Cargo_Tower_V1_No7_F","Land_Cargo_Tower_V2_F","Land_Cargo_Tower_V3_F","Land_Radar_F"];	
	_nearestObjects = nearestObjects[player,_cantBuildNear,150];
	{
		if ((typeOf _x) in _cantBuildNear) exitWith {
			_found = true;
			_point = typeOf _x;
		};
	} forEach _nearestObjects;

	_locations = [
		//Military and industrial
		[[3073.84,13177.1,0],400,"Military or Industrial"],
		[[12813.08,16672.213,0],400,"Military or Industrial"],
		[[20941.604,19236.865,0],400,"Military or Industrial"],
		[[6178.40,16245.77,0],400,"Military or Industrial"],
		[[14347.18,18940.27,0],400,"Military or Industrial"],
		[[18310.604,15548.075,0],400,"Military or Industrial"],
		[[16083.555,16992.264,0],400,"Military or Industrial"],
		[[17432.287,13148.771,0],400,"Military or Industrial"],
		[[23581.842,21099.982,0],400,"Military or Industrial"],
		
		//Fast travels
		[[25679.5,21377,0],700,"Fast Travel"],
		[[21344.7,16375.4,0],700,"Fast Travel"],
		[[20069.2,11675.1,0],700,"Fast Travel"],
		[[20854,6555.64,0],700,"Fast Travel"],
		[[10115.2,8809.75,0],700,"Fast Travel"],
		[[3833.04,11543.8,0],700,"Fast Travel"],
		[[4586.06,21382.8,0],700,"Fast Travel"],
		[[10284.5,19144.9,0],700,"Fast Travel"],
		[[14583,16708.1,0],700,"Fast Travel"],
		
		//Cement mixers
		[[11392.4,14259.8,0],700,"Cement Mixer"],
		[[14353.4,18959.1,0],700,"Cement Mixer"],
		[[18308.7,15573.6,0],700,"Cement Mixer"],
		
		//Centre of radiated area
		[[21845.7,20978,0],1000,"Radiation Zone"]
	];
	{
		if ((player distance (_x select 0)) < (_x select 1)) exitWith {
			_found = true;
			_point = _x select 2;
		};
	} forEach _locations;
	
	if (_found) exitWith {
		(findDisplay 602) closeDisplay 2;
		["ErrorTitleOnly",[format["You cannot build this close to (%1)!",_point]]] call ExileClient_gui_toaster_addTemplateToast;
	};
};

/**
 * ExileClient_object_item_construct
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_itemClassName","_minimumDistanceToTraderZones","_minimumDistanceToSpawnZones","_maximumNumberOfTerritoriesPerPlayer","_numberOfTerritories"];
_itemClassName = _this select 0;
if !(_itemClassName in (magazines player)) exitWith {false};
if( isClass(configFile >> "CfgMagazines" >> _itemClassName >> "Interactions" >> "Constructing") ) then
{
	if (findDisplay 602 != displayNull) then
	{
		(findDisplay 602) closeDisplay 2; 
	};
	try 
	{
		if !((vehicle player) isEqualTo player) then
		{
			throw "You cannot build while in a vehicle.";  
		};
		_minimumDistanceToTraderZones = getNumber (missionConfigFile >> "CfgTerritories" >> "minimumDistanceToTraderZones");
		if ([player, _minimumDistanceToTraderZones] call ExileClient_util_world_isTraderZoneInRange) then
		{
			throw "You are too close to a safe zone.";
		};
		if (player call ExileClient_util_world_isInNonConstructionZone) then 
		{
			throw "Building is disallowed here on this server.";
		};
		if (player call ExileClient_util_world_isInConcreteMixerZone) then 
		{
			throw "You are too close to a concrete mixer zone.";
		};
		_minimumDistanceToSpawnZones = getNumber (missionConfigFile >> "CfgTerritories" >> "minimumDistanceToSpawnZones");
		if ([player, _minimumDistanceToSpawnZones] call ExileClient_util_world_isSpawnZoneInRange) then
		{
			throw "You are too close to a spawn zone.";
		};
		if(_itemClassName isEqualTo "Exile_Item_Flag") then 
		{ 
			_maximumNumberOfTerritoriesPerPlayer = getNumber (missionConfigFile >> "CfgTerritories" >> "maximumNumberOfTerritoriesPerPlayer");
			_numberOfTerritories = player call ExileClient_util_territory_getNumberOfTerritories;
			if (_numberOfTerritories >= _maximumNumberOfTerritoriesPerPlayer) then
			{
				throw "You have reached the maximum number of territories you can own.";
			};
			call ExileClient_gui_setupTerritoryDialog_show;
		}
		else 
		{
			[_itemClassName] call ExileClient_construction_beginNewObject;
		};
	}
	catch 
	{
		["ErrorTitleAndText", ["Construction aborted!", _exception]] call ExileClient_gui_toaster_addTemplateToast;
	};
};
true