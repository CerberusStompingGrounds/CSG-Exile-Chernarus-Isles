params["_display","_slide"];
_pW = 0.025;
_pH = 0.04;
_rowH = 1.3 * _pH;
_leftCol = 0 * _pW; 
_leftColW = 17 * _pW;
_cbCompTop = 1 * _pH;
_cbW = 1.25 * _pW;
_cbH = _rowH * 0.8;
_cbStr = _leftCol + _cbW;
_cbStrW = _leftColW - _cbW;
_rightCol = _leftCol + _leftColW;
_rightCbStr = _rightCol + _cbW;
_slideClass = "APPS_bar";

[_display,_slide,([_slideClass,"backButton"] call XM8_Apps_fnc_getNextIDC),[27 * _pW, 17 * _pH, 6 * _pW, 1 * _pH],'["extraApps", 1] call ExileClient_gui_xm8_slide;',"Go Back"] call XM8_Apps_fnc_createButton;
_newParent = [_display,_slide,([_slideClass,"ctrlGrp"] call XM8_Apps_fnc_getNextIDC),[0, _cbCompTop, 34 * _pW, 16 * _pH]] call XM8_Apps_fnc_createCtrlGrp;
_newParent ctrlEnable true;
_cbStrAlign = "left"; _titleStrAlign = "center"; _cbStrTextColor = "#ffffff"; _cbStrTextFont = "PuristaMedium"; _cbStrTextSize = 1;

