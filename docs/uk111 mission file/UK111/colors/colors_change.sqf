private ["_case", "_value"];
_case = _this select 0;
_value = _this select 1;
switch (_case) do {
	case 1: { UK111_ColorCorrections_1 = _value; };
	case 2: { UK111_ColorCorrections_2 = _value; };
	case 3: { UK111_ColorCorrections_3 = _value; };
	case 4: { UK111_ColorCorrections_4 = _value; };
	case 5: { UK111_ColorCorrections_5 = _value; };
	case 6: { UK111_ColorCorrections_6 = _value; };
	case 7: { UK111_ColorCorrections_7 = _value; };
	case 8: { UK111_ColorCorrections_8 = _value; };
	case 9: { UK111_ColorCorrections_9 = _value; };
	case 10: { UK111_ColorCorrections_10 = _value; };
	case 11: { UK111_ColorCorrections_11 = _value; };
};
[] call UK111_fnc_colors_update;
