if (!hasInterface || isServer) exitWith {};
closeDialog 0;
_dialog = createDialog "CHVD_dialog";
if (!_dialog) exitWith {systemChat "Error: Can't open View Distance dialog."};
disableSerialization;
{ ctrlSetText _x; } forEach [[1006, str round CHVD_foot],[1007, str round CHVD_footObj],[1400, str CHVD_footTerrain]];

{
	sliderSetRange [_x select 0, 0, _x select 2];
	sliderSetRange [_x select 3, 0, (_x select 5) min (_x select 1)];
	sliderSetSpeed [_x select 0, 500, 500];
	sliderSetSpeed [_x select 3, 500, 500];
	sliderSetPosition [_x select 0, _x select 1];
	sliderSetPosition [_x select 3, (_x select 4) min (_x select 1)];
} forEach [[1900,CHVD_foot,CHVD_maxView,1901,CHVD_footObj,CHVD_maxObj]];

{
	((findDisplay 2900) displayCtrl (_x select 0)) cbSetChecked (_x select 1);
} forEach [[2800,CHVD_footSyncObj]];

{
	_ctrl = ((findDisplay 2900) displayCtrl (_x select 0));
	if (CHVD_allowNoGrass) then { _ctrl lbAdd "Low"; };
	_ctrl lbAdd "Standard";
	_ctrl lbAdd "High";
	_ctrl lbAdd "Very High";
	_sel = [_x select 1] call CHVD_fnc_selTerrainQuality;
	if (CHVD_allowNoGrass) then {
		_ctrl lbSetCurSel _sel;
	} else {
		_ctrl lbSetCurSel (_sel - 1);
	};
} forEach [[1500,CHVD_footTerrain]];

{
	_ctrl = ((findDisplay 2900) displayCtrl (_x select 0));
	_handle = _ctrl ctrlSetEventHandler ["LBSelChanged",format ["[_this select 1, '%1', %2] call CHVD_fnc_onLBSelChanged", _x select 1, _x select 2]];
} forEach [[1500,"CHVD_footTerrain",1400]];

if (CHVD_footSyncObj) then {
	ctrlEnable [1901,false];
	ctrlEnable [1007,false];
} else {	
	ctrlEnable [1901,true];
	ctrlEnable [1007,true];
};

//Remove background blur?
false call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;