private ["_apps","_idc","_title","_display"];
_apps = getArray(missionConfigFile >> "CfgXM8" >> "extraApps");
if (count _apps == 0) exitWith {false};
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

if (isNil "ExAd_XM8_FIRST_IDC") then {
	private ["_continue","_idc"];
	_continue = true;
	_idc = 5001;
	while {_continue} do {
		_ctrl = _display displayCtrl _idc; 
		if (ctrlText _ctrl == "") then {
			_continue = false;
			ExAd_XM8_FIRST_IDC = _idc;
		} else {
			_idc = _idc + 1;
		}
	};
};

_idc = ExAd_XM8_FIRST_IDC;
_pW = 0.025; _pH = 0.04;
_slide = ctrlParentControlsGroup (_display displayCtrl _idc);	
_lastPos = [];

{
	private["_ctrl","_pos","_logo","_function"];
	_ctrl = _display displayCtrl _idc;
	
	if (isNull _ctrl) then {
		_ctrl = _display ctrlCreate ["RscExileXM8AppButton1x1",_idc,_slide];
		_xPos = if( (_lastPos select 0) == (30 - 3) * (0.025) ) then { (4 - 3) * (0.025) } else {  (_lastPos select 0) + ( 6.5 * 0.025 ) };
		_yPos = if( (_lastPos select 0) == (30 - 3) * (0.025) ) then {
			(_lastPos select 1) + ( 5.5 * 0.04 ) 
		} else {
			(_lastPos select 1)
		};
		_pos = [ _xPos , _yPos, _lastPos select 2, _lastPos select 3];
		_ctrl ctrlSetPosition _pos;
		_ctrl ctrlCommit 0;
	} else {
		_pos = ctrlPosition _ctrl;
	};
		
	_logo = if (isText(missionConfigFile >> "CfgXM8" >> _x >> "logo")) then {
		getText(missionConfigFile >> "CfgXM8" >> _x >> "logo")
	} else {
		"UK111\StatsBar\Icons\Family.paa"
	};
	
	[_display,_slide,([_x,format["AppIcon%1",_idc]] call XM8_Apps_fnc_getNextIDC),[(_pos select 0) + 1.5 * _pW, (_pos select 1) + 0.625 * _pH, 3 * _pW, 3 * _pH],_logo,[1,1,1,1],false,true,""] call XM8_Apps_fnc_createPicture;
	_ctrl ctrlSetText getText(missionConfigFile >> "CfgXM8" >> _x >> "title");
	
	_function = if (isText(missionConfigFile >> "CfgXM8" >> _x >> "quickFunction")) then {
		getText(missionConfigFile >> "CfgXM8" >> _x >> "quickFunction")
	} else {
		format["['%1',0] call ExileClient_gui_xm8_slide",_x]
	};
	
	_ctrl ctrlSetEventHandler ["ButtonClick", _function];
	_lastPos = _pos;
	_idc = _idc + 1;
} forEach _apps;

true