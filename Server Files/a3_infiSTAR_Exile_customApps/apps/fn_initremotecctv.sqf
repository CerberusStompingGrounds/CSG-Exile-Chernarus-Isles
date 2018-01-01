disableSerialization;
false call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;
_display = uiNamespace getVariable ['RscExileXM8', displayNull];
(_display displayCtrl 4004) ctrlSetStructuredText parseText '<t align="center" font="RobotoMedium">CCTV Remote</t>';

_btn = [_display,'RscExileXM8ButtonMenu',1001] call apps_fnc_createctrl;
_btn ctrlSetPosition [0.725,0.62,0.15,0.04];
_btn ctrlCommit 0;
_btn ctrlSetText 'SELECT';
_btn ctrlSetEventHandler ['ButtonClick', 'call apps_fnc_start_remote_cctv;'];

_ctrl = [_display,'RscExileXM8ListBox',1000] call apps_fnc_createctrl;
_ctrl ctrlSetPosition [0.09,0.13,0.62,0.67];
_ctrl ctrlSetBackgroundColor [0.15,0.15,0.15,1];
_ctrl ctrlAddEventHandler ['LBDblClick', 'call apps_fnc_start_remote_cctv;'];
_ctrl ctrlCommit 0;
_ctrl call apps_fnc_xm8_fill_cameras;
lbSortByValue _ctrl;