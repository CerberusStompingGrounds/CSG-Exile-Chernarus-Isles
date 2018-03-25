private ["_object", "_objectID", "_isTrappedObject", "_result"];
_object = _this select 0;
_objectID = netId _object;
_isTrappedObject = _object getVariable["RaidIsTrapped",1] isEqualTo -1;

if (_isTrappedObject) exitWith {
	["ErrorTitleOnly", ["This safe is already rigged!"]] call ExileClient_gui_toaster_addTemplateToast;
};

if !(Raid_safe_trap in magazines player) exitWith {
	["ErrorTitleOnly", [Raid_no_trap]] call ExileClient_gui_toaster_addTemplateToast;
};

player removeMagazine Raid_safe_trap;
player enableSimulation false;
_result = ["Do you want to rig this safe with explosives against raiders?", "Trap Safe", "Yes", "No"] call BIS_fnc_guiMessage;
waitUntil {!isNil "_result"};
player enableSimulation true;
if (!_result) then {
	player addMagazine Raid_safe_trap;
};
if (_result) then {
	_object setVariable["RaidIsTrapped",-1,true];
	["UK111RaidRequest",[_objectID,"trap","",""]] call ExileClient_system_network_send;
	["SuccessTitleOnly", ["Safe successfully trapped with explosives!"]] call ExileClient_gui_toaster_addTemplateToast;
};
