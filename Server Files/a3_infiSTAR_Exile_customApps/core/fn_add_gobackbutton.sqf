disableSerialization;
_display = uiNamespace getVariable ['RscExileXM8', displayNull];
if(!isNull _display)then
{
_btnback = [_display,'RscExileXM8ButtonMenu',-2] call apps_fnc_createctrl;
_btnback ctrlSetPosition [0.725,0.72,0.15,0.04];
_btnback ctrlCommit 0;
_btnback ctrlSetText 'GO BACK';
_btnback ctrlRemoveAllEventHandlers 'ButtonClick';
_btnback ctrlSetEventHandler ['ButtonClick', '_this spawn apps_fnc_remove_customappctrls;["extraApps", 1] call ExileClient_gui_xm8_slide'];

{
	if(!isNull _x)then
	{
		_x ctrlRemoveAllEventHandlers 'MouseMoving';
		_x ctrlSetEventHandler ['MouseMoving', '[] call apps_fnc_setfocus_customappctrls;'];
	};
} forEach (allControls _display);
};