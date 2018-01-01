
APP_CODE_ARRAY = [];
_cfgpath = configFile >> "Cfg_infiSTAR_xm8apps";
_configs = "true" configClasses _cfgpath;
{
	_configName = configName _x;
	_configpath = _cfgpath >> _configName;
	_submenu = getNumber(_configpath >> "submenu") isEqualTo 1;
	_toggleable = getNumber(_configpath >> "toggleable") isEqualTo 1;
	_text = getText(_configpath >> "text");
	_tooltip = getText(_configpath >> "tooltip");
	_fnc = getText(_configpath >> "fnc");
	if(!(_text isEqualTo "")&&!(_fnc isEqualTo ""))then
	{
		_pic = getText(_configpath >> "pic");
		APP_CODE_ARRAY pushBackUnique [_submenu,_toggleable,_text,_tooltip,_fnc,_pic];
	};
} forEach _configs;
publicVariable "APP_CODE_ARRAY";



_configs = "true" configClasses (configFile >> "CfgFunctions" >> "apps" >> "core");
_configs append ("true" configClasses (configFile >> "CfgFunctions" >> "apps" >> "apps"));
{
	private _varname = format["apps_fnc_%1",configName _x];
	private _var = missionNameSpace getVariable _varname;
	if(!isNil "_var")then
	{
		publicVariable _varname;
	};
} forEach _configs;


_initAppsOnClient = "
	waitUntil {!isNull findDisplay 46 && !isNil ""ExileClientLoadedIn"" && getPlayerUID player != """"};
	uiSleep 1;
	
	if(isNil""customAppIddArray"")then{customAppIddArray = [];};
	if(isNil""createdCtrls"")then{createdCtrls = [];};
	_code = {
		_display = uiNamespace getVariable [""RscExileXM8"", displayNull];
		if(!isNull _display)then
		{
			_ctrl = _display displayCtrl 4006;
			_ctrl ctrlRemoveAllEventHandlers ""ButtonClick"";
			_ctrl ctrlSetEventHandler [""ButtonClick"",""_this spawn apps_fnc_remove_customappctrls;[""""apps"""", 1] call ExileClient_gui_xm8_slide;[] spawn ExileClient_gui_xm8_togglePower;""];
			
			_ctrl = _display displayCtrl 1117;
			_ctrl ctrlRemoveAllEventHandlers ""ButtonClick"";
			_ctrl ctrlSetEventHandler [""ButtonClick"",""call apps_fnc_add_customappctrls;[""""extraApps"""", 0] call ExileClient_gui_xm8_slide""];
			if(ExileClientXM8CurrentSlide isEqualTo ""extraApps"")then
			{
				if(isNull (_display displayCtrl 9999123))then
				{
					call apps_fnc_add_customappctrls;[""extraApps"", 0] call ExileClient_gui_xm8_slide
				};
			};
		}
		else
		{
			ExileClientXM8CurrentSlide = ""apps"";
		};
		call apps_fnc_showpictures;
	};
	if(!isNil""highjackxm8"")then{[highjackxm8] call ExileClient_system_thread_removeTask;highjackxm8=nil;};
	highjackxm8 = [0.1, _code, [], true] call ExileClient_system_thread_addtask;
";
fnc_initAppsOnClient = compileFinal _initAppsOnClient;
publicVariable "fnc_initAppsOnClient";
"" remoteExec ["fnc_initAppsOnClient",-2,"fnc_initAppsOnClient_JIPID"];
true