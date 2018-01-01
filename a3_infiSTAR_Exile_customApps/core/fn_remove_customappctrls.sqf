disableSerialization;
_display = uiNamespace getVariable ['RscExileXM8', displayNull];
{customAppIddArray = customAppIddArray - [_x];} forEach createdCtrls;
{ctrlDelete (_display displayCtrl _x);} forEach customAppIddArray;
if(!isNull (_this select 0))then{ctrlDelete (_this select 0);};
true call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;