private["_display","_control","_slideControlID","_slideName","_slideTitle","_slideControl","_titleControl","_toSlideOpenFunction"];
disableSerialization;
createDialog "RscExileXM8";
ExileClientXM8IsVisible = true;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

if (ExileClientXM8IsPowerOn) then {
	_control = _display displayCtrl 4002;
	_control ctrlSetFade 1;
	_control ctrlCommit 0;
} else {
	{
		_control = _display displayCtrl _x;
		_control ctrlSetFade 1;
		_control ctrlCommit 0;
	} forEach [4002,4003,4004,4005,4007,4001,4010,4030,4020];
};

true call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;
if (ExileClientXM8CurrentSlide isEqualTo "party") then {
	if (ExileClientPartyID isEqualTo -1) then { ExileClientXM8CurrentSlide = "apps"; }
};

call XM8_Apps_fnc_createExtraApps;
if (ExileClientXM8CurrentSlide isEqualTo 'extraApps') then { ExileClientXM8CurrentSlide = 'apps' };

{
	_slideControlID = getNumber (_x >> "controlID");
	_slideName = configName _x;
	_slideTitle = getText (_x >> "title");
	_slideControl = _display displayCtrl _slideControlID;
	if (_slideName isEqualTo ExileClientXM8CurrentSlide) then {
		_titleControl = _display displayCtrl 4004;
		_titleControl ctrlSetStructuredText (parseText (format ["<t align='center' font='RobotoMedium'>%1</t>", _slideTitle]));
		_slideControl ctrlSetPosition [(0 * 0.05), (0 * 0.05)];
		_slideControl ctrlCommit 0;
		_slideControl ctrlShow true;
		_toSlideOpenFunction = missionNamespace getVariable [format ["ExileClient_gui_xm8_slide_%1_onOpen", _slideName], ""];
		if !(_toSlideOpenFunction isEqualTo "") then { call _toSlideOpenFunction; };
	} else {
		_slideControl ctrlShow false;
	};
} forEach (("true" configClasses (configFile >> "CfgXM8")) + ("true" configClasses (missionConfigFile >> "CfgXM8")));

ExileXM8ThreadHandle = [10, ExileClient_gui_xm8_thread_update, [], true] call ExileClient_system_thread_addtask;
call ExileClient_gui_xm8_thread_update;
