private["_img","_text"];

_img = [ExAd_SB_ICON_PLAYERS] call StatsBar_fnc_formatSBImage;
_text = ((playersNumber west)+(playersNumber east)+(playersNumber civilian)+(playersNumber resistance));

[[_img, _text]] call StatsBar_fnc_formatSBOutput