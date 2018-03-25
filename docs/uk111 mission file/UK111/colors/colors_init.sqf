UK111_ColorCorrections_1 = profileNamespace getVariable ["UK111_ColorCorrections_1", 1];
UK111_ColorCorrections_2 = profileNamespace getVariable ["UK111_ColorCorrections_2", 1];
UK111_ColorCorrections_3 = profileNamespace getVariable ["UK111_ColorCorrections_3", 0];
UK111_ColorCorrections_4 = profileNamespace getVariable ["UK111_ColorCorrections_4", 0];
UK111_ColorCorrections_5 = profileNamespace getVariable ["UK111_ColorCorrections_5", 0];
UK111_ColorCorrections_6 = profileNamespace getVariable ["UK111_ColorCorrections_6", 0];
UK111_ColorCorrections_7 = profileNamespace getVariable ["UK111_ColorCorrections_7", 0];
UK111_ColorCorrections_8 = profileNamespace getVariable ["UK111_ColorCorrections_8", 0.39];
UK111_ColorCorrections_9 = profileNamespace getVariable ["UK111_ColorCorrections_9", 0.32];
UK111_ColorCorrections_10 = profileNamespace getVariable ["UK111_ColorCorrections_10", 0.25];
UK111_ColorCorrections_11 = profileNamespace getVariable ["UK111_ColorCorrections_11", 1];
UK111_ColorCorrections_12 = 0.5;
UK111_ColorCorrections_13 = 0.5;
UK111_ColorCorrections_14 = 0.5;
UK111_ColorCorrections_15 = 0;
UK111_ColorCorrections_16 = 0;
UK111_ColorCorrections_17 = 0;
UK111_ColorCorrections_18 = 0;
UK111_ColorCorrections_19 = 0;
UK111_ColorCorrections_20 = 0;
UK111_ColorCorrections_21 = 0;
UK111_ColorCorrections_22 = 4;

{
	_code = compileFinal (preprocessFileLineNumbers (_x select 1));
	missionNamespace setVariable [(_x select 0),_code];
} forEach [
	["UK111_fnc_colors_dialog","UK111\colors\colors_dialog.sqf"],
	["UK111_fnc_colors_change","UK111\colors\colors_change.sqf"],
	["UK111_fnc_colors_default","UK111\colors\colors_default.sqf"],
	["UK111_fnc_colors_save","UK111\colors\colors_save.sqf"],
	["UK111_fnc_colors_update","UK111\colors\colors_update.sqf"],
	["UK111_fnc_colors_save_check","UK111\colors\colors_save_check.sqf"],
	["UK111_fnc_colors_move_sliders","UK111\colors\colors_move_sliders.sqf"],
	["UK111_fnc_colors_save_array","UK111\colors\colors_save_array.sqf"]
];
[] call UK111_fnc_colors_update;
