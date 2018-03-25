private ["_case", "_colors"];
_case = _this select 0;
switch (_case) do {
	case "exile": { _colors = [1,1,0,0,0,0,0,0.39,0.32,0.25,1]; };
	case "warm": { _colors = [1.0,0.88,0,0.2,0.29,0.4,-0.22,1,1,1,1.3]; };
	case "cold": { _colors = [1,0.5,0.03,0.2,0.17,0.1,-0.22,0.75,0.75,0.8,1]; };
	case "bright": { _colors = [1.1,1,0,0,0,0,0,1,1,1,1]; };
	case "dark": { _colors = [0.88,0.88,0,0.2,0.29,0.4,-0.22,1,1,1,1.3]; };
};

UK111_ColorCorrections_1 = _colors select 0;
UK111_ColorCorrections_2 = _colors select 1;
UK111_ColorCorrections_3 = _colors select 2;
UK111_ColorCorrections_4 = _colors select 3;
UK111_ColorCorrections_5 = _colors select 4;
UK111_ColorCorrections_6 = _colors select 5;
UK111_ColorCorrections_7 = _colors select 6;
UK111_ColorCorrections_8 = _colors select 7;
UK111_ColorCorrections_9 = _colors select 8;
UK111_ColorCorrections_10 = _colors select 9;
UK111_ColorCorrections_11 = _colors select 10;

[] call UK111_fnc_colors_update;
[] call UK111_fnc_colors_move_sliders;
