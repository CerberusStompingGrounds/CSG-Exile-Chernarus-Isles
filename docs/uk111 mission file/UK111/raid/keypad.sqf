private ["_display", "_ctrlButtonCancel", "_screenText", "_rndChar1", "_rndChar2", "_rndChar3", "_rndChar4"];
raid_fnc_abortLockpick = {
	disableSerialization;
	_display = uiNameSpace getVariable ["RscExileKeypad", displayNull];
	_display closeDisplay 0;
	Raid_raiding = false;
	if (_this isEqualTo 1) then { (findDisplay 46) displayRemoveEventHandler ["KeyDown",raid_abortKey]; };
};

raid_abortKey = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) isEqualTo 45) then {1 call raid_fnc_abortLockpick}"];
disableSerialization;
createDialog "RscExileKeypad";
_display = uiNameSpace getVariable ["RscExileKeypad", displayNull];
_ctrlButtonCancel = _display displayCtrl 4002;
_ctrlButtonCancel ctrlSetEventHandler ["ButtonClick", "2 call raid_fnc_abortLockpick"];
_screenText = _display displayCtrl 4001;
_screenText ctrlSetText "";

while {(Raid_raiding && alive player)} do {
	_rndChar1 = selectRandom [0,1,2,3,4,5,6,7,8,9];
	_rndChar2 = selectRandom [0,1,2,3,4,5,6,7,8,9];
	_rndChar3 = selectRandom [0,1,2,3,4,5,6,7,8,9];
	_rndChar4 = selectRandom [0,1,2,3,4,5,6,7,8,9];
	_screenText = _display displayCtrl 4001;
	_screenText ctrlSetText format["%1%2%3%4",_rndChar1,_rndChar2,_rndChar3,_rndChar4];
	sleep 0.1;
};

_display closeDisplay 0;
(findDisplay 46) displayRemoveEventHandler ["KeyDown",raid_abortKey];
