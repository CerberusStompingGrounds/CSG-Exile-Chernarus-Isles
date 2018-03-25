private["_request","_img","_text"];

_request = [];
_img = format["<t size='%1'>FPS:</t>", ExAd_SB_Img_Size];
_text = floor diag_fps;
_request pushBack [_img,_text];

if (ExAd_SB_COMPONENTS_ACTIVE_COLORS) then { _request pushBack ([0,40,_text] call StatsBar_fnc_getSBColor) };

_request call StatsBar_fnc_formatSBOutput
