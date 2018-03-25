private ["_target", "_type", "_flagFound", "_nearestFlag", "_raided", "_nearestFlags", "_raidCount", "_result", "_wasOnline", "_members", "_doorType", "_typeOf", "_timer", "_chance"];
_target = (_this select 0) select 0;
_type = _this select 1;
if (Raid_raiding) exitWith { ["ErrorTitleOnly", ["You are already lock picking!"]] call ExileClient_gui_toaster_addTemplateToast; };
if !(Raid_lockpick_classname in magazines player) exitWith { ["ErrorTitleOnly", [Raid_no_lockpick]] call ExileClient_gui_toaster_addTemplateToast; };

_flagFound = false;
_nearestFlag = objNull;
_nearestFlags = nearestObjects [getPos player,["Exile_Construction_Flag_Static"],300];
if ((count _nearestFlags) > 0) then {
	_nearestFlag = _nearestFlags select 0;
	_flagFound = true;
};

_raided = false;
if (_flagFound) then {
	if (_type isEqualTo "safe") then {
		_raidCount = _nearestFlag getVariable["UK111_raided",0];
		if (_raidCount > 2) then { _raided = true; };
	};
};
if (_raided) exitWith { ["ErrorTitleOnly", ["Max amount of safes (3) from this territory has already been raided!"]] call ExileClient_gui_toaster_addTemplateToast; };
	
player enableSimulation false;
_result = ["Are you sure you want to use your knife?", "Lock Pick", "Yes", "No"] call BIS_fnc_guiMessage;
waitUntil {!isNil "_result"};
player enableSimulation true;

if (_result) then {
	_wasOnline = true;
	if (_flagFound) then {
		_wasOnline = _nearestFlag getVariable["UK111_wasOnline",false];
		if !(_wasOnline) then {
			_members = _nearestFlag getVariable["ExileTerritoryBuildRights",[]];
			{
				if ((getPlayerUID _x) in _members) exitWith {
					_wasOnline = true;
					_nearestFlag setVariable["UK111_wasOnline",true,true];
				};
			} forEach allPlayers;
		};
	};
	if !(_wasOnline) exitWith { ["ErrorTitleOnly", ["None of the members of this base is online! Lock picking is not possible!"]] call ExileClient_gui_toaster_addTemplateToast; };

	Raid_raiding = true;
	switch (_type) do {
		case "door": {
			_typeOf = typeOf _target;
			if (_typeOf in ["Exile_Construction_ConcreteFloorHatch_Static","Exile_Construction_ConcreteGate_Static","Exile_Construction_ConcreteDoor_Static"]) then { _doorType = "concrete"; };
			if (_typeOf in ["Exile_Construction_WoodDoor_Reinforced_Static", "Exile_Construction_WoodGate_Reinforced_Static"]) then { _doorType = "metal"; };
			if (_typeOf in ["Exile_Construction_WoodGate_Static","Exile_Construction_WoodDoor_Static"]) then { _doorType = "wood"; };
			switch (_doorType) do {
				case "wood": { [_target,_type,Raid_door_time,Raid_door_chance,_nearestFlag] execVM "UK111\raid\useLockpick.sqf"; };
				case "metal": { [_target,_type,Raid_doorM_time,Raid_doorM_chance,_nearestFlag] execVM "UK111\raid\useLockpick.sqf"; };
				case "concrete": { [_target,_type,Raid_doorC_time,Raid_doorC_chance,_nearestFlag] execVM "UK111\raid\useLockpick.sqf"; };
			};
		};
		case "safe": { [_target,_type,Raid_safe_time,Raid_safe_chance,_nearestFlag] execVM "UK111\raid\useLockpick.sqf"; };
	};
};
