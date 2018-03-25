if !(ExilePlayerInSafezone) exitWith { false };
ExilePlayerInSafezone = false;
if !(isNil "ExileClientSafeZoneUpdateThreadHandle") then {
	[ExileClientSafeZoneUpdateThreadHandle] call ExileClient_system_thread_removeTask;
	ExileClientSafeZoneUpdateThreadHandle = nil;
};
player allowDamage true;
player addEventHandler ["HandleDamage", {_this call ExileClient_object_player_event_onHandleDamage}];
if !(isNull ExileClientSafeZoneVehicle) then {
	if (local ExileClientSafeZoneVehicle) then {
		ExileClientSafeZoneVehicle allowDamage true;
		
		// AntiTheft
		ExileClientSafeZoneVehicle setVariable["UK111_vehicle_owner",0,true];
	};
	ExileClientSafeZoneVehicle removeEventHandler ["Fired", ExileClientSafeZoneVehicleFiredEventHandler];	
	ExileClientSafeZoneVehicle = objNull;
	ExileClientSafeZoneVehicleFiredEventHandler = nil;
};
_vehicle = vehicle player; 
if !(_vehicle isEqualTo player) then {
	if (local _vehicle) then {
		_vehicle allowDamage true;
	};
};
if !(isNil "ExileClientSafeZoneESPEventHandler") then {
	removeMissionEventHandler ["Draw3D", ExileClientSafeZoneESPEventHandler];
	ExileClientSafeZoneESPEventHandler = nil;
};
if (alive player) then {
	["You have left the safe zone!"] spawn ExileClient_gui_baguette_show;
};
true