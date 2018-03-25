private ["_display","_statsBarCtrl"];
_display = uiNameSpace getVariable ["ExAd_STATSBAR",displayNull];	
_statsBarCtrl = _display displayCtrl ExAd_SB_Dialog_CtrlBar_IDC;

_statsBarCtrl ctrlSetPosition ExAd_SB_GUI_POS;
_statsBarCtrl ctrlSetBackgroundColor ExAd_SB_GUI_BgColor;
_statsBarCtrl ctrlSetTextColor ExAd_SB_GUI_TextColor;
_statsBarCtrl ctrlCommit 0;	

true