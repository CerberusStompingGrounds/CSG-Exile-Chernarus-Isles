private["_vehicle","_attachedObjects","_position","_uid","_slingLoad","_attachedSlingVeh","_attachedCrate"];
if (ExilePlayerInSafezone) exitWith { false };
if !(alive player) exitWith { false };
ExilePlayerInSafezone = true;
player allowDamage false;
player removeAllEventHandlers "HandleDamage";
_vehicle = vehicle player;
if !(_vehicle isEqualTo player) then {
	if (local _vehicle) then {
		_vehicle allowDamage false;
	};
	_attachedObjects = attachedObjects _vehicle;
	if !(_attachedObjects isEqualTo []) then {
		_position = getPosATL _vehicle;
		{
			if ((typeOf _x) in ["DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"]) then {
				detach _x;
				_x setPosATL [(_position select 0) + random 2, (_position select 1) + random 2, 0.05];
				_x setDir (random 360);
			};
		} forEach _attachedObjects;
	};
	ExileClientSafeZoneVehicle = _vehicle;
	ExileClientSafeZoneVehicleFiredEventHandler = _vehicle addEventHandler ["Fired", {_this call ExileClient_object_player_event_onFiredSafeZoneVehicle}];
	
	// AntiTheft
	if (player isEqualTo (driver ExileClientSafeZoneVehicle)) then {
		_uid = getPlayerUID player;
		ExileClientSafeZoneVehicle setVariable["UK111_vehicle_owner",_uid,true];
		_slingLoad = getSlingLoad ExileClientSafeZoneVehicle;
		if !(isNull _slingLoad) then {
			_slingLoad setVariable["UK111_vehicle_owner",_uid,true];
			_attachedSlingVeh = attachedObjects _slingLoad;
			if !(_attachedSlingVeh isEqualTo []) then { {_x setVariable["UK111_vehicle_owner",_uid,true];} forEach _attachedSlingVeh; };
		};
		_attachedCrate = attachedObjects ExileClientSafeZoneVehicle;
		if !(_attachedCrate isEqualTo []) then { {_x setVariable["UK111_vehicle_owner",_uid,true];} forEach _attachedCrate; };	
	};
};
ExileClientSafeZoneESPEventHandler = addMissionEventHandler ["Draw3D", {20 call ExileClient_gui_safezone_safeESP}];
["You have entered a safe zone!"] spawn ExileClient_gui_baguette_show;
ExileClientSafeZoneUpdateThreadHandle = [1, ExileClient_object_player_thread_safeZone, [], true] call ExileClient_system_thread_addtask;
true