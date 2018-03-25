if (!hasInterface || isServer) exitWith {};
private ["_vehicle", "_vehicleClass", "_vehicleName", "_helipad", "_check", "_result", "_ride", "_say"];

if (lbCurSel 2802 == -1) exitWith { ["ErrorTitleAndText",["Garage","No vehicle selected!"]] call ExileClient_gui_toaster_addTemplateToast; };
closeDialog 0;
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]);
_vehicleClass = getText(configFile >> "CfgVehicles" >> (_vehicle select 1) >> "vehicleClass");
_vehicleName = getText(configFile >> "CfgVehicles" >> (_vehicle select 1) >> "displayName");

_helipad = (nearestObjects [player, ["Land_HelipadCivil_F"], 180]);
if (_helipad isEqualTo []) exitWith {
	["ErrorTitleAndText",["Garage","No garage spawn point found!"]] call ExileClient_gui_toaster_addTemplateToast;
	systemChat "You need to build a helipad before you can spawn vehicles from your garage. Press 6 -> More -> Build Helipad";
};

_check = false;
if !(_vehicleClass in ["Ship","ExileBoats"]) then {
	if (((getPos (_helipad select 0)) findEmptyPosition [0,4]) isEqualTo []) then { //Thank you Arma once again for being inconsistent as fuck!!
		_check = true;
	};
};
if (_check) exitWith { ["ErrorTitleAndText",["Garage","Something is blocking the spawn point!"]] call ExileClient_gui_toaster_addTemplateToast; };

_result = ["Is the helipad clear to spawn this vehicle?", "Confirm", "Yes", "Abort"] call BIS_fnc_guiMessage;
waitUntil {!isNil "_result"};
if !(_result) exitWith {};

UKexile_spawnVehicle = [player,(_vehicle select 0),ExileClientSessionId];
publicVariableServer "UKexile_spawnVehicle";

waitUntil {!isNil "UKexile_spawnVehicleResult"};
_ride = UKexile_spawnVehicleResult select 0;

if (ExilePlayerInSafezone) then {
	_ride setVariable["UK111_vehicle_owner",getPlayerUID player,true];
};

player moveInDriver _ride;
uiSleep 2;

if (isStreamFriendlyUIEnabled) then {
	_say = format["PIN CODE for your %1 is ****",_vehicleName];
	["SuccessTitleAndText",["Garage",_say]] call ExileClient_gui_toaster_addTemplateToast;
	systemChat _say;
} else {
	_say = format["PIN CODE for your %1 is %2",_vehicleName,(UKexile_spawnVehicleResult select 1)];
	["SuccessTitleAndText",["Garage",_say]] call ExileClient_gui_toaster_addTemplateToast;
	systemChat _say;
};

UKexile_spawnVehicleResult = nil;
UKexile_queryGarageVehicleResult = nil;
