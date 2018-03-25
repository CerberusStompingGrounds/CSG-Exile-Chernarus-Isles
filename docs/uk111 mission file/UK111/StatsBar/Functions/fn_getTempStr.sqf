private["_request","_img","_text"];

_request = [];

_img = [ExAd_SB_ICON_TEMP] call StatsBar_fnc_formatSBImage;
_temp = [ExileClientPlayerAttributes select 5, 1] call ExileClient_util_math_round;
_text = _temp;

_request pushBack [_img,_text, "°C"];

if(ExAd_SB_COMPONENTS_ACTIVE_COLORS)then{
	_request pushBack ([0,37,_text] call StatsBar_fnc_getSBColor)
};

_request call StatsBar_fnc_formatSBOutput