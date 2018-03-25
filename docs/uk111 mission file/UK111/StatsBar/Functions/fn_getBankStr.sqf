private["_img","_text"];

_img = [ExAd_SB_ICON_BANK] call StatsBar_fnc_formatSBImage;
_text = [player getVariable ["ExileLocker", 0]] call StatsBar_fnc_formatNbrToPrefixStr;

[[_img, _text]] call StatsBar_fnc_formatSBOutput