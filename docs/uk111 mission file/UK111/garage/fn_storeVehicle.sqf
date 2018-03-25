if (!hasInterface || isServer) exitWith {};
private ["_lastStored", "_object", "_thief", "_duper", "_ownerUID", "_obj", "_found", "_check", "_vehName", "_vehicleID"];

if (lbCurSel 3802 == -1) exitWith { ["ErrorTitleAndText",["Garage","No vehicle selected!"]] call ExileClient_gui_toaster_addTemplateToast; };
if (isNil "UK111_lastStored") then { UK111_lastStored = time - 30; };
_lastStored = time - UK111_lastStored;
if (_lastStored < 30) exitWith { ["ErrorTitleAndText",["Garage",format["Wait another %1 seconds to store this vehicle!",30 - round(_lastStored)]]] call ExileClient_gui_toaster_addTemplateToast; };

_object = StoreVehicleList select (lbCurSel 3802);
StoreVehicleList = nil;
closeDialog 0;

_thief = false;
_duper = false;
if (ExilePlayerInSafezone) then {
	_ownerUID = _object getVariable["UK111_vehicle_owner",0];
	if !((getPlayerUID player) isEqualTo _ownerUID) exitWith { _thief = true; };
	if (UK111_athelipad) exitWith { _duper = true; };
};
if (_thief) exitWith { ["ErrorTitleAndText",["Access Denied!","You are not the owner of this vehicle!"]] call ExileClient_gui_toaster_addTemplateToast; };
if (_duper) exitWith { ["ErrorTitleAndText",["Garage","Move your vehicle away from the helipad first!"]] call ExileClient_gui_toaster_addTemplateToast; };

_obj = player nearEntities[["LandVehicle","Air","Ship"], 80];
_found = false;
_check = objNull;
{
	if ((typeOf _x) isEqualTo (typeOf _object)) exitWith {
		_found = true;
		_check = _x;
	};
} forEach _obj;

if ((!_found) || (!local _check)) exitWith { ["ErrorTitleAndText",["Garage","You are not the last one on driver seat!"]] call ExileClient_gui_toaster_addTemplateToast; };

UK111_lastStored = time;
_vehName = getText(configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName");
UKexile_storeVehicle = [player,_object];
publicVariableServer "UKexile_storeVehicle";

waitUntil {!isNil "UKexile_storeVehicleResult"};

if (UKexile_storeVehicleResult) then {
	["SuccessTitleAndText",["Garage",format["%1 stored in your garage!",_vehName]]] call ExileClient_gui_toaster_addTemplateToast;
} else {
	["ErrorTitleAndText",["Garage","You can store max 10 vehicles and only bought ones!"]] call ExileClient_gui_toaster_addTemplateToast;
};

UKexile_storeVehicleResult = nil;