if (ExAd_SB_Allow_KD) then {
	_cbKD = [_display,_newParent,([_slideClass,"cbShowKD"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop, _cbW, _cbH],"ExAd_SB_Show_KD = !ExAd_SB_Show_KD",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowKD"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop, _cbStrW, _rowH],"Kill/Death Ratio",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbKD cbSetChecked ExAd_SB_Show_KD;
};

if (ExAd_SB_Allow_HP) then {
	_cbHP = [_display,_newParent,([_slideClass,"cbShowHP"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 1, _cbW, _cbH],"ExAd_SB_Show_HP = !ExAd_SB_Show_HP",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowHP"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 1, _cbStrW, _rowH],"Health",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbHP cbSetChecked ExAd_SB_Show_HP;
};

if (ExAd_SB_Allow_Thirst) then {
	_cbThirst = [_display,_newParent,([_slideClass,"cbShowThirst"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 2, _cbW, _cbH],"ExAd_SB_Show_Thirst = !ExAd_SB_Show_Thirst",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowThirst"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 2, _cbStrW, _rowH],"Thirst",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbThirst cbSetChecked ExAd_SB_Show_Thirst;
};

if (ExAd_SB_Allow_Hunger) then {
	_cbHunger = [_display,_newParent,([_slideClass,"cbShowHunger"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 3, _cbW, _cbH],"ExAd_SB_Show_Hunger = !ExAd_SB_Show_Hunger",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowHunger"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 3, _cbStrW, _rowH],"Hunger",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbHunger cbSetChecked ExAd_SB_Show_Hunger;
};

if (ExAd_SB_Allow_Wallet) then {
	_cbWallet = [_display,_newParent,([_slideClass,"cbShowWallet"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 4, _cbW, _cbH],"ExAd_SB_Show_Wallet = !ExAd_SB_Show_Wallet",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowWallet"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 4, _cbStrW, _rowH],"POP TABS in wallet",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbWallet cbSetChecked ExAd_SB_Show_Wallet;
};

if (ExAd_SB_Allow_Bank) then {
	_cbBank = [_display,_newParent,([_slideClass,"cbShowBank"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 5, _cbW, _cbH],"ExAd_SB_Show_Bank = !ExAd_SB_Show_Bank",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowBank"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 5, _cbStrW, _rowH],"POP TABS in bank",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbBank cbSetChecked ExAd_SB_Show_Bank;
};

if (ExAd_SB_Allow_Respect) then {
	_cbRespect = [_display,_newParent,([_slideClass,"cbShowRespect"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 6, _cbW, _cbH],"ExAd_SB_Show_Respect = !ExAd_SB_Show_Respect",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowRespect"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 6, _cbStrW, _rowH],"Respect",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbRespect cbSetChecked ExAd_SB_Show_Respect;
};

_cbColor = [_display,_newParent,([_slideClass,"cbShowColor"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _cbCompTop + _rowH * 7, _cbW, _cbH],"ExAd_SB_COMPONENTS_ACTIVE_COLORS = !ExAd_SB_COMPONENTS_ACTIVE_COLORS",""] call XM8_Apps_fnc_createCheckBox;
[_display,_newParent,([_slideClass,"strTxtShowColor"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _cbCompTop + _rowH * 7, _cbStrW, _rowH],"Use color indications",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;

if (ExAd_SB_Allow_FPS) then {
	_cbFPS = [_display,_newParent,([_slideClass,"cbShowFPS"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop, _cbW, _cbH],"ExAd_SB_Show_FPS = !ExAd_SB_Show_FPS",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowFPS"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop, _cbStrW, _rowH],"FPS",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbFPS cbSetChecked ExAd_SB_Show_FPS;
};

if (ExAd_SB_Allow_Time) then {
	_cbTime = [_display,_newParent,([_slideClass,"cbShowTime"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 1, _cbW, _cbH],"ExAd_SB_Show_Time = !ExAd_SB_Show_Time",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowTime"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 1, _cbStrW, _rowH],"Restart time",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbTime cbSetChecked ExAd_SB_Show_Time;
};

if (ExAd_SB_Allow_Temp) then {
	_cbTemp = [_display,_newParent,([_slideClass,"cbShowTemp"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 2, _cbW, _cbH],"ExAd_SB_Show_Temp = !ExAd_SB_Show_Temp",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowTemp"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 2, _cbStrW, _rowH],"Body Temperature",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbTemp cbSetChecked ExAd_SB_Show_Temp;
};

if (ExAd_SB_Allow_Grid) then {
	_cbGrid = [_display,_newParent,([_slideClass,"cbShowGrid"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 3, _cbW, _cbH],"ExAd_SB_Show_Grid = !ExAd_SB_Show_Grid",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowGrid"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 3, _cbStrW, _rowH],"Grid location",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbGrid cbSetChecked ExAd_SB_Show_Grid;
};

if (ExAd_SB_Allow_Compass) then {
	_cbCompass = [_display,_newParent,([_slideClass,"cbShowCompass"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 4, _cbW, _cbH],"ExAd_SB_Show_Compass = !ExAd_SB_Show_Compass",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowCompass"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 4, _cbStrW, _rowH],"Compass",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbCompass cbSetChecked ExAd_SB_Show_Compass;
};

if (ExAd_SB_Allow_PlayerCount) then {
	_cbPlayers = [_display,_newParent,([_slideClass,"cbShowPlayers"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 5, _cbW, _cbH],"ExAd_SB_Show_PlayerCount = !ExAd_SB_Show_PlayerCount",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowPlayers"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 5, _cbStrW, _rowH],"Players online",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbPlayers cbSetChecked ExAd_SB_Show_PlayerCount;
};

if (ExAd_SB_Allow_ClanCount) then {
	_cbClan = [_display,_newParent,([_slideClass,"cbShowClan"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 6, _cbW, _cbH],"ExAd_SB_Show_ClanCount = !ExAd_SB_Show_ClanCount",""] call XM8_Apps_fnc_createCheckBox;
	[_display,_newParent,([_slideClass,"strTxtShowClan"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 6, _cbStrW, _rowH],"Family members online",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
	_cbClan cbSetChecked ExAd_SB_Show_ClanCount;
};

_cbHUD = [_display,_newParent,([_slideClass,"cbShowHUD"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _cbCompTop + _rowH * 7, _cbW, _cbH],"ExAd_SB_EXILE_HUD_ACTIVE = !ExAd_SB_EXILE_HUD_ACTIVE;call XM8_Apps_fnc_toggleExileHUD",""] call XM8_Apps_fnc_createCheckBox;
[_display,_newParent,([_slideClass,"strTxtShowHUD"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _cbCompTop + _rowH * 7, _cbStrW, _rowH],"Hide Exile Status bar",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;

_cbColor cbSetChecked ExAd_SB_COMPONENTS_ACTIVE_COLORS;
_cbHUD cbSetChecked !ExAd_SB_EXILE_HUD_ACTIVE;

_cbW = _cbW + 0.5 * _pW; _scale = 0.5; _margin = (_rowH * _scale / 2); _bgCompTop = _cbCompTop + _rowH * 9;
[_display,_newParent,([_slideClass,"strTxtTitleBgColor"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _bgCompTop, _leftColW, _rowH],"Background Color",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
[_display,_newParent,([_slideClass,"strTxtSliderR"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _bgCompTop + _rowH * 1, _cbW, _cbH],"R",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderR = [_display,_newParent,([_slideClass,"sliderR"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _bgCompTop + _rowH * 1 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderG"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _bgCompTop + _rowH * 2, _cbW, _cbH],"G",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderG = [_display,_newParent,([_slideClass,"sliderG"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _bgCompTop + _rowH * 2 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderB"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _bgCompTop + _rowH * 3, _cbW, _cbH],"B",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderB = [_display,_newParent,([_slideClass,"sliderB"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _bgCompTop + _rowH * 3 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderA"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _bgCompTop + _rowH * 4, _cbW, _cbH],"A",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderA = [_display,_newParent,([_slideClass,"sliderA"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _bgCompTop + _rowH * 4 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtTitlePos"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _bgCompTop, _leftColW, _rowH],"Position/Size",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
[_display,_newParent,([_slideClass,"strTxtSliderX"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _bgCompTop + _rowH * 1, _cbW, _cbH],"X",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderX = [_display,_newParent,([_slideClass,"sliderX"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _bgCompTop + _rowH * 1 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderY"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _bgCompTop + _rowH * 2, _cbW, _cbH],"Y",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderY = [_display,_newParent,([_slideClass,"sliderY"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _bgCompTop + _rowH * 2 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderW"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _bgCompTop + _rowH * 3, _cbW, _cbH],"W",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderW = [_display,_newParent,([_slideClass,"sliderW"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _bgCompTop + _rowH * 3 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderH"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _bgCompTop + _rowH * 4, _cbW, _cbH],"H",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderH = [_display,_newParent,([_slideClass,"sliderH"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _bgCompTop + _rowH * 4 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;

[_sliderR,[0,1],ExAd_SB_GUI_BgColor select 0] call XM8_Apps_fnc_prepareSlider;
[_sliderG,[0,1],ExAd_SB_GUI_BgColor select 1] call XM8_Apps_fnc_prepareSlider;
[_sliderB,[0,1],ExAd_SB_GUI_BgColor select 2] call XM8_Apps_fnc_prepareSlider;
[_sliderA,[0,1],ExAd_SB_GUI_BgColor select 3] call XM8_Apps_fnc_prepareSlider;

_sliderR ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (round ((_this select 1) * 255));ExAd_SB_GUI_BgColor set [0, _this select 1];call XM8_Apps_fnc_updateSB"]]; 
_sliderG ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (round ((_this select 1) * 255));ExAd_SB_GUI_BgColor set [1, _this select 1];call XM8_Apps_fnc_updateSB"]]; 
_sliderB ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (round ((_this select 1) * 255));ExAd_SB_GUI_BgColor set [2, _this select 1];call XM8_Apps_fnc_updateSB"]]; 
_sliderA ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (round ((_this select 1) * 100)) + '%1');ExAd_SB_GUI_BgColor set [3, _this select 1];call XM8_Apps_fnc_updateSB","%"]]; 

[_sliderX,[safeZoneX,safeZoneX + safeZoneW],ExAd_SB_GUI_POS select 0] call XM8_Apps_fnc_prepareSlider;
[_sliderY,[safeZoneY,safeZoneY + safeZoneH],ExAd_SB_GUI_POS select 1] call XM8_Apps_fnc_prepareSlider;
[_sliderW,[0,safeZoneW],ExAd_SB_GUI_POS select 2] call XM8_Apps_fnc_prepareSlider;
[_sliderH,[0,safeZoneH],ExAd_SB_GUI_POS select 3] call XM8_Apps_fnc_prepareSlider;

_sliderX ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (_this select 1);ExAd_SB_GUI_POS set [0, _this select 1];call XM8_Apps_fnc_updateSB","%"]]; 
_sliderY ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (_this select 1);ExAd_SB_GUI_POS set [1, _this select 1];call XM8_Apps_fnc_updateSB","%"]]; 
_sliderW ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (round ((_this select 1) / safeZoneW * 100)) + '%1');ExAd_SB_GUI_POS set [2, _this select 1];call XM8_Apps_fnc_updateSB","%"]]; 
_sliderH ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (round ((_this select 1) / safeZoneH * 100)) + '%1');ExAd_SB_GUI_POS set [3, _this select 1];call XM8_Apps_fnc_updateSB","%"]]; 

_textCompTop = _bgCompTop + _rowH * 6;
[_display,_newParent,([_slideClass,"strTxtTitleTextFont"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _textCompTop, _leftColW, _rowH],"Font",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_comboFont = [_display,_newParent,([_slideClass,"comboFont"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _textCompTop + _rowH * 1, _cbStrW, _rowH * 0.75],"ExAd_SB_Text_Font = ((_this select 0) lbData (_this select 1))","Font"] call XM8_Apps_fnc_createCombo;
{
	private["_index"];
	_index = _comboFont lbAdd _x;
	_comboFont lbSetData [_index, _x]
} forEach ((configFile >> "CfgFontFamilies") call BIS_fnc_getCfgSubClasses);

for "_i" from 0 to lbSize _comboFont do {
	if ((_comboFont lbData _i) isEqualTo ExAd_SB_Text_Font) exitWith {
		_comboFont lbSetCurSel _i;
	}
};

_comboAlign = [_display,_newParent,([_slideClass,"comboAlign"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _textCompTop + _rowH * 2, _cbStrW, _rowH * 0.75],"ExAd_SB_Text_Align = ((_this select 0) lbData (_this select 1))","Align"] call XM8_Apps_fnc_createCombo;
{
	private["_index"];
	_index = _comboAlign lbAdd _x;
	_comboAlign lbSetData [_index, _x]
} forEach ["Left","Center","Right"];

for "_i" from 0 to lbSize _comboAlign do {
	if ((_comboAlign lbData _i) isEqualTo ExAd_SB_Text_Align) exitWith {
		_comboAlign lbSetCurSel _i;
	}
};

[_display,_newParent,([_slideClass,"strTxtTitleTextColor"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop, _leftColW, _rowH],"Text Color",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
[_display,_newParent,([_slideClass,"strTxtSliderFontR"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop + _rowH * 1, _cbW, _cbH],"R",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderFontR = [_display,_newParent,([_slideClass,"sliderFontR"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _textCompTop + _rowH * 1 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderFontG"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop + _rowH * 2, _cbW, _cbH],"G",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderFontG = [_display,_newParent,([_slideClass,"sliderFontG"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _textCompTop + _rowH * 2 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderFontB"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop + _rowH * 3, _cbW, _cbH],"B",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderFontB = [_display,_newParent,([_slideClass,"sliderFontB"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _textCompTop + _rowH * 3 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtSliderFontA"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop + _rowH * 4, _cbW, _cbH],"A",_cbStrTextFont,_cbS6trTextSize,_cbStrTextColor,_cbStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderFontA = [_display,_newParent,([_slideClass,"sliderFontA"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _textCompTop + _rowH * 4 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtTitleUpdateRate"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop + _rowH * 5, _leftColW, _rowH],"Update Rate",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderUpdateRate = [_display,_newParent,([_slideClass,"sliderUpdateRate"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _textCompTop + _rowH * 6 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtTitleIconSize"] call XM8_Apps_fnc_getNextIDC),[_leftCol, _textCompTop + _rowH * 7, _leftColW, _rowH],"Image Size",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderIconSize = [_display,_newParent,([_slideClass,"sliderIconSize"] call XM8_Apps_fnc_getNextIDC),[_cbStr, _textCompTop + _rowH * 8 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtTitleTextSize"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _textCompTop + _rowH * 3, _leftColW, _rowH],"Text Size",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderTextSize = [_display,_newParent,([_slideClass,"sliderTextSize"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _textCompTop + _rowH * 4 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtTitleTextSize"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _textCompTop + _rowH * 5, _leftColW, _rowH],"Margin",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderTextMargin = [_display,_newParent,([_slideClass,"sliderTextMargin"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _textCompTop + _rowH * 6 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;
[_display,_newParent,([_slideClass,"strTxtTitleTextSize"] call XM8_Apps_fnc_getNextIDC),[_rightCol, _textCompTop + _rowH * 7, _leftColW, _rowH],"Padding",_cbStrTextFont,_cbStrTextSize,_cbStrTextColor,_titleStrAlign,1] call XM8_Apps_fnc_createStructuredText;
_sliderTextPadding = [_display,_newParent,([_slideClass,"sliderTextMargin"] call XM8_Apps_fnc_getNextIDC),[_rightCbStr, _textCompTop + _rowH * 8 + _margin, _cbStrW, _rowH * _scale]] call XM8_Apps_fnc_createXSliderH;

[_sliderFontR,[0,1],ExAd_SB_GUI_TextColor select 0] call XM8_Apps_fnc_prepareSlider;
[_sliderFontG,[0,1],ExAd_SB_GUI_TextColor select 1] call XM8_Apps_fnc_prepareSlider;
[_sliderFontB,[0,1],ExAd_SB_GUI_TextColor select 2] call XM8_Apps_fnc_prepareSlider;
[_sliderFontA,[0,1],ExAd_SB_GUI_TextColor select 3] call XM8_Apps_fnc_prepareSlider;

_sliderFontR ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (round ((_this select 1) * 255));ExAd_SB_GUI_TextColor set [0, _this select 1];call XM8_Apps_fnc_updateSB"]]; 
_sliderFontG ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (round ((_this select 1) * 255));ExAd_SB_GUI_TextColor set [1, _this select 1];call XM8_Apps_fnc_updateSB"]]; 
_sliderFontB ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str (round ((_this select 1) * 255));ExAd_SB_GUI_TextColor set [2, _this select 1];call XM8_Apps_fnc_updateSB"]]; 
_sliderFontA ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (round ((_this select 1) * 100)) + '%1');ExAd_SB_GUI_TextColor set [3, _this select 1];call XM8_Apps_fnc_updateSB", "%"]]; 

[_sliderTextSize,[0,2],ExAd_SB_Text_Size] call XM8_Apps_fnc_prepareSlider;
[_sliderTextMargin,[0,5],count ExAd_SB_Text_Margin] call XM8_Apps_fnc_prepareSlider;
[_sliderTextPadding,[0,5],count ExAd_SB_Text_InnerMargin] call XM8_Apps_fnc_prepareSlider;
[_sliderUpdateRate,[1,60],60 / ExAd_SB_Update_Rate] call XM8_Apps_fnc_prepareSlider;
[_sliderIconSize,[0,2], ExAd_SB_Img_Size] call XM8_Apps_fnc_prepareSlider;

_sliderTextSize ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (round ((_this select 1) * 100)) + '%1');ExAd_SB_Text_Size = _this select 1", "%"]]; 
_sliderTextMargin ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str floor(_this select 1);ExAd_SB_Text_Margin = [_this select 1] call XM8_Apps_fnc_getBlankSpace"]]; 
_sliderTextPadding ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip str floor(_this select 1);ExAd_SB_Text_InnerMargin = [_this select 1] call XM8_Apps_fnc_getBlankSpace"]]; 
_sliderUpdateRate ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (_this select 1) + ' times/min');ExAd_SB_Update_Rate = 60 / (_this select 1);if (ExAd_SB_Active) then {call XM8_Apps_fnc_sbStop; call XM8_Apps_fnc_loadSB;call XM8_Apps_fnc_sbThread}"]]; 
_sliderIconSize ctrlSetEventHandler ["SliderPosChanged", format["(_this select 0) ctrlSetTooltip (str (round ((_this select 1) * 100)) + '%1');ExAd_SB_Img_Size = _this select 1", "%"]]; 

[_display,_newParent,([_slideClass,"btnSave"] call XM8_Apps_fnc_getNextIDC),[_leftCol + (_leftColW / 9), _textCompTop + _rowH * 10, _leftColW / 3, _rowH],"call XM8_Apps_fnc_sbSave","Save"] call XM8_Apps_fnc_createButton;
[_display,_newParent,([_slideClass,"btnOnOff"] call XM8_Apps_fnc_getNextIDC),[_leftCol + (_leftColW / 2) + (_leftColW / 9), _textCompTop + _rowH * 10, _leftColW / 3, _rowH],"_this call XM8_Apps_fnc_sbPowerToggle",(if (!ExAd_SB_Active) then {"Show"}else{"Hide"})] call XM8_Apps_fnc_createButton;

true