private["_request","_img","_text"];

_request = [];
_img = [ExAd_SB_ICON_HP] call StatsBar_fnc_formatSBImage;
_text = round(ExileClientPlayerAttributes select 0);
//_text = format["%1%2",round(ExileClientPlayerAttributes select 0),"%"];
_request pushBack [_img,_text];

if (ExAd_SB_COMPONENTS_ACTIVE_COLORS) then { _request pushBack ([0,100,_text] call StatsBar_fnc_getSBColor) };
_request call StatsBar_fnc_formatSBOutput
