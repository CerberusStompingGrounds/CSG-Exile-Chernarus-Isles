if (!hasInterface || isServer) exitWith {};
private ["_varType1", "_slider1", "_text1", "_varType2", "_slider2", "_text2", "_syncVar", "_updateType", "_textValue"];
_varType1 = [_this, 0, "", [""]] call BIS_fnc_param;
_slider1 = [_this, 1, controlNull, [0, controlNull]] call BIS_fnc_param;
_text1 = [_this, 2, controlNull, [0, controlNull]] call BIS_fnc_param;
_varType2 = [_this, 3, "", [""]] call BIS_fnc_param;
_slider2 = [_this, 4, controlNull, [0, controlNull]] call BIS_fnc_param;
_text2 = [_this, 5, controlNull, [0, controlNull]] call BIS_fnc_param;
_syncVar = [_this, 6, "", [""]] call BIS_fnc_param;

if (count _this < 7) then {
	_updateType = 2;
} else {
	if (call compile _syncVar) then {
		_updateType = 3;
	} else {
		_updateType = 1;
	};
};

switch (_updateType) do {
	case 1: {
		_textValue = [ctrlText _text1, "0123456789"] call BIS_fnc_filterString;
		_textValue = if (_textValue == "") then {0} else {call compile _textValue min 12000 max 0};				
		sliderSetPosition [_slider1, _textValue min CHVD_maxView];
		sliderSetRange [_slider2, 0, _textValue min CHVD_maxView];			
		call compile format ["%1 = %2", _varType1, _textValue min CHVD_maxView];
		
		if ((call compile _varType2) > _textValue) then {
			sliderSetPosition [_slider2, _textValue min CHVD_maxObj];
			ctrlSetText [_text2, str round (_textValue min CHVD_maxObj)];
			call compile format ["%1 = %2", _varType2, _textValue min CHVD_maxObj];
		};
		[_updateType] call CHVD_fnc_updateSettings;
	};
	case 2: {
		_textValue = [ctrlText _text1, "0123456789"] call BIS_fnc_filterString;
		_textValue = if (_textValue == "") then {0} else {call compile _textValue min 12000 max 0};
		sliderSetPosition [_slider1, _textValue min CHVD_maxObj];			
		call compile format ["%1 = %2", _varType1, _textValue min CHVD_maxObj];
		[_updateType] call CHVD_fnc_updateSettings;
	};
	case 3: {
		_textValue = [ctrlText _text1, "0123456789"] call BIS_fnc_filterString;
		_textValue = if (_textValue == "") then {0} else {call compile _textValue min 12000 max 0};
		sliderSetPosition [_slider1, _textValue min CHVD_maxView];
		sliderSetRange [_slider2, 0, _textValue min CHVD_maxView];
		call compile format ["%1 = %2", _varType1, _textValue min CHVD_maxView];
		
		if ((call compile _varType2) > _textValue) then {
			sliderSetPosition [_slider2, _textValue min CHVD_maxObj];
			ctrlSetText [_text2, str round (_textValue min CHVD_maxObj)];
			call compile format ["%1 = %2", _varType2, _textValue min CHVD_maxObj];
		};
		
		sliderSetPosition [_slider2, _textValue min CHVD_maxObj];
		ctrlSetText [_text2, str round (_textValue min CHVD_maxObj)];	
		call compile format ["%1 = %2", _varType2, _textValue min CHVD_maxObj];
		[_updateType] call CHVD_fnc_updateSettings;
	};	
};