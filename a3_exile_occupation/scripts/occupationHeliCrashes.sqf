if (!isServer) exitWith {};

_displayMarkers 	= SC_debug; // only use for debug, no need for actual gameplay

private['_position'];

_logDetail = format ["[OCCUPATION:HeliCrashes]:: Initialised at %1",time];
[_logDetail] call SC_fnc_log;

_logDetail = format['[OCCUPATION:HeliCrashes]::  worldname: %1 crashes to spawn: %2',worldName,SC_numberofHeliCrashes];
[_logDetail] call SC_fnc_log;

for "_i" from 1 to SC_numberofHeliCrashes do
{
	_validspot 	= false;
	while{!_validspot} do 
	{
		sleep 0.2;
		if(SC_occupyHeliCrashesStatic) then
		{
			_tempPosition = SC_occupyHeliCrashesLocations call BIS_fnc_selectRandom;
			SC_occupyHeliCrashesLocations = SC_occupyHeliCrashesLocations - _tempPosition;
			
			_position = [_tempPosition select 0, _tempPosition select 1, _tempPosition select 2];
			if(isNil "_position") then
			{
				_position = [ false, false ] call SC_fnc_findsafePos;
			};
		}
		else
		{
			_position = [ false, false ] call SC_fnc_findsafePos;
		};
		
		_validspot	= true;
	
		//Check if near another heli crash site
		_nearOtherCrash = (nearestObjects [_position,["BlackhawkWreck"],750]) select 0;	
		if (!isNil "_nearOtherCrash") then { _validspot = false; };

		//Check if near another loot crate site
		_nearOtherCrate = (nearestObjects [_position,["Box_NATO_Wps_F"],500]) select 0;	
		if (!isNil "_nearOtherCrate") then { _validspot = false; };
				
	};	
	
	_logDetail = format['[OCCUPATION:HeliCrashes] Crash %1 : Location %2',_i,_position];
    [_logDetail] call SC_fnc_log;
    
	_helicopter = "BlackhawkWreck";
	_vehHeli = _helicopter createVehicle [0,0,0];
	
	_effect = "test_EmptyObjectForSmoke";  
	
	if(SC_HeliCrashesOnFire) then 
	{
		_effect = "test_EmptyObjectForFireBig";	
	};

	_heliFire = _effect createVehicle (position _vehHeli);   
	_heliFire attachto [_vehHeli, [0,0,0]];
	_vehHeli setPos _position;
	
	if (SC_SpawnHeliCrashGuards) then
	{
			//Infantry spawn using DMS
			_AICount = SC_HeliCrashGuards;
			
			if(SC_HeliCrashGuardsRandomize) then 
			{
				_AICount = 1 + (round (random (SC_HeliCrashGuards-1)));    
			};

			if(_AICount > 0) then
			{
				_spawnPosition = [_position select 0, _position select 1, 0];
				
				_initialGroup = createGroup SC_BanditSide;
				_initialGroup setCombatMode "BLUE";
				_initialGroup setBehaviour "SAFE";
				
				for "_i" from 1 to _AICount do
				{		
					_loadOut = ["bandit"] call SC_fnc_selectGear;
					_unit = [_initialGroup,_spawnPosition,"custom","random","bandit","soldier",_loadOut] call DMS_fnc_SpawnAISoldier; 
					_unitName = ["bandit"] call SC_fnc_selectName;
					if(!isNil "_unitName") then { _unit setName _unitName; }; 
					reload _unit;
				};
				
				// Get the AI to shut the fuck up :)
				enableSentences false;
				enableRadio false;

				  
				_group = createGroup SC_BanditSide;           
				_group setVariable ["DMS_LockLocality",nil];
				_group setVariable ["DMS_SpawnedGroup",true];
				_group setVariable ["DMS_Group_Side", SC_BanditSide];

				{	
					_unit = _x;           
					[_unit] joinSilent grpNull;
					[_unit] joinSilent _group;
					_unit setCaptive false;                               
				}foreach units _initialGroup;  		
				deleteGroup _initialGroup;
				
				[_group, _spawnPosition, 100] call bis_fnc_taskPatrol;
				_group setBehaviour "STEALTH";
				_group setCombatMode "RED";

				_logDetail = format ["[OCCUPATION:HeliCrash]::  Creating HeliCrash %3 at %1 with %2 guards",_position,_AICount,_i];
				[_logDetail] call SC_fnc_log;		
			};
	}
	else
	{
		_logDetail = format ["[OCCUPATION:HeliCrash]::  Creating HeliCrash %2 at %1 with no guards",_position,_i];
		[_logDetail] call SC_fnc_log;	
	};
		
	_positionOfBox = [_position,3,10,1,0,10,0] call BIS_fnc_findSafePos;
	_box = "Box_NATO_Wps_F" createvehicle _positionOfBox;
	
	clearMagazineCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearItemCargoGlobal _box;
	_box enableRopeAttach SC_ropeAttach;
	_box setVariable ["permaLoot",true];
	_box allowDamage false;

	{
		_item = _x select 0;
		_amount = _x select 1;
		_randomAmount = _x select 2;
		_amount = _amount + (random _randomAmount);
		_itemType = _x call BIS_fnc_itemType;
		
		
		if((_itemType select 0) == "Weapon") then
		{
			_box addWeaponCargoGlobal [_item, _amount];	
		};
		if((_itemType select 0) == "Magazine") then
		{
			_box addMagazineCargoGlobal [_item, _amount];	
		};
		if((_itemType select 0) == "Item") then
		{
			_box addItemCargoGlobal [_item, _amount];	
		};
		if((_itemType select 0) == "Equipment") then
		{
			_box addItemCargoGlobal [_item, _amount];	
		};	
		if((_itemType select 0) == "Backpack") then
		{
			_box addBackpackCargoGlobal [_item, _amount];	
		};					
	}forEach SC_HeliCrashItems;	

	{
		_spawnChance = round (random 100);		
		if(_spawnChance <= SC_HeliCrashRareItemChance) then
		{
			_item = _x select 0;
			_amount = _x select 1;
			_randomAmount = _x select 2;
			_amount = _amount + (random _randomAmount);
			_itemType = _x call BIS_fnc_itemType;
			
			
			if((_itemType select 0) == "Weapon") then
			{
				_box addWeaponCargoGlobal [_item, _amount];	
			};
			if((_itemType select 0) == "Magazine") then
			{
				_box addMagazineCargoGlobal [_item, _amount];	
			};
			if((_itemType select 0) == "Item") then
			{
				_box addItemCargoGlobal [_item, _amount];	
			};
			if((_itemType select 0) == "Equipment") then
			{
				_box addItemCargoGlobal [_item, _amount];	
			};	
			if((_itemType select 0) == "Backpack") then
			{
				_box addBackpackCargoGlobal [_item, _amount];	
			};			
		};						
	}forEach SC_HeliCrashRareItems;	
	
	// Add weapons with ammo to the Box
	_possibleWeapons = SC_HeliCrashWeapons;
	_amountOfWeapons = (SC_HeliCrashWeaponsAmount select 0) + round random (SC_HeliCrashWeaponsAmount select 1);

    for "_i" from 1 to _amountOfWeapons do
    {
        _weaponToAdd = _possibleWeapons call BIS_fnc_selectRandom;
        _box addWeaponCargoGlobal [_weaponToAdd,1];
       
        _magazinesToAdd = getArray (configFile >> "CfgWeapons" >> _weaponToAdd >> "magazines");
		_magazineAmount = (SC_HeliCrashMagazinesAmount select 0) + round random (SC_HeliCrashMagazinesAmount select 1);					
        _box addMagazineCargoGlobal [(_magazinesToAdd select 0),round random 5];
    };
	
	if(_displayMarkers) then
	{
		_event_marker = createMarker [ format ["helicrash_marker_%1", _i], _position];
		_event_marker setMarkerColor "ColorRed";
		_event_marker setMarkerAlpha 1;
		_event_marker setMarkerText "Heli Crash";
		_event_marker setMarkerType "loc_Tree";
		_event_marker setMarkerBrush "Vertical";
		_event_marker setMarkerSize [(3), (3)];	
	};
};