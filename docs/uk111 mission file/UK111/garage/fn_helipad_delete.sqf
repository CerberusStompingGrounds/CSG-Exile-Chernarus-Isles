if (!hasInterface || isServer) exitWith {};
private ["_playerUID", "_position", "_maximumTerritoryRadius", "_canDelete", "_result", "_buildRights", "_nearestsHelipads", "_count", "_message"];
_playerUID = getPlayerUID player;
_position = getPos player;
_maximumTerritoryRadius = getNumber(missionConfigFile >> "CfgTerritories" >> "maximumRadius");
_canDelete = false;
{
	_buildRights = _x getVariable ["ExileTerritoryBuildRights", []];
	if (_playerUID in _buildRights) then { _canDelete = true; };
} forEach (_position nearObjects ["Exile_Construction_Flag_Static", _maximumTerritoryRadius]); 

if (_canDelete) then {
	player enableSimulation false;
	_result = ["Are you sure you want to delete all helipads on this territory?", "Confirm", "Okay", "Abort"] call BIS_fnc_guiMessage;
	waitUntil { !isNil "_result" };
	player enableSimulation true;
	if (_result) then {
		_nearestsHelipads = (nearestObjects [_position, ["Land_HelipadCivil_F"], _maximumTerritoryRadius]);
		if (count _nearestsHelipads < 1) exitWith { ["ErrorTitleOnly",["No helipads found!"]] call ExileClient_gui_toaster_addTemplateToast; };
		_count = 0;
		{
			if (!isNull _x) then {
				UKexile_deleteHelipad = [_x];
				publicVariableServer "UKexile_deleteHelipad";
				_count = _count + 1;
			};
		} forEach _nearestsHelipads;
		_message = format["%1 helipad(s) deleted!",_count];
		["SuccessTitleAndText",[_message]] call ExileClient_gui_toaster_addTemplateToast;
	};
} else {
	["ErrorTitleOnly",["You don't have building rights here!"]] call ExileClient_gui_toaster_addTemplateToast;
};
