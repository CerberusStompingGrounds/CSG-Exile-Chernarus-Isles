private["_img","_text"];

_img = [ExAd_SB_ICON_RESPECT] call StatsBar_fnc_formatSBImage;
_text = [ExileClientPlayerScore] call StatsBar_fnc_formatNbrToPrefixStr;

[[_img, _text]] call StatsBar_fnc_formatSBOutput