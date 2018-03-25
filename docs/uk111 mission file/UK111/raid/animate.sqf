private ["_lockpickTime", "_count", "_fixedCount"];
_lockpickTime = _this;
_count = _lockpickTime / 10 + 2;
_fixedCount = floor _count;
for "_i" from 1 to _fixedCount do {
	if !(Raid_raiding) exitWith {};
	player playAction "Medic";
	uiSleep 6;
	if !(Raid_raiding) exitWith {};
	player playAction "MedicOther";
	uiSleep 6;			
};
