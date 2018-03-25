private["_request","_time","_hours","_minutes","_img","_text"];

_request = [];

_time = serverTime;
_hours = (ExAd_SB_Timer - 1) - floor (_time / 3600);
_minutes = 59 - floor ((_time % 3600) / 60);

_img = [ExAd_SB_ICON_TIMER] call StatsBar_fnc_formatSBImage;
_text = format["%1:%2", _hours,(if(_minutes < 10 )then{format["0%1",_minutes]}else{_minutes})];
_request pushBack [_img,_text];

if(ExAd_SB_COMPONENTS_ACTIVE_COLORS)then{
	if(_hours > 0)then{
		_request pushBack ([0,1,_hours] call StatsBar_fnc_getSBColor)
	}else{
		_request pushBack ([0,60,_minutes] call StatsBar_fnc_getSBColor)
	};
};

_request call StatsBar_fnc_formatSBOutput