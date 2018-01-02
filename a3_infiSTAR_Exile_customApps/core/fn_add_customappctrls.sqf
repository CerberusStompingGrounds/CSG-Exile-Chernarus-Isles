disableSerialization;
_display = uiNamespace getVariable ['RscExileXM8', displayNull];
if(!isNull _display)then{


{
	_x params ['_submenu','_toggleable','_text','_tooltip','_fnc','_pic'];
	_idc = 5004 + _forEachIndex;
	_ctrl = _display displayCtrl _idc;
	_ctrl ctrlRemoveAllEventHandlers 'ButtonClick';
	if(_submenu)then{_fnc = 'call apps_fnc_call_submenu;' + _fnc;};
	
	if(_toggleable)then
	{
		private _togglevarname = format['apptogglestate_%1',_idc];
		private _toggled = missionNameSpace getVariable _togglevarname;
		_ctrl ctrlSetStructuredText parseText format['<t color="%1">%2</t>',if(isNil'_toggled')then{'#44CD00'}else{'#FF0000'},_text];
		
		_fnc = _fnc + format['',_togglevarname];
	}
	else
	{
		_ctrl ctrlSetText _text;
	};
	_ctrl ctrlSetTooltip _tooltip;
	_ctrl ctrlSetEventHandler ['ButtonClick',_fnc];
	[_display,_ctrl,_pic] call apps_fnc_add_picture;
} forEach APP_CODE_ARRAY;




_ctrl = [_display,'RscStructuredText',9999123] call apps_fnc_createctrl;
_ctrl ctrlSetPosition [0.25,0.81,.5,0.04];
_ctrl ctrlSetStructuredText parseText '<t size=".5" align="center" color="#00BBFA" font="RobotoMedium"><a href="https://infiSTAR.de/#xm8apps">custom apps by infiSTAR.de</a></t>';
_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 0;
_ctrl ctrlSetFade 0.2;
_ctrl ctrlCommit 1;
createdCtrls pushBackUnique 9999123;

{
	if(!isNull _x)then
	{
		_x ctrlRemoveAllEventHandlers 'MouseMoving';
		_x ctrlSetEventHandler ['MouseMoving', '[] call apps_fnc_setfocus_customappctrls;'];
	};
} forEach (allControls _display);
};