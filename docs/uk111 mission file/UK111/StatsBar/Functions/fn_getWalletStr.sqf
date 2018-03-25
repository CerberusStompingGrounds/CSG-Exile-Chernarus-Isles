private["_img","_text"];

_img = [ExAd_SB_ICON_Wallet] call StatsBar_fnc_formatSBImage;
_text = [player getVariable ["ExileMoney", 0]] call StatsBar_fnc_formatNbrToPrefixStr;

[[_img, _text]] call StatsBar_fnc_formatSBOutput