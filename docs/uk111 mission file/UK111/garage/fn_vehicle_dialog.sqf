if (!hasInterface || isServer) exitWith {};
private ["_flag", "_enemyFlag"];
_flag = _this select 0;
_enemyFlag = false;
if (!isNil "_flag") then {
	if !((getPlayerUID player) in (_flag getVariable["ExileTerritoryBuildRights",[]])) then {
		["ErrorTitleOnly",["Only players with building rights can use this garage!"]] call ExileClient_gui_toaster_addTemplateToast;
		_enemyFlag = true;
	};
};

if !(_enemyFlag) then {
	[] spawn {
		private ["_vehicles", "_control", "_displayName", "_tmp"];
		if !((vehicle player) isEqualTo player) exitWith { player removeAction s_garage_dialog; };

		createDialog "vehicle_garage";
		disableSerialization;
		UKexile_queryGarageVehicle = [player];
		publicVariableServer "UKexile_queryGarageVehicle";
		waitUntil {!isNil "UKexile_queryGarageVehicleResult"};

		ctrlShow[2803,false];
		ctrlShow[2830,false];
		waitUntil {!isNull (findDisplay 2800)};

		_vehicles = UKexile_queryGarageVehicleResult;
		UKexile_queryGarageVehicleResult = nil;

		if (count _vehicles == 0) exitWith { ctrlSetText[2811,"No Vehicles"]; };

		_control = ((findDisplay 2800) displayCtrl 2802);
		lbClear _control;

		{
			_displayName = getText(configFile >> "CfgVehicles" >> (_x select 1) >> "displayName");
			_control lbAdd _displayName;
			_tmp = str(_x);
			_control lbSetData [(lbSize _control)-1,_tmp];
		} count _vehicles;

		ctrlShow[2810,false];
		ctrlShow[2811,false];
	};
};
