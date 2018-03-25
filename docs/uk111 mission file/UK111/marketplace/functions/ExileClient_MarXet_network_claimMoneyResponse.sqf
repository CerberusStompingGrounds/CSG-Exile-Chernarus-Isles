private ["_money", "_soldNames", "_configName", "_displayName"];
_money = call compile format["%1",(_this select 0)];
if (_money > 0) then {
	_soldNames = [];
	{
		_configName = _x call ExileClient_util_gear_getConfigNameByClassName;
		_displayName = getText(configFile >> _configName >> _x >> "displayName");
		_soldNames pushBack _displayName;
	} forEach (_this select 1);
	["SuccessTitleAndText",["Marketplace",format["You got %1 pop tabs from sold item(s)",_money]]] call ExileClient_gui_toaster_addTemplateToast;
	uiSleep 5;
	["SuccessTitleAndText",["Marketplace",format["Sold Item(s): %1",_soldNames]]] call ExileClient_gui_toaster_addTemplateToast;
} else {
	["ErrorTitleAndText",["Marketplace","You have no unclaimed money on the market"]] call ExileClient_gui_toaster_addTemplateToast;
};
