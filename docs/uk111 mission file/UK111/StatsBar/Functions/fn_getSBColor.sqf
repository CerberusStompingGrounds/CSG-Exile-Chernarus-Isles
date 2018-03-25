params[["_min",0,[0]],["_max",1,[0]],["_cur",1,[0]],"_count","_diff","_color",""];

try {
	if (isNil "ExAd_SB_COMPONENTS_COLORS") then {throw ""};

	_count = count ExAd_SB_COMPONENTS_COLORS;
	if(_count == 0)then{throw ""};

	if(_cur > _max)then{_max = _cur};		
	_diff = (_max - _min) / _count;
	_color = ExAd_SB_COMPONENTS_COLORS select 0;

	for "_i" from 0 to _count do {
		if (_cur >= (_i * _diff) && _cur <= ((_i + 1) * _diff)) then {throw (ExAd_SB_COMPONENTS_COLORS select _i);};
	};

	throw _color;
} catch {
	if (count _exception == 0) then {
		ExAd_SB_COMPONENTS_ACTIVE_COLORS = false;
	};
	_exception
};
