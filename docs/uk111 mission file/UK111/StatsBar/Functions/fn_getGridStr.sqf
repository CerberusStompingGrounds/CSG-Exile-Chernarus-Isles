private["_img","_grid","_text"];

_grid = mapGridPosition player;

_img = [ExAd_SB_ICON_GRID] call StatsBar_fnc_formatSBImage;
_text = format["%1|%2",_grid select [0,3],_grid select [3,3]];

[[_img, _text]] call StatsBar_fnc_formatSBOutput