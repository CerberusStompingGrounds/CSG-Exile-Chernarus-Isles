private ["_display", "_exileCtrl", "_hungerLabel", "_hungerValue", "_thirstLabel", "_thirstValue", "_healthLabel", "_healthValue", "_environmentTemperatureLabel", "_environmentTemperatureValue", "_bodyTemperatureLabel", "_bodyTemperatureValue"];
disableSerialization;
_display = uiNameSpace getVariable ["RscExileHUD",displayNull];	
_exileCtrl = _display displayCtrl 1300;
_exileCtrl ctrlShow ExAd_SB_EXILE_HUD_ACTIVE;

if (ExAd_SB_EXILE_HUD_ACTIVE) then {
	_hungerLabel = _display displayCtrl 1303;
	_hungerLabel ctrlShow (ExileHudMode isEqualTo 0);
	_hungerValue = _display displayCtrl 1302;
	_hungerValue ctrlShow (ExileHudMode isEqualTo 0);
	_thirstLabel = _display displayCtrl 1305;
	_thirstLabel ctrlShow (ExileHudMode isEqualTo 0); 
	_thirstValue = _display displayCtrl 1304;
	_thirstValue  ctrlShow (ExileHudMode isEqualTo 0);
	_healthLabel = _display displayCtrl 1307;
	_healthLabel ctrlShow (ExileHudMode isEqualTo 1);
	_healthValue = _display displayCtrl 1306;
	_healthValue ctrlShow (ExileHudMode isEqualTo 1);
	_environmentTemperatureLabel = _display displayCtrl 1309;
	_environmentTemperatureLabel ctrlShow (ExileHudMode isEqualTo 2);
	_environmentTemperatureValue = _display displayCtrl 1308;
	_environmentTemperatureValue ctrlShow (ExileHudMode isEqualTo 2);
	_bodyTemperatureLabel = _display displayCtrl 1311;
	_bodyTemperatureLabel ctrlShow (ExileHudMode isEqualTo 2);
	_bodyTemperatureValue = _display displayCtrl 1310;
	_bodyTemperatureValue ctrlShow (ExileHudMode isEqualTo 2);
};

true