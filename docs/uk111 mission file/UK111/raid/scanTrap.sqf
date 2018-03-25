private ["_object", "_isTrappedObject", "_getLucky", "_origin", "_result"];
_object = _this select 0;
_isTrappedObject = _object getVariable["RaidIsTrapped",1] isEqualTo -1;
_getLucky = floor(random 100);
_origin = getPosATL player;

if !(Raid_trap_defuser in items player) exitWith {
	["ErrorTitleOnly",[Raid_no_defuser]] call ExileClient_gui_toaster_addTemplateToast;
};

if (Raid_defusing) exitWith {
	["ErrorTitleOnly", ["You are already defusing!"],5] call ExileClient_gui_toaster_addTemplateToast;
};

player removeItem Raid_trap_defuser;
Raid_defusing = true;
["SuccessTitleOnly",["Scanning safe!"]] call ExileClient_gui_toaster_addTemplateToast;
player playActionNow "Crouch";
uiSleep 3;

if (_isTrappedObject) then {
	_result = ["This safe is rigged! Attempt to defuse?", "Defuse", "Yes", "No"] call BIS_fnc_guiMessage;
	waitUntil {!isNil "_result"};
	if (!_result) then {
		player addItem Raid_trap_defuser;
		Raid_defusing = false;
	};
	if (_result) then {
		[] execVM "UK111\raid\defuseTrap.sqf";
	};
} else {
	["SuccessTitleOnly",["No explosives found!"]] call ExileClient_gui_toaster_addTemplateToast;
	player addItem Raid_trap_defuser;
	Raid_defusing = false;
};
