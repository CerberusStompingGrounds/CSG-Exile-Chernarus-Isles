private["_display","_statsBarCtrl","_text"];
disableSerialization;
_display = uiNameSpace getVariable ["ExAd_STATSBAR",displayNull];	
_statsBarCtrl = _display displayCtrl ExAd_SB_Dialog_CtrlBar_IDC;

_text = format[
	"<t align='%2' shadow='0' valign='middle' font='%1' size='%3'>%4%5%6%7%8%9%10%11%12%13%14%15%16%17%18%4</t>",
	ExAd_SB_Text_Font,
	ExAd_SB_Text_Align,
	ExAd_SB_Text_Size,
	ExAd_SB_Text_Margin,
	(if(ExAd_SB_Show_HP && ExAd_SB_Allow_HP)then{call StatsBar_fnc_getHPStr}else{""}),
	(if(ExAd_SB_Show_Thirst && ExAd_SB_Allow_Thirst)then{call StatsBar_fnc_getThirstStr}else{""}),
	(if(ExAd_SB_Show_Hunger && ExAd_SB_Allow_Hunger)then{call StatsBar_fnc_getHungerStr}else{""}),
	(if(ExAd_SB_Show_Wallet && ExAd_SB_Allow_Wallet)then{call StatsBar_fnc_getWalletStr}else{""}),
	(if(ExAd_SB_Show_Bank && ExAd_SB_Allow_Bank)then{call StatsBar_fnc_getBankStr}else{""}),
	(if(ExAd_SB_Show_Respect && ExAd_SB_Allow_Respect)then{call StatsBar_fnc_getRespectStr}else{""}),
	(if(ExAd_SB_Show_Time && ExAd_SB_Allow_Time)then{call StatsBar_fnc_getTimerStr}else{""}),
	(if(ExAd_SB_Show_KD && ExAd_SB_Allow_KD)then{call StatsBar_fnc_getKDStr}else{""}),
	(if(ExAd_SB_Show_Temp && ExAd_SB_Allow_Temp)then{call StatsBar_fnc_getTempStr}else{""}),
	(if(ExAd_SB_Show_Grid && ExAd_SB_Allow_Grid)then{call StatsBar_fnc_getGridStr}else{""}),
	(if(ExAd_SB_Show_PlayerCount && ExAd_SB_Allow_PlayerCount)then{call StatsBar_fnc_getPlayersStr}else{""}),
	(if(ExAd_SB_Show_ClanCount && ExAd_SB_Allow_ClanCount)then{call StatsBar_fnc_getClanStr}else{""}),
	(if(ExAd_SB_Show_FPS && ExAd_SB_Allow_FPS)then{call StatsBar_fnc_getFPSStr}else{""}),
	(if(ExAd_SB_Show_Compass && ExAd_SB_Allow_Compass)then{call StatsBar_fnc_getCompassStr}else{""})
];
_statsBarCtrl ctrlSetStructuredText parseText _text;

true