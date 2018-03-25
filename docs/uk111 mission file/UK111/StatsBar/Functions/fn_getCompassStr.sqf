private["_img","_dir"];

_img = [ExAd_SB_ICON_COMPASS] call StatsBar_fnc_formatSBImage;
_dir = direction player;

try
{
	if(_dir >= 337.5 || _dir < 22.5 )then{throw "N"};
	if(_dir >= 22.5 && _dir < 67.5 )then{throw "NE"};
	if(_dir >= 67.5 && _dir < 112.5 )then{throw "E"};
	if(_dir >= 112.5 && _dir < 157.5 )then{throw "SE"};
	if(_dir >= 157.5 && _dir < 202.5 )then{throw "S"};
	if(_dir >= 202.5 && _dir < 247.5 )then{throw "SW"};
	if(_dir >= 247.5 && _dir < 292.5 )then{throw "W"};
	if(_dir >= 292.5 && _dir < 337.5 )then{throw "NW"};

	throw "N/A"
} 
catch 
{
	[[_img, _exception, round _dir]] call StatsBar_fnc_formatSBOutput
}