if (!hasInterface || isServer) exitWith {};
private ["_vehicles", "_control", "_class", "_displayName"];

createDialog "vehicle_store_list";
disableSerialization;
_vehicles = player nearEntities[["LandVehicle","Air","Ship"],80];
waitUntil {!isNil "_vehicles"};

ctrlShow[3803,false];
ctrlShow[3830,false];
waitUntil {!isNull (findDisplay 3800)};

if ((count _vehicles) isEqualTo 0) exitWith {
	ctrlSetText[3811,"No Vehicles"];
	["ErrorTitleAndText",["Garage","No vehicles nearby where you were last on driver seat!"]] call ExileClient_gui_toaster_addTemplateToast;
};

_control = ((findDisplay 3800) displayCtrl 3802);
lbClear _control;

StoreVehicleList = [];
{
	if (local _x && !isNull _x && alive _x) then {
		_class = typeOf _x;
		_displayName = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
		_control lbAdd _displayName;
		_control lbSetData [(lbSize _control)-1,_class];
		StoreVehicleList set [count StoreVehicleList,_x]
	};
} count _vehicles;

ctrlShow[3810,false];
ctrlShow[3811,false];
