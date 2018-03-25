private ["_playerUID", "_territoryName", "_messageFlag", "_date", "_messageDate"];
waitUntil {!isNull findDisplay 46 && !isNil "ExileClientLoadedIn" && getPlayerUID player != ""};
uiSleep 30;
_playerUID = getPlayerUID player;
{
	if (_playerUID in (_x getVariable["ExileTerritoryBuildRights",[]])) then {
		_territoryName = _x getVariable["ExileTerritoryName",""];
		if ((_x getVariable["ExileFlagStolen",0]) isEqualTo 1) then {
			_messageFlag = format["Flag from %1 has been stolen!!!",_territoryName];
			for "_i" from 1 to 10 do {
				["ErrorTitleAndText",["WARNING!",_messageFlag]] call ExileClient_gui_toaster_addTemplateToast;
				uiSleep 1;
			};
		} else {
			_date = _x getVariable["ExileTerritoryMaintenanceDue",[0,0,0,0,0]];
			_messageDate = format["%1 Due: %2/%3/%4 %5:%6 EET",_territoryName,_date select 2,_date select 1,_date select 0,_date select 3,_date select 4];
			["ErrorTitleAndText",["Base Maintenance",_messageDate]] call ExileClient_gui_toaster_addTemplateToast;
			systemChat _messageDate;
		};
	};
} forEach (allMissionObjects "Exile_Construction_Flag_Static");
