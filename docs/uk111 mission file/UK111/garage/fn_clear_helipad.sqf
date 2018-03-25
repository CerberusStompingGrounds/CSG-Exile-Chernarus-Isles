if (!hasInterface || isServer) exitWith {};
private ["_vehicle", "_helipad", "_vehName", "_bike", "_timer"];
_vehicle = _this select 0;
_helipad = (_this select 1) select 0;

uiSleep 20;
if (isNull _vehicle) exitWith { UK111_athelipad = false; };
if (_vehicle distance _helipad > 12) exitWith { UK111_athelipad = false; };

_vehName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
_bike = typeOf _vehicle in ["Exile_Bike_MountainBike","Exile_Bike_OldBike"];
_timer = 50;

while {(_vehicle distance _helipad < 12) && (alive _vehicle) && (alive player) && (!isNull _vehicle) && (_timer > 0)} do {
	if (_bike) then {
		format["Move your bike away from the helipad or it gets deleted in %1s", _timer] call UK111_info_up;
	} else {
		format["Move your %1 away from the helipad or it gets stored in %2s", _vehName, _timer] call UK111_info_up;
	};
	_timer = _timer - 1;
	uiSleep 1;
};

"" call UK111_info_up;

if (_timer isEqualTo 0) then {
	if (_bike) then {
		deleteVehicle _vehicle;
		"Idling on spawn point - bike deleted!" call UK111_info;
	} else {
		UKexile_storeVehicle = [player,_vehicle];
		publicVariableServer "UKexile_storeVehicle";
		waitUntil {!isNil "UKexile_storeVehicleResult"};
		if (UKexile_storeVehicleResult) then {
			format["Idling on spawn point - %1 stored in your garage!", _vehName] call UK111_info;
		} else {
			["ErrorTitleAndText",["Garage","This vehicle cannot be stored in garage!"]] call ExileClient_gui_toaster_addTemplateToast;
		};
		UKexile_storeVehicleResult = nil;
	};
};

uiSleep 2;
UK111_athelipad = false;
