private ["_oldValues", "_currentValues", "_result"];
_oldValues = UK111_ColorCorrections_values;
_currentValues = [] call UK111_fnc_colors_save_array;
if (_oldValues isEqualTo _currentValues) then {
	closeDialog 0;
} else {
	_result = ["Are you sure you want to exit without saving?", "Confirm", "Yes", "No"] call BIS_fnc_guiMessage;
	waitUntil {!isNil "_result"};
	if (_result) then {
		closeDialog 0;
		"ColorCorrections" ppEffectEnable true; 
		"ColorCorrections" ppEffectAdjust [
			_oldValues select 0,
			_oldValues select 1,
			_oldValues select 2,
			[
				_oldValues select 3,
				_oldValues select 4,
				_oldValues select 5,
				_oldValues select 6
			],
			[
				_oldValues select 7,
				_oldValues select 8,
				_oldValues select 9,
				_oldValues select 10
			],
			[
				UK111_ColorCorrections_12,
				UK111_ColorCorrections_13,
				UK111_ColorCorrections_14,
				UK111_ColorCorrections_15
			],
			[
				UK111_ColorCorrections_16,
				UK111_ColorCorrections_17,
				UK111_ColorCorrections_18,
				UK111_ColorCorrections_19,
				UK111_ColorCorrections_20,
				UK111_ColorCorrections_21,
				UK111_ColorCorrections_22
			]
		];
		"ColorCorrections" ppEffectCommit 0;
	};
};
hint "";
hintSilent "";
