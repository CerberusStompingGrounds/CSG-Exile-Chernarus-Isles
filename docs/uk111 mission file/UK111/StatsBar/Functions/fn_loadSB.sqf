disableSerialization;
ExAd_SB_Dialog_Layer cutRsc ["ExAd_STATSBAR","PLAIN",1];
_display = uiNameSpace getVariable ["ExAd_STATSBAR",displayNull];	

_logoCtrl = _display displayCtrl ExAd_SB_Dialog_CtrlLogo_IDC;
if (count ExAd_SB_ICON_LOGO > 0) then { _logoCtrl ctrlSetText ExAd_SB_ICON_LOGO; };

call StatsBar_fnc_updateSB;
ExAd_SB_Thread = [ExAd_SB_Update_Rate, StatsBar_fnc_sbThread, [], true] call ExileClient_system_thread_addtask;

true