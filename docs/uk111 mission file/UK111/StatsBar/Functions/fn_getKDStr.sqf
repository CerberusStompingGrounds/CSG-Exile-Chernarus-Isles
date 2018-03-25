private["_request","_death","_img","_text"];

_request = [];

_death = if(ExileClientPlayerDeaths == 0)then{0.001}else{ExileClientPlayerDeaths};

_img = [ExAd_SB_ICON_KD] call StatsBar_fnc_formatSBImage;
_text = [ExileClientPlayerKills / _death, 2] call ExileClient_util_math_round;

_request pushBack [_img,_text];

if(ExAd_SB_COMPONENTS_ACTIVE_COLORS)then{
	_request pushBack ([0,2,_text] call StatsBar_fnc_getSBColor)
};

_request call StatsBar_fnc_formatSBOutput