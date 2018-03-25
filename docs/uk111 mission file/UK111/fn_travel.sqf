if (!hasInterface || isServer) exitWith {};
private ["_option", "_whereTo", "_travelPoints", "_index", "_whereFrom", "_coords", "_parentdisplay", "_ctrl", "_destination"];
_option = [_this, 0, 0, [0]] call BIS_fnc_param;
_whereTo = [_this, 1, "", [""]] call BIS_fnc_param;
_travelPoints = [];

if (UK111_map isEqualTo 1) then {
	_travelPoints = [
		["Sofia",[25679.5,21377,0]],
		["Kalochori",[21344.7,16375.4,0]],
		["Chalkeia",[20069.2,11675.1,0]],
		["Selakano",[20854,6555.64,0]],
		["Agela",[10115.2,8809.75,0]],
		["Neri",[3833.04,11543.8,0]],
		["Oreokastro",[4586.06,21382.8,0]],
		["Galati",[10284.5,19144.9,0]],
		["Gravia",[14540.7,17555.6,0]],
		["AAC Trader",[11585.1,11878.9,0]]
	];
};
if (UK111_map isEqualTo 2) then {
	_travelPoints = [
		["Kamenka",[993.185,2134.78,0]],
		["Balota",[4551.98,2438.82,0]],
		["Cherno",[6595.19,2899.17,0]],
		["Elektro",[10498.5,2331.5,0]],
		["Kamyshovo",[12024,3481.85,0]],
		["Solnichniy",[13379.7,5449.63,0]],
		["Nizhnoe",[12985.9,8362.22,0]],
		["Berezino",[13112.8,10364.7,0]],
		["Bash Trader",[4018.4233,11678.521,0]],
		["Klen Trader",[11396.401,11368.146,0]],
		["Stary Trader",[6333.8848,7718.626,0]]
	];
};

if (_option isEqualTo 1) exitWith {
	{
		_index = lbAdd [147413, _x select 0];
		lbSetData [147413, _index, _x select 0];
		if ((player distance (_x select 1)) < 100) then { lbSetCurSel [147413, _index]; };
	} forEach _travelPoints;
};

if (_option isEqualTo 2) exitWith {
	if !("ItemCompass" in assignedItems player) exitWith { ["ErrorTitleOnly",["You need a compass in your tool belt to fast travel!"]] call ExileClient_gui_toaster_addTemplateToast; };
	_whereFrom = "";
	_coords = [];
	{
		if ((player distance (_x select 1)) < 100) then { _whereFrom = _x select 0; };
		if (_whereTo isEqualTo (_x select 0)) then { _coords = _x select 1; };
	} forEach _travelPoints;
	player removeWeapon "ItemCompass";
	showCinemaBorder true;
	_camera = "camera" camCreate [position player select 0, position player select 1, 3];
	_camera cameraEffect ["internal","back"];
	_camera camSetFOV 0.700;
	_camera camCommit 0;
	_camera camSetTarget player;
	_camera camSetRelPos [20,20,350];
	_camera camCommit 2;
	uiSleep 2;
	if (!alive player) exitWith {
		_camera cameraEffect ["terminate","back"];
		camDestroy _camera;
	};
	player setPosATL _coords;
	titleText [format["Flying from %1 to %2...",_whereFrom,_whereTo],"PLAIN"];
	playSound "plane";
	_camera camSetTarget player;
	_camera camSetRelPos [-15,-18,250];
	_camera camCommit 5;
	uiSleep 2;
	player switchMove "Acts_abuse_abuser";
	uiSleep 3;
	_camera camSetTarget player;
	_camera camSetRelPos [6,6,3];
	_camera camCommit 2;
	uiSleep 2;
	playSound "crash";
	_camera cameraEffect ["terminate","back"];
	camDestroy _camera;
	{player reveal _x;} forEach (_coords nearObjects 50);
	titleText [format["You have arrived to %1!",_whereTo],"PLAIN"];
	uiSleep 6;
	player switchMove "";
};

if (_option isEqualTo 3) exitWith {
	_index = lbCurSel 147413;
	disableSerialization;
	_parentdisplay = findDisplay 147410;
	_ctrl = _parentdisplay displayCtrl 147415;
	{
		if ((lbData [147413, _index]) isEqualTo (_x select 0)) then {
			_destination = _x select 1;
			_ctrl ctrlMapAnimAdd [1, 0.05, _destination];
			ctrlMapAnimCommit _ctrl;
		};
	} forEach _travelPoints;
};
