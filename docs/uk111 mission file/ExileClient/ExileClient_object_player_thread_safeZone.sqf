private ["_vehicle", "_helipad", "_ownerUID", "_ownerObject", "_group"];
_vehicle = vehicle player;
if (!ExilePlayerInSafezone) exitWith {false}; 
if (_vehicle isEqualTo player) then {
	if !(isNull ExileClientSafeZoneVehicle) then {
		ExileClientSafeZoneVehicle removeEventHandler ["Fired", ExileClientSafeZoneVehicleFiredEventHandler];	
		ExileClientSafeZoneVehicle = objNull;
		ExileClientSafeZoneVehicleFiredEventHandler = nil;
	};
	
	//No UAV's :'(
	if !(isNull (getConnectedUAV player)) then {
		["ErrorTitleAndText",["UAV Disconnected","You are not allowed to use UAV inside the SafeZone!"]] call ExileClient_gui_toaster_addTemplateToast;
		player connectTerminalToUAV objNull;
	};
	
} else {
	if (local _vehicle) then {
		_vehicle allowDamage false;
		
		//Clear garage spawns
		if !(UK111_athelipad) then {
			_helipad = nearestObjects [player,["Land_HelipadCivil_F"],10];
			if !(_helipad isEqualTo []) then {
				UK111_athelipad = true;
				[_vehicle,_helipad] spawn garage_fnc_clear_helipad;
			};
		};
		
		//No bikes :( because fuckNuggets were born to this world against Gods will
		if ((_vehicle isKindOf "Exile_Bike_MountainBike") || (_vehicle isKindOf "Exile_Bike_OldBike")) then {
			player action["eject",_vehicle];
			["ErrorTitleAndText",["SafeZone","Bikes are not allowed inside the SafeZone!"]] call ExileClient_gui_toaster_addTemplateToast;
		};
	};
	if !(_vehicle isEqualTo ExileClientSafeZoneVehicle) then {
		if !(isNull ExileClientSafeZoneVehicle) then {
			ExileClientSafeZoneVehicle removeEventHandler ["Fired", ExileClientSafeZoneVehicleFiredEventHandler];	
			ExileClientSafeZoneVehicle = objNull;
			ExileClientSafeZoneVehicleFiredEventHandler = nil;
		};
		ExileClientSafeZoneVehicle = _vehicle;
		ExileClientSafeZoneVehicleFiredEventHandler = _vehicle addEventHandler ["Fired", {_this call ExileClient_object_player_event_onFiredSafeZoneVehicle}];
		
		// AntiTheft
		_ownerUID = ExileClientSafeZoneVehicle getVariable["UK111_vehicle_owner",0];
		if !(_ownerUID isEqualTo (getPlayerUID player)) then {
			if (_ownerUID isEqualTo 0) then {
				if (player isEqualTo (driver ExileClientSafeZoneVehicle)) then {
					ExileClientSafeZoneVehicle setVariable["UK111_vehicle_owner",getPlayerUID player,true];
				};
			} else {
				_ownerObject = objNull;
				{
					if ((getPlayerUID _x) isEqualTo _ownerUID) exitWith { _ownerObject = _x; };
				} forEach allPlayers;
				if (!isNull _ownerObject) then {
					_group = units group _ownerObject;
					if !(player in _group) then {
						["ErrorTitleAndText",["Access Denied!","This vehicle is not yours or your group members! GTFO!"]] call ExileClient_gui_toaster_addTemplateToast;
						player action["getOut",ExileClientSafeZoneVehicle];
						["UK111ToastRequest",[str(name _ownerObject),str(name player),getPos player]] call ExileClient_system_network_send;
						[] spawn {disableUserInput true; uiSleep 20; disableUserInput false;};
					} else {
						if (player isEqualTo (driver ExileClientSafeZoneVehicle)) then {
							ExileClientSafeZoneVehicle setVariable["UK111_vehicle_owner",getPlayerUID player,true];
						};
					};
				} else {
					["ErrorTitleAndText",["Access Denied!","Owner of this vehicle is not online! Cannot verify group members!"]] call ExileClient_gui_toaster_addTemplateToast;
					player action["getOut",ExileClientSafeZoneVehicle];
				};
			};
		};
	};
};
true