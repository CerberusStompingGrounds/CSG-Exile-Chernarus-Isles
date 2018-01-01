/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	
	Copyright infiSTAR - 2011 - 2016. All rights reserved.
	Christian (Chris) L. (infiSTAR23@gmail.com) Developer of infiSTAR
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	
	UPDATEEMAIL for http://update.infiSTAR.de is:
	'cerberusexile.developer@gmail.com'
	
	Last download was on:
	'12-06-2017 00-02-18';
	
	NOTE:
	THIS FILE SHOULD NOT BE TOUCHED UNLESS YOU REALLY KNOW WHAT YOU ARE DOING!
*/















































/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
fnc_CompilableString = {
	_input = _this select 0;
	_output = call {
		if(_input isEqualType {})exitWith{(str(_input)) select [1,((count(str(_input)))-2)]};
		if(_input isEqualType "")exitWith{_input};
		""
	};
	_output
};
fnc_CompilableString = compileFinal ([fnc_CompilableString] call fnc_CompilableString);
publicVariable "fnc_CompilableString";
fn_clean_bad = {
	private _clean = _this;
	_clean = toArray _clean;
	_clean = _clean - [35];
	_clean = toString _clean;
	_clean
};
fn_clean_bad = compileFinal ([fn_clean_bad] call fnc_CompilableString);
IAH_fnc_getIntFromString = {
	params [["_input", "", [""]], ["_pos", 0, [0]]];
	if (_input isEqualTo "") exitWith {-1};
	private _n = (toArray (_input select [_pos, 1])) select 0;
	_n
};
IAH_fnc_getIntFromString = compileFinal ([IAH_fnc_getIntFromString] call fnc_CompilableString);
infiSTAR_DLL_Name = "armalog";
_response = infiSTAR_DLL_Name callExtension ("1baf1f9a48699&l=6a9e805e813a00313157ddb3dd7bd509&sn="+str(toArray serverName));
_armalog = ([_response] call IAH_fnc_getIntFromString isEqualTo 0x01);
_isWindows = (productVersion param [6, "", [""]]) isEqualTo "Windows";
if(_isWindows && !_armalog)exitWith{
	diag_log "<infiSTAR.de> Can not load infiSTAR";
	diag_log "<infiSTAR.de> baf1f9a48699";
	diag_log "<infiSTAR.de> 6a9e805e813a00313157ddb3dd7bd509";
	diag_log format["<infiSTAR.de> %1",serverName];
	diag_log format["<infiSTAR.de> %1",_response select [1]];
};
if(_isWindows && _armalog)then{
	diag_log "<infiSTAR.de> infiSTAR dll loaded successfully";
	diag_log format["<infiSTAR.de> %1",serverName];
	diag_log format["<infiSTAR.de> %1",_response select [1]];
	diag_log "<infiSTAR.de> Loading infiSTAR code..";

	FN_CALL_LOG_DLL = {
		params [["_filename", "LOG", [""]], ["_logentry", "", [""]]];
		_filename = format["A3_%1_%2_%3", briefingName select [0,10], worldName select [0,10], _filename];
		infiSTAR_DLL_Name callExtension format["2%1|%2", _filename, _logentry];
	};
	FN_CALL_LOG_DLL = compileFinal ([FN_CALL_LOG_DLL] call fnc_CompilableString);

	FN_ARMA_FETCHDATA = {
		params [["_url", "", [""]]];
		_url = _url call fn_clean_bad;
		if (_url isEqualTo "") exitWith {""};
		private _response = infiSTAR_DLL_Name callExtension format["3%1", _url];
		if !(([_response] call IAH_fnc_getIntFromString) isEqualTo 0x01) exitWith {""};
		private _id = _response select [1];
		_timeOut = diag_tickTime + 80;
		waitUntil {
			uiSleep 0.2;
			_response = infiSTAR_DLL_Name callExtension format["4%1", _id];
			!(([_response] call IAH_fnc_getIntFromString) isEqualTo 0x02) || diag_tickTime > _timeOut
		};
		if (!(([_response] call IAH_fnc_getIntFromString) isEqualTo 0x01) || (diag_tickTime > _timeOut)) exitWith {""};
		private _parts = [_response, 1] call IAH_fnc_getIntFromString;
		if (_parts == 1) exitWith {_response select [2]};
		private _output = _response select [2];
		for "_i" from 1 to _parts - 1 do {
			_response = infiSTAR_DLL_Name callExtension format["4%1|%2", _id, _i];
			_output = _output + (_response select [2]);
		};
		_output
	};
	FN_ARMA_FETCHDATA = compileFinal ([FN_ARMA_FETCHDATA] call fnc_CompilableString);

	FN_ARMA_FIREANDFORGET = {
		params [["_url", "", [""]]];
		_url = _url call fn_clean_bad;
		if (_url isEqualTo "") exitWith {""};
		infiSTAR_DLL_Name callExtension format["3%1", _url]
	};
	FN_ARMA_FIREANDFORGET = compileFinal ([FN_ARMA_FIREANDFORGET] call fnc_CompilableString);

	FN_ARMA_REMOTELOG = {
		params [["_url", "", [""]]];
		_url = _url call fn_clean_bad;
		if (_url isEqualTo "") exitWith {""};
		infiSTAR_DLL_Name callExtension format["7rl_exile.php?%1", _url]
	};
	FN_ARMA_REMOTELOG = compileFinal ([FN_ARMA_REMOTELOG] call fnc_CompilableString);
}
else
{
	FN_CALL_LOG_DLL = {};
	FN_ARMA_FETCHDATA = {};
	FN_ARMA_FIREANDFORGET = {};
	FN_ARMA_REMOTELOG = {};
};
FN_CALL_ExtDB = if (("extDB3" callExtension "9:VERSION") != "") then {{"extDB3" callExtension _this}} else {{"extDB2" callExtension _this}};
/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
/* FIX PROBLEMS IN ARMA / OTHER ADDONS */
cba_common_setVehVarName = compileFinal "diag_log 'blocked RE exploit';";
/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
/* START INFISTAR */
if(!isNil "infiSTAR_IS_RUN_ON_THIS_SERVER")exitWith{diag_log format["<infiSTAR.de> %1 - is already started %1 seconds ago..",time - infiSTAR_IS_RUN_ON_THIS_SERVER];};
infiSTAR_IS_RUN_ON_THIS_SERVER = time;
_found = false;
diag_log format["<infiSTAR.de> %1 - checking for EXILE_SERVER..",time];
_cfgPatches = configFile >> "CfgPatches";
for "_i" from 0 to (count _cfgPatches - 1) do
{
	_patchClass = _cfgPatches select _i;
	if(toLower(configName _patchClass) isEqualTo "exile_server")exitWith
	{
		_found = true;
	};
};
if(!_found)exitWith
{
	for "_i" from 0 to 10 do
	{
		diag_log format["<infiSTAR.de> %1 - Could not find EXILE_SERVER, infiSTAR will not start!",time];
	};
};
diag_log format["<infiSTAR.de> %1 - EXILE_SERVER has been found.",time];
_found = false;
diag_log format["<infiSTAR.de> %1 - checking for Cfg_infiSTAR_settings..",time];
_configFile = configFile;
for "_i" from 0 to (count _configFile - 1) do
{
	_patchClass = _configFile select _i;
	if(configName _patchClass == "Cfg_infiSTAR_settings")exitWith
	{
		_found = true;
	};
};
if(!_found)exitWith
{
	for "_i" from 0 to 10 do
	{
		diag_log format["<infiSTAR.de> %1 - Could not find Cfg_infiSTAR_settings, infiSTAR will not start!",time];
	};
};
diag_log format["<infiSTAR.de> %1 - Cfg_infiSTAR_settings has been found.",time];
fnc_infiSTAR_cfg = compileFinal "
params['_inputclassname','_default'];
if(isNil'_inputclassname')exitWith{diag_log format['fnc_infiSTAR_cfg ERROR 1: %1',_this];};
if(isNil'_default')exitWith{diag_log format['fnc_infiSTAR_cfg ERROR 2: %1',_this];};

private '_path';
if(_inputclassname isEqualType '')then
{
	_path = configfile >> 'Cfg_infiSTAR_settings' >> _inputclassname;
}
else
{
	_path = configfile >> 'Cfg_infiSTAR_settings' >> _inputclassname select 0 >> _inputclassname select 1;
};
if(isNil'_path')exitWith{diag_log format['fnc_infiSTAR_cfg ERROR 3: %1',_this];};

call {
	if(_default isEqualType 0)exitWith{getNumber _path};
	if(_default isEqualType [])exitWith{getArray _path};

	_txt = getText _path;
	_default = _txt;

	if((toLower _txt) isEqualTo 'true')then{_default = true};
	if((toLower _txt) isEqualTo 'false')then{_default = false};
	_default
}
";
_devs = ['76561198152111329','76561198155552440'];	/* infiSTAR UID */
_admins = [];
_serverCommandPassword = ["serverCommandPassword","changeme"] call fnc_infiSTAR_cfg;
_passwordAdmin = ["passwordAdmin","changeme"] call fnc_infiSTAR_cfg;
_OPEN_ADMIN_MENU_KEY = ["OPEN_ADMIN_MENU_KEY",0x3B] call fnc_infiSTAR_cfg;
_HIDE_FROM_PLAYERS = ["HIDE_FROM_PLAYERS",false] call fnc_infiSTAR_cfg;
_announce_adminstate_changed = ["announce_adminstate_changed",false] call fnc_infiSTAR_cfg;
_use_html_load_on_adminmenu = ["use_html_load_on_adminmenu",true] call fnc_infiSTAR_cfg;
_LogAdminActions = ["LogAdminActions",true] call fnc_infiSTAR_cfg;
_enableIngameLogs = ["enableIngameLogs",true] call fnc_infiSTAR_cfg;
_needAdminNameTag = ["needAdminNameTag",false] call fnc_infiSTAR_cfg;
_AdminNameTag = ["AdminNameTag","[Admin]"] call fnc_infiSTAR_cfg;

_ENABLE_NOTIFICATION_MESSAGES = ["ENABLE_NOTIFICATION_MESSAGES",true] call fnc_infiSTAR_cfg;
if(_ENABLE_NOTIFICATION_MESSAGES)then{
	NOTIFY_MSG_ARRAY = ["NOTIFY_MSG_ARRAY",[]] call fnc_infiSTAR_cfg;
	{
		_x set [0,(_x select 0)*60];
		_x set [1,(_x select 1)*60];
		NOTIFY_MSG_ARRAY set [_forEachIndex,_x];
	} forEach NOTIFY_MSG_ARRAY;
	publicVariable "NOTIFY_MSG_ARRAY";
};

_fn_backslash = {
	_txta = toArray _this;
	_ntxta = [];
	{
		if(_x isEqualTo 39)then{ _ntxta pushBack _x; };
		_ntxta pushBack _x;
	} forEach _txta;
	toString _ntxta
};

_chatCommands = ["chatCommands",[]] call fnc_infiSTAR_cfg;
_chatCommandsL = [];
{
	_x params ['_cmd','_color','_size','_font','_txt'];
	_cmd = toLower _cmd;
	_txt = _txt call _fn_backslash;
	_chatCommandsL pushBackUnique [_cmd,_color,_size,_font,_txt];
} forEach _chatCommands;

_chatCommandsP = ["chatCommandsP",[]] call fnc_infiSTAR_cfg;
_chatCommandsPL = [];
{
	_x params ['_cmd','_color','_size','_font','_txt'];
	_cmd = toLower _cmd;
	_txt = _txt call _fn_backslash;
	_chatCommandsPL pushBackUnique [_cmd,_color,_size,_font,_txt];
} forEach _chatCommandsP;


_pathToCustomBillBoardTextures = ["pathToCustomBillBoardTextures",[]] call fnc_infiSTAR_cfg;
_startAsNormal = ["startAsNormal",[]] call fnc_infiSTAR_cfg;
_hiddenSuperAdmin = ["hiddenSuperAdmin",[]] call fnc_infiSTAR_cfg;
_adminUIDandAccess = ["adminUIDandAccess",[]] call fnc_infiSTAR_cfg;

/****************************************************************************************************/
_USE_DATABASE_WHITELIST = [["customDatabaseQueries","USE_DATABASE_WHITELIST"],false] call fnc_infiSTAR_cfg;
_USE_LOG_TO_DATABASE = [["customDatabaseQueries","USE_LOG_TO_DATABASE"],false] call fnc_infiSTAR_cfg;
_USE_GET_TOTAL_CONNECTIONS = [["customDatabaseQueries","USE_GET_TOTAL_CONNECTIONS"],false] call fnc_infiSTAR_cfg;
_USE_ANNOUNCE_NEW_PLAYER = [["customDatabaseQueries","USE_ANNOUNCE_NEW_PLAYER"],false] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_WRITE_LOG_FILES = ["WRITE_LOG_FILES",false] call fnc_infiSTAR_cfg;

_UID_SKIP_GLOBAL_BAN_CHECK = ["UID_SKIP_GLOBAL_BAN_CHECK",[]] call fnc_infiSTAR_cfg;
if(isNil '_UID_SKIP_GLOBAL_BAN_CHECK')exitWith{ diag_log '<infiSTAR.de> ERROR: UID_SKIP_GLOBAL_BAN_CHECK broken'; };
if!(_UID_SKIP_GLOBAL_BAN_CHECK isEqualType [])exitWith{ diag_log '<infiSTAR.de> ERROR: UID_SKIP_GLOBAL_BAN_CHECK not an array'; };

_USE_UID_WHITELIST = ["USE_UID_WHITELIST",false] call fnc_infiSTAR_cfg;
_UID_WHITELIST = ["UID_WHITELIST",[]] call fnc_infiSTAR_cfg;


_ExileDevFriendlyMode = ["ExileDevFriendlyMode",false] call fnc_infiSTAR_cfg;
_ESCMNUTOP = ["ESCMNUTOP","AntiHack & AdminTools"] call fnc_infiSTAR_cfg;
_ESCMNUBOT = ["ESCMNUBOT","by infiSTAR.de"] call fnc_infiSTAR_cfg;
_BRIEFING_MSG = ["BRIEFING_MSG",false] call fnc_infiSTAR_cfg;
_HTML_LOAD_URL = ["HTML_LOAD_URL",""] call fnc_infiSTAR_cfg;
_ENABLE_PRIVATE_CHAT_MENU = ["ENABLE_PRIVATE_CHAT_MENU",false] call fnc_infiSTAR_cfg;
_PRIVATE_CHAT_MENU_8GNETWORK = ["PRIVATE_CHAT_MENU_8GNETWORK",false] call fnc_infiSTAR_cfg;

/****************************************************************************************************/
_USE_RESTART_TIMER = [["infiSTAR_RESTART_SYSTEM","enableSystem"],true] call fnc_infiSTAR_cfg;
_USE_RESTART_TIME_IN_M = [["infiSTAR_RESTART_SYSTEM","USE_RESTART_TIME_IN_M"],true] call fnc_infiSTAR_cfg;
_RESTART_TIME_IN_M = [["infiSTAR_RESTART_SYSTEM","RESTART_TIME_IN_M"],180] call fnc_infiSTAR_cfg;
_TIME_FUNCTION_USED = [["infiSTAR_RESTART_SYSTEM","TIME_FUNCTION_USED"],"diag_tickTime"] call fnc_infiSTAR_cfg;

_USE_RESTART_TIMES = [["infiSTAR_RESTART_SYSTEM","USE_RESTART_FIXED_TIME_ARRAY"],true] call fnc_infiSTAR_cfg;
_RESTART_TIMES_tmp = [["infiSTAR_RESTART_SYSTEM","RESTART_TIMES"],[[00,00],[06,00],[12,00],[18,00]]] call fnc_infiSTAR_cfg;
_RESTART_TIMES = [];{_x params ["_sHour","_sMin"];_sHour = if(_sHour > 0)then{_sHour * 60}else{24 * 60};_RESTART_TIMES pushBackUnique (_sHour + _sMin);} forEach _RESTART_TIMES_tmp;

_USE_SHUTDOWN = [["infiSTAR_RESTART_SYSTEM","USE_SHUTDOWN"],true] call fnc_infiSTAR_cfg;
_SERVER_END_FUNCTION = [["infiSTAR_RESTART_SYSTEM","SERVER_END_FUNCTION"],"#shutdown"] call fnc_infiSTAR_cfg;
_RESTART_WARNING_SOUND = [["infiSTAR_RESTART_SYSTEM","RESTART_WARNING_SOUND"],"Alarm"] call fnc_infiSTAR_cfg;
_LOCK_MIN_BEFORE_SHUTDOWN = [["infiSTAR_RESTART_SYSTEM","LOCK_MIN_BEFORE_SHUTDOWN"],5] call fnc_infiSTAR_cfg;
_LOCK_SECONDS_BEFORE_SHUTDOWN = _LOCK_MIN_BEFORE_SHUTDOWN * 60;
_RESTART_IN_X_ARRAY = [["infiSTAR_RESTART_SYSTEM","RESTART_IN_X_ARRAY"],[]] call fnc_infiSTAR_cfg;
/****************************************************************************************************/



_DayNightVote = ["DayNightVote",true] call fnc_infiSTAR_cfg;
_MRV = ["MRV",0.3] call fnc_infiSTAR_cfg;
_MVP = ["MVP",0.51] call fnc_infiSTAR_cfg;
_VCT = ["VCT",900] call fnc_infiSTAR_cfg;

_allowPee = ["allowPee",true] call fnc_infiSTAR_cfg;
_enableJump = ["enableJump",true] call fnc_infiSTAR_cfg;

_TGV = ["TGV",40] call fnc_infiSTAR_cfg;
_VDV = ["VDV",900] call fnc_infiSTAR_cfg;
_VOV = ["VOV",750] call fnc_infiSTAR_cfg;
_SVD = ["SVD",100] call fnc_infiSTAR_cfg;

_fix_uniform_and_vest = ["fix_uniform_and_vest",false] call fnc_infiSTAR_cfg;
_experimental_dupe_check = ["experimental_dupe_check",false] call fnc_infiSTAR_cfg;_experimental_dupe_check = true;
_stopSafeGlitchAndCorpseDupe = ["stopSafeGlitchAndCorpseDupe",false] call fnc_infiSTAR_cfg;
_disconnect_dupe_check = ["disconnect_dupe_check",false] call fnc_infiSTAR_cfg;
_fix_trader_dupe = ["fix_trader_dupe",false] call fnc_infiSTAR_cfg;
_fix_wastedump_dupe = ["fix_wastedump_dupe",false] call fnc_infiSTAR_cfg;
_fix_takeall_dupe = ["fix_takeall_dupe",false] call fnc_infiSTAR_cfg;

_block_glitch_actions = ["block_glitch_actions",false] call fnc_infiSTAR_cfg;
_wall_glitch_object = ["wall_glitch_object",false] call fnc_infiSTAR_cfg;
_wall_glitch_revert = ["wall_glitch_revert",false] call fnc_infiSTAR_cfg;
_wall_glitch_punish = ["wall_glitch_punish",1] call fnc_infiSTAR_cfg;
_wall_glitch_vehicle = ["wall_glitch_vehicle",false] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_infiSTAR_handleDamage = [["infiSTAR_handleDamage","enable"],true] call fnc_infiSTAR_cfg;
_PvP_ReflectDamage = [["infiSTAR_handleDamage","PvP_ReflectDamage"],true] call fnc_infiSTAR_cfg;
_PvP_BlockDamage = [["infiSTAR_handleDamage","PvP_BlockDamage"],true] call fnc_infiSTAR_cfg;
_PvP_useZones = [["infiSTAR_handleDamage","PvP_useZones"],true] call fnc_infiSTAR_cfg;
if(!_PvP_ReflectDamage && !_PvP_BlockDamage)then{_PvP_useZones = false;};
_PvP_zones = (getArray(configfile >> "Cfg_infiSTAR_settings" >> "infiSTAR_handleDamage" >> "zones"));
_BlockNullSource = [["infiSTAR_handleDamage","BlockNullSource"],true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_BadActionCheck = ["BadActionCheck",true] call fnc_infiSTAR_cfg;
_allowedActionsTMP = ["allowedActions",[]] call fnc_infiSTAR_cfg;
_allowedActions = [];
{
	_action = toLower _x;
	_allowedActions pushBackUnique _action;
	_allowedActions pushBackUnique ('<t>'+_action);
	_allowedActions pushBackUnique ('<t>'+_action+'</t>');
} forEach _allowedActionsTMP;
_cfgInteractionMenus = 'true' configClasses (missionConfigfile >> 'CfgInteractionMenus');
{
	_cfgName = configName _x;
	_subclassActions = 'true' configClasses (missionConfigfile >> 'CfgInteractionMenus' >> _cfgName >> 'Actions');
	{
		_cfgNameSub = configName _x;
		_title = getText(missionConfigfile >> 'CfgInteractionMenus' >> _cfgName >> 'Actions' >> _cfgNameSub >> 'title');
		if(_cfgName isEqualTo 'Player')then{ _allowedActions pushBackUnique _title; };
	} forEach _subclassActions;
} forEach _cfgInteractionMenus;
_allowedActionsPartialTMP = ["allowedActionsPartial",[]] call fnc_infiSTAR_cfg;
_allowedActionsPartial = [];
{
	_allowedActionsPartial pushBackUnique (toLower _x);
} forEach _allowedActionsPartialTMP;
_BadActionContentCheck = ["BadActionContentCheck",true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/


_KCM = ["KCM",true] call fnc_infiSTAR_cfg;
_CMC = ["CMC",true] call fnc_infiSTAR_cfg;
_allowedCommandingMenus = ["allowedCommandingMenus",[]] call fnc_infiSTAR_cfg;
_allowedCommandingMenus = _allowedCommandingMenus - ["#user:example"];
_allowedCommandingMenus = _allowedCommandingMenus - ["#user:example2"];

_task_force_radio = ["task_force_radio",true] call fnc_infiSTAR_cfg;
_reset_inGameUIEventHandler = ["reset_inGameUIEventHandler",true] call fnc_infiSTAR_cfg;
_checkFilePatchingEnabled = ["checkFilePatchingEnabled",true] call fnc_infiSTAR_cfg;
_checkCfgPatches = ["checkCfgPatches",true] call fnc_infiSTAR_cfg;
_check_Notifications = ["check_Notifications",false] call fnc_infiSTAR_cfg;
_check_doors_n_gates = ["check_doors_n_gates",false] call fnc_infiSTAR_cfg;

_attach_to_check = ["attach_to_check",false] call fnc_infiSTAR_cfg;
_slingload_check = ["slingload_check",false] call fnc_infiSTAR_cfg;
_checkPopTabIncrease = ["checkPopTabIncrease",false] call fnc_infiSTAR_cfg;
_LogPopTabIncrease = ["LogPopTabIncrease",15000] call fnc_infiSTAR_cfg;
_BanPopTabIncrease = ["BanPopTabIncrease",250000] call fnc_infiSTAR_cfg;
_checkRespectIncrease = ["checkRespectIncrease",false] call fnc_infiSTAR_cfg;
_LogRespectIncrease = ["LogRespectIncrease",5000] call fnc_infiSTAR_cfg;
_BanRespectIncrease = ["BanRespectIncrease",25000] call fnc_infiSTAR_cfg;
_CMM = ["CMM",true] call fnc_infiSTAR_cfg;
_maxMapMenuEntries = ["maxMapMenuEntries",6] call fnc_infiSTAR_cfg;
_check_steam_ban = ["check_steam_ban",false] call fnc_infiSTAR_cfg;
_ban_for_steam_ban = ["ban_for_steam_ban",false] call fnc_infiSTAR_cfg;

_MPH = ["MPH",false] call fnc_infiSTAR_cfg;
_GodModeCheck = ["GodModeCheck",false] call fnc_infiSTAR_cfg;

_UAT = ["UAT",true] call fnc_infiSTAR_cfg;
_allowTPcfg = (getArray(configfile >> "Cfg_infiSTAR_settings" >> "allowTP" >> "custom"));


_CHECK_DRAWING = ["CHECK_DRAWING",false] call fnc_infiSTAR_cfg;
_CLM = ["CLM",false] call fnc_infiSTAR_cfg;
_UMW = ["UMW",false] call fnc_infiSTAR_cfg;
_aLocalM = ["aLocalM",[]] call fnc_infiSTAR_cfg;
_badkickChat = ["badkickChat",[]] call fnc_infiSTAR_cfg;
_badbanChat = ["badbanChat",[]] call fnc_infiSTAR_cfg;
_badNamesFull = ["badNamesFull",[]] call fnc_infiSTAR_cfg;
_badNamesPartial = ["badNamesPartial",[]] call fnc_infiSTAR_cfg;
_badGroupNames = ["badGroupNames",[]] call fnc_infiSTAR_cfg;

_disAllowVon = ["disAllowVon",[]] call fnc_infiSTAR_cfg;
_disAllowVon = _disAllowVon - [5];

_badIDDsToKick = ["badIDDsToKick",[]] call fnc_infiSTAR_cfg;
_badIDDsToClose = ["badIDDsToClose",[]] call fnc_infiSTAR_cfg;
_UDW = ["UDW",true] call fnc_infiSTAR_cfg;
_allowedIDDs = ["allowedIDDs",[]] call fnc_infiSTAR_cfg;

_variableTypeChecks = ["variableTypeChecks",[]] call fnc_infiSTAR_cfg;

_useBlacklistedVariableCheck = ["useBlacklistedVariableCheck",false] call fnc_infiSTAR_cfg;
_blacklistedVariables = [];
if(_useBlacklistedVariableCheck)then{_blacklistedVariables = ["blacklistedVariables",[]] call fnc_infiSTAR_cfg;};
_useObjectVariableCheck = ["useObjectVariableCheck",false] call fnc_infiSTAR_cfg;


_UVC = ["UVC",true] call fnc_infiSTAR_cfg;
_UVC_adminspawn = ["UVC_adminspawn",true] call fnc_infiSTAR_cfg;
_VehicleWhiteList_check = ["VehicleWhiteList_check",true] call fnc_infiSTAR_cfg;
_VehicleWhiteList = ["VehicleWhiteList",[]] call fnc_infiSTAR_cfg;
_ForbiddenVehicles_check = ["ForbiddenVehicles_check",true] call fnc_infiSTAR_cfg;
_ForbiddenVehicles = ["ForbiddenVehicles",[]] call fnc_infiSTAR_cfg;
_LocalWhitelist = ["LocalWhitelist",[]] call fnc_infiSTAR_cfg;


_UFI = ["UFI",false] call fnc_infiSTAR_cfg;
_UIW = ["UIW",false] call fnc_infiSTAR_cfg;
_ItemWhiteList = ["ItemWhiteList",[]] call fnc_infiSTAR_cfg;
_ForbiddenItems = ["ForbiddenItems",[]] call fnc_infiSTAR_cfg;
_allSupportBoxes = ["allSupportBoxes",[]] call fnc_infiSTAR_cfg;
_allSupportBoxesNames = [];
{
	if!(_x isEqualTo [])then
	{
		_allSupportBoxesNames pushBack (_x select 0);
	};
} forEach _allSupportBoxes;
if(!_ExileDevFriendlyMode)then{_ExileDevFriendlyMode = getNumber(configFile >> "CfgSettings" >> "ServerSettings" >> "devFriendyMode") isEqualTo 1;};
if(_ExileDevFriendlyMode)then
{
	_devs pushBackUnique "76561198022879703"; /* Grim */
};
{if(count _x > 5)then{_devs pushBackUnique _x;};} forEach _hiddenSuperAdmin;
{if(count _x > 5)then{_admins pushBackUnique _x;};} forEach _devs;








/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
FN_GET_TIME_TIME = compileFinal "
	_hours = floor(_this / 60 / 60);
	_minutes = floor((((_this / 60 / 60) - _hours) max 0.0001)*60);
	_seconds = _this - (_hours*60*60) - (_minutes * 60);
	format['%1h %2min %3s',_hours,_minutes,round _seconds]
";
publicVariable "FN_GET_TIME_TIME";
/****************************************************************************************************/
fnc_get_local_servertime = compileFinal "
	(call compile ('9:LOCAL_TIME' call FN_CALL_ExtDB)) params [['_something',''],['_serverStartTime','']];
	if(isNil'_serverStartTime')then{[]}else{_serverStartTime}
";
serverStartTime = call fnc_get_local_servertime;
/****************************************************************************************************/
fnc_get_exileObjName = compileFinal "if(alive _this)then{_n = name _this;_this setVariable['ExileName',_n];_n}else{_n = _this getVariable['ExileName',''];if(_n isEqualTo '')then{if!(getPlayerUID _this isEqualTo '')then{_n = name _this;_this setVariable['ExileName',_n];};};_n}";
publicVariable "fnc_get_exileObjName";
/****************************************************************************************************/
if(_fix_uniform_and_vest)then{
	fnc_check_uniform_n_vest = compileFinal "
		if(remoteExecutedOwner > 2)exitWith{true};
		if(isNil 'ExileClientLoadedIn')exitWith{};
		params ['_uniform', '_vest'];
		_myuniform = uniform player;
		if!(_myuniform isEqualTo '')then
		{
			if!(_myuniform isEqualTo _uniform)then
			{
				_uniformContent = (uniformContainer player) call ExileClient_util_containerCargo_serialize;
				uiSleep 0.1;
				removeUniform player;
				player forceAddUniform _myuniform;
				uiSleep 0.1;
				[(uniformContainer player), _uniformContent] call ExileClient_util_containerCargo_deserialize;
				systemChat '<infiSTAR.de> just replaced your UNIFORM as it was not shown for other players #ARMABUGS';
			};
		};
		_myvest = vest player;
		if!(_myvest isEqualTo '')then
		{
			if!(_myvest isEqualTo _vest)then
			{
				_vestContent = (vestContainer player) call ExileClient_util_containerCargo_serialize;
				uiSleep 0.1;
				removeVest player;
				player addVest _myvest;
				uiSleep 0.1;
				[(vestContainer player), _vestContent] call ExileClient_util_containerCargo_deserialize;
				systemChat '<infiSTAR.de> just replaced your VEST as it was not shown for other players #ARMABUGS';
			};
		};
	";
	publicVariable "fnc_check_uniform_n_vest";
};
/****************************************************************************************************/
fn_onPlayerTake = compileFinal "
	if(!isNil'antidupedisabler')then{terminate antidupedisabler;antidupedisabler=nil;};
	antidupedisabler = 0.1 spawn {
		disableSerialization;
		_timer = diag_tickTime + _this;
		while{(!isNull (findDisplay 602))}do
		{
			_ctrl = ((findDisplay 602) displayCtrl 632);
			_ctrl ctrlEnable false;
			
			_size = lbSize _ctrl;
			if(_size > 0)then
			{
				for '_i' from 0 to _size do
				{
					_ctrl lbSetColor [_i, [1,0,0,1]];
				};
			};
			if(diag_tickTime > _timer)exitWith
			{
				((findDisplay 602) displayCtrl 632) ctrlEnable true;
				
				if(_size > 0)then
				{
					for '_i' from 0 to _size do
					{
						_ctrl lbSetColor [_i, [1,1,1,1]];
					};
				};
			};
		};
	};
	_this call ExileClient_object_player_event_onTake
";
publicVariable "fn_onPlayerTake";
/****************************************************************************************************/
fn_onInventoryOpened = "
	_container = _this param [1, objNull, [objNull]];
	_secondaryContainer = _this param [2, objNull, [objNull]];
	if(!simulationEnabled _container)then{ _container enableSimulationGlobal true; };
	if(!simulationEnabled _secondaryContainer)then{ _secondaryContainer enableSimulationGlobal true; };
";
if(_stopSafeGlitchAndCorpseDupe)then{
	fn_onInventoryOpened = fn_onInventoryOpened + "
		if(
			(locked _container isEqualTo 2)||(_container getVariable ['ExileIsLocked', 1] isEqualTo -1)||
			(locked _secondaryContainer isEqualTo 2)||(_secondaryContainer getVariable ['ExileIsLocked', 1] isEqualTo -1)
		)then{
			if(!isNil'checkGearDisplayThread')then{terminate checkGearDisplayThread;checkGearDisplayThread=nil;};
			checkGearDisplayThread = [] spawn {
				disableSerialization;
				_fn_hide_cargo = {
					((findDisplay 602) displayCtrl 6401) ctrlEnable false;
					ctrlSetFocus ((findDisplay 602) displayCtrl 6321);
					ctrlActivate ((findDisplay 602) displayCtrl 6321);
				};
				waitUntil {call _fn_hide_cargo;!isNull findDisplay 602};
				waitUntil {call _fn_hide_cargo;isNull findDisplay 602};
			};
		};
	";
};
fn_onInventoryOpened = fn_onInventoryOpened + "
	_this call ExileClient_object_player_event_onInventoryOpened
";
fn_onInventoryOpened = compileFinal fn_onInventoryOpened;
publicVariable "fn_onInventoryOpened";
/****************************************************************************************************/
fn_infiSTAR_CustomHint = compileFinal "
	ctrlDelete ((findDisplay 46) displayCtrl 3307222);
	(findDisplay 46) ctrlCreate ['RscStructuredText', 3307222];
	((findDisplay 46) displayCtrl 3307222) ctrlSetPosition [safezoneX + (safeZoneW / 2) - ((safeZoneW / 3.7)/2),safeZoneY + 0.02,(safeZoneW / 3.7),0.05];
	((findDisplay 46) displayCtrl 3307222) ctrlCommit 0;
	((findDisplay 46) displayCtrl 3307222) ctrlSetStructuredText parseText _this;
";
publicVariable "fn_infiSTAR_CustomHint";
fn_infiSTAR_EndCustomHint = compileFinal "
	ctrlDelete ((findDisplay 46) displayCtrl 3307222);
";
publicVariable "fn_infiSTAR_EndCustomHint";
fnc_infiSTAR_setUncon = compileFinal "
	params[['_obj',objNull,[objNull]],['_time',0,[0]]];
	_uncon_thread = _obj getVariable 'uncon_thread';
	if(!isNil'_uncon_thread')then{terminate _uncon_thread;call fn_infiSTAR_EndCustomHint;};
	_uncon_thread = _this spawn {
		params[['_obj',objNull,[objNull]],['_time',0,[0]]];
		_timer = diag_tickTime + _time;
		waitUntil {
			if(!isNull objectParent _obj)then{_obj action ['eject', (vehicle _obj)];};
			_obj setUnconscious true;
			format['<t size=''1.5'' font=''OrbitronLight'' color=''#F01154''>Knocked out for %1 more seconds..</t>',round(_timer - diag_tickTime)] call fn_infiSTAR_CustomHint;
			diag_tickTime > _timer || !alive _obj
		};
		call fn_infiSTAR_EndCustomHint;
		if(!isNull _obj)then
		{
			_obj setUnconscious false;
			_obj switchMove '';
			_obj setVariable ['uncon_thread',nil];
		};
	};
	_obj setVariable ['uncon_thread',_uncon_thread];
";
publicVariable "fnc_infiSTAR_setUncon";
/****************************************************************************************************/
fnc_infiSTAR_fired = "
	params[['_unit',objNull],['_weapon',''],['_muzzle',''],['_mode',''],['_ammo',''],['_magazine',''],['_projectile',objNull]];
	if(local _projectile)then
	{
		_speed = speed _projectile;
		if(_speed > 425)then
		{
			if(_unit isEqualTo (vehicle _unit))then
			{
				_maxAmmo = getNumber (configfile >> 'CfgMagazines' >> _magazine >> 'count');
				if(_maxAmmo > 1)then
				{
					_this spawn {
						params[['_unit',objNull],['_weapon',''],['_muzzle',''],['_mode',''],['_ammo',''],['_magazine',''],['_projectile',objNull]];
						uiSleep 0.4;
						if(currentMuzzle _unit isEqualTo _weapon)then
						{
							_maxAmmo = getNumber (configfile >> 'CfgMagazines' >> _magazine >> 'count');
							_camm = _unit ammo _muzzle;
							if(_camm >= _maxAmmo)then
							{
								_unit removeMagazines _magazine;
								_unit removeItem _muzzle;
								_unit removeWeapon _muzzle;
							};
						};
					};
				};
			};
		};
	}else{
		deleteVehicle _projectile;
	};
	_this call ExileClient_object_player_event_onFired
";
fnc_infiSTAR_fired = compileFinal fnc_infiSTAR_fired;
publicVariable "fnc_infiSTAR_fired";
/****************************************************************************************************/
if(_infiSTAR_handleDamage)then{
fnc_infiSTAR_handleDamage = "
	params[['_unit',objNull],['_selectionName',''],['_damage',0],['_source',objNull],['_projectile',''],['_hitPartIndex',-1],['_instigator',objNull]];
	if(ExilePlayerInSafezone)then
	{
		_damage = 0;
	} else {
";
if(_PvP_useZones)then{
	fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		_fn_inPvPZone = {
			_inZone = false;
			{
				_x params[['_pos',[0,0,0]],['_radius',250]];
				if(player distance2D _pos < _radius)exitWith{_inZone = true;};
			} forEach "+str _PvP_zones+";
			_inZone
		};
		if(call _fn_inPvPZone)then{
	";
};
if(_PvP_ReflectDamage)then{
	fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		if(isPlayer _instigator && !(_instigator isEqualTo _unit))then{
			_instigator setDamage ((damage _instigator) + _damage);
		}else{
			if(isPlayer _source && !(_source isEqualTo _unit))then{ _source setDamage ((damage _source) + _damage); };
		};
	";
};
if(_PvP_BlockDamage)then{
	fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		if((isPlayer _instigator || isPlayer _source) && !(_source isEqualTo _unit))then{_damage = 0;};
	";
};
if(_PvP_useZones)then{
	fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "};";
};
if(_BlockNullSource)then{
	fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		if(isNull _source)then{0}else{_damage};
	";
};
fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		if(alive _source)then{
			if(!isNull _instigator)then{
				if!((vehicle _source) isEqualTo (vehicle _instigator))then{
					_damage = 0;
					(vehicle _instigator) setDamage 1;
					_instigator setDamage 1;
				};
			};
		};
	};
	_damage
";
fnc_infiSTAR_handleDamage = compileFinal fnc_infiSTAR_handleDamage;
publicVariable "fnc_infiSTAR_handleDamage";
};
/****************************************************************************************************/
fn_infiSTAR_revive = compileFinal "
_target = objectFromnetId _this;
if(isNull _target)exitWith{};

_targetID = owner _target;
if(_targetID < 3)exitWith{};

_playerUID = getPlayerUID _target;
if(_playerUID isEqualTo '')exitWith{
	[
		'<infiSTAR.de> REVIVE ERROR: Target already respawned..!',
		{systemChat _this},
		_clientID,
		false
	] call FN_infiSTAR_S;
};

_revive = _target getVariable ['revive',-1];
if!(_revive isEqualTo -1)exitWith{
	[
		format['<infiSTAR.de> REVIVE ERROR: Target %1 already getting revived %2 seconds ago..!',_target,time - _revive],
		{systemChat _this},
		_clientID,
		false
	] call FN_infiSTAR_S;
};
_target setVariable ['revive','1'];

_pos = _target modelToWorld [0,0,0];
_direction = getDir _target;
_name = _target call fnc_get_exileObjName;

_newUnit = (createGroup independent) createUnit ['Exile_Unit_Player', [0,0,0], [], 0, 'CAN_COLLIDE'];
removeHeadgear _newUnit;

_ExileScore = _target getVariable ['ExileScore',0];
_ExileKills = _target getVariable ['ExileKills',0];
_ExileDeaths = _target getVariable ['ExileDeaths',0];
_clanID = _target getVariable ['ExileClanID',-1];
_ExileLocker = _target getVariable ['ExileLocker',0];
_clanData = _target getVariable ['ExileClanData',[]];
_ExileIsBambi = _target getVariable ['ExileIsBambi',false];
_ExileSessionID = _target getVariable ['ExileSessionID', -1];

_newUnit disableAI 'FSM';
_newUnit disableAI 'MOVE';
_newUnit disableAI 'AUTOTARGET';
_newUnit disableAI 'TARGET';
_newUnit disableAI 'CHECKVISIBLE';
_newUnit setName _name;
_newUnit setVariable ['ExileMoney', 0, true]; 
_newUnit setVariable ['ExileScore', _ExileScore];
_newUnit setVariable ['ExileKills', _ExileKills];
_newUnit setVariable ['ExileDeaths', _ExileDeaths];
_newUnit setVariable ['ExileClanID', _clanID];
_newUnit setVariable ['ExileClanData', _clanData];
_newUnit setVariable ['ExileHunger', 100];
_newUnit setVariable ['ExileThirst', 100];
_newUnit setVariable ['ExileTemperature', 37];
_newUnit setVariable ['ExileWetness', 0];
_newUnit setVariable ['ExileAlcohol', 0]; 
_newUnit setVariable ['ExileName', _name]; 
_newUnit setVariable ['ExileOwnerUID', _playerUID]; 
_newUnit setVariable ['ExileIsBambi', _ExileIsBambi];
_newUnit setVariable ['ExileXM8IsOnline', false, true];
_newUnit setVariable ['ExileLocker', _ExileLocker, true];
_newUnit setVariable ['ExileSessionID', _ExileSessionID, true];
missionNamespace setVariable [format['ExileSessionPlayerObject%1', _ExileSessionID], _newUnit];
_newUnit addMPEventHandler ['MPKilled', {_this call ExileServer_object_player_event_onMpKilled}];
_newUnit call ExileServer_object_player_database_insert;

_weaponholder = nearestObject [_target, 'WeaponHolderSimulated'];
if(!isNull _weaponholder)then
{
	_weaponsItemsCargo = weaponsItemsCargo _weaponholder;
	if(count _weaponsItemsCargo > 0)then
	{
		_weaponsItemsCargo = _weaponsItemsCargo select 0;
		
		{
			if(_x isEqualType '')then
			{
				_target addweapon _x;
				_target addPrimaryWeaponItem _x;
			}
			else
			{
				_target addMagazine _x;
			};
		} forEach _weaponsItemsCargo;
	};
	deleteVehicle _weaponholder;
};

[
	[
		_newUnit,
		str _ExileScore,
		_ExileKills,
		_ExileDeaths,
		(getNumber (configFile >> 'CfgSettings' >> 'BambiSettings' >> 'protectionDuration')) * 60, 
		_clanData,
		_ExileIsBambi,
		_target,
		_newUnit,
		getUnitLoadout _target
	],
	{
		params ['_newUnit','_ExileScore','_ExileKills','_ExileDeaths','_bambitimer','_clanData','_ExileIsBambi','_target','_newUnit','_loadout'];
		_newUnit call ExileClient_object_player_initialize;
		ExileClientPlayerIsSpawned = true;
		ExileClientPlayerAttributesASecondAgo = 
		[
			ExileClientPlayerAttributes select 0,
			ExileClientPlayerAttributes select 1,
			ExileClientPlayerAttributes select 2,
			ExileClientPlayerAttributes select 3,
			ExileClientPlayerAttributes select 4,
			ExileClientPlayerAttributes select 5,
			ExileClientPlayerAttributes select 6
		];
		call ExileClient_object_player_initStamina;
		call ExileClient_system_rating_balance;
		false call ExileClient_gui_hud_showSurvivalInfo;
		ExileClientPlayerScore = parseNumber _ExileScore;
		ExileClientPlayerKills = _ExileKills;
		ExileClientPlayerDeaths = _ExileDeaths;

		_clanData call ExileClient_system_clan_network_updateClanInfoFull;
		if(count _clanData >= 6)then
		{
			if!(isNull (_clanData select 5))then
			{
				ExileClientPartyID = netid (_clanData select 5);
			};
		};
		if(isNil'ExileClientPartyID')then{ExileClientPartyID = -1;};
		if!(ExileClientPartyID isEqualTo -1)then
		{
			[player] joinSilent (groupFromNetId ExileClientPartyID);
		};

		if!(isNull ExileClientLastDiedPlayerObject)then
		{	
			[ExileClientLastDiedPlayerObject] joinSilent (createGroup independent);
		};
		if(_ExileIsBambi)then
		{
			[ExileClientEndBambiStateThread] call ExileClient_system_thread_removeTask;
			ExileClientPlayerBambiStateExpiresAt = time + _bambitimer; 
			true call ExileClient_gui_hud_toggleBambiIcon;
			ExileClientEndBambiStateThread = [_bambitimer, ExileClient_object_player_bambiStateEnd, [], true] call ExileClient_system_thread_addTask;
		};
		_layer = 'BIS_fnc_respawnCounter' call bis_fnc_rscLayer;
		_layer cutText ['', 'plain'];
		RscRespawnCounter_Custom = 0;
		if!(ExileClientBleedOutThread isEqualTo -1)then
		{
			[ExileClientBleedOutThread] call ExileClient_system_thread_removeTask;
			ExileClientBleedOutThread = -1;
		};
		cutText['', 'BLACK IN',3];
		titleText['', 'BLACK IN',3];
		true call ExileClient_gui_hud_toggle;
		ExileClientLoadedIn = true;
		showChat true;
		setGroupIconsVisible [true, true];
		if(userInputDisabled)then{disableUserInput false;};
		
		if(!isNull _target)then{ deleteVehicle _target; };
		if(!isNull _newUnit)then{
			if!(_loadout isEqualTo [])then
			{
				_newUnit setUnitLoadout _loadout;
			};
		};
	},
	_targetID,
	false
] call FN_infiSTAR_S;

_newUnit setPos _pos;
_newUnit setDir _direction;
_newUnit call ExileServer_object_player_database_update;
deleteVehicle _target;
";
fn_global_animation = {
	if(remoteExecutedOwner > 2)exitWith{true};
	params[['_netId',''],['_animation','']];
	_clientObject = objectFromnetId _netId;
	if(isNull _clientObject)exitWith{};
	_clientObject switchMove _animation;
};
fn_global_animation = compileFinal ([fn_global_animation] call fnc_CompilableString);
publicVariable "fn_global_animation";
/****************************************************************************************************/
if(_allowPee)then{
fnc_player_pee = compileFinal "
if(remoteExecutedOwner > 2)exitWith{true};
params['_netId','_size'];
_clientObject = objectFromnetId _netId;
if(_clientObject getVariable ['peeing',false])exitWith{};
_clientObject setVariable ['peeing',true];
_clientObject switchMove 'Acts_AidlPercMstpSlowWrflDnon_pissing';
sleep 4;
_dir = getDir _clientObject;
_stream = '#particlesource' createVehicleLocal [0,0,0];
_stream setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];
_stream setDropInterval 0.001;
_stream attachTo [_clientObject,[0.1,0.15,-0.10],'Pelvis'];
for '_i' from 0 to 1 step 0.01 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
sleep 4;
for '_i' from 1 to 0.4 step -0.01 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
for '_i' from 0.4 to 0.8 step 0.02 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
for '_i' from 0.8 to 0.2 step -0.01 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
for '_i' from 0.2 to 0.3 step 0.02 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
for '_i' from 0.3 to 0.1 step -0.01 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
for '_i' from 0.1 to 0 step -0.01 do {
	_stream setParticleParams [['\a3\data_f\ParticleEffects\Universal\Universal.p3d',16,12,8],'','BillBoard',1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[_size,0.02,0.1],[[0.8,0.7,0.2,_i],[0.8,0.7,0.2,_i],[0.8,0.7,0.2,0]],[1],1,0,'','',_stream,0,true,0.1,[[0.8,0.7,0.2,0]]];
	sleep 0.02;
};
deleteVehicle _stream;
_clientObject setVariable ['peeing',false];
";
publicVariable "fnc_player_pee";
};
/****************************************************************************************************/
fn_infiSTAR_getInMan = {
	params['_unit','_position','_vehicle','_turret'];
	if(_unit isEqualTo player && alive _unit)then
	{
		if(_unit call ExileClient_util_world_isInTraderZone)then
		{
			[3,[5,[netId _unit, netId _vehicle]]] call FN_infiSTAR_CS;
		};
	};
};
publicVariable 'fn_infiSTAR_getInMan';
/****************************************************************************************************/
if(_block_glitch_actions || _wall_glitch_object || _wall_glitch_vehicle)then{
	fnc_check_if_enemy_base = compileFinal "
		if(isNil'last_check_if_enemy_base')then{last_check_if_enemy_base=0;};
		if(isNil'last_ret_check_if_enemy_base')then{last_ret_check_if_enemy_base=true;};
		if(last_check_if_enemy_base < diag_tickTime)then
		{
			_ret = call {
				_flags = player nearObjects ['Exile_Construction_Flag_Static', 90];
				if(_flags isEqualTo [])exitWith{false};
				
				_grp = group player;
				_groupID = groupID _grp;
				
				_uids = [getPlayerUID player];
				if!(_groupID isEqualTo '')then
				{
					{
						_xuid = getPlayerUID _x;
						if!(_xuid isEqualTo '')then
						{
							_uids pushBackUnique _xuid;
						};
					} forEach (units _grp);
				};
				
				scopeName 'MAIN_FLAG';
				_val = true;
				{
					_flag = _x;
					_flagStolen = _flag getvariable ['ExileFlagStolen',-999];
					if(_flagStolen isEqualTo 1)exitWith{_val = false;breakTo 'MAIN_FLAG';};
					
					_radius = _flag getVariable['ExileTerritorySize', 15];
					if((player distance _flag) < _radius)then
					{
						_buildRights = _flag getVariable['ExileTerritoryBuildRights', []];
						{
							if(_x in _buildRights)exitWith
							{
								_val = false;breakTo 'MAIN_FLAG';
							};
						} forEach _uids;
					};
				} forEach _flags;
				_val
			};
			last_check_if_enemy_base = diag_tickTime + 10;
			last_ret_check_if_enemy_base = _ret;
			_ret
		} else {
			last_ret_check_if_enemy_base
		};
	";
	publicVariable "fnc_check_if_enemy_base";

	if(_wall_glitch_vehicle)then
	{
		if(isNil'player_pos_no_vehicle')then{player_pos_no_vehicle = player modelToWorldVisual [0,0,0];};
		if(isNil'player_dir_no_vehicle')then{player_dir_no_vehicle = getDir player;};
		if(!isNil'test_getPos_thread')then{terminate test_getPos_thread;test_getPos_thread=nil;};
		test_getPos_thread = [] spawn {
			while {true} do
			{
				if(isNull objectParent player)then
				{
					player_pos_no_vehicle = player modelToWorldVisual [0,0,0];
					player_dir_no_vehicle = getDir player;
				};
				uiSleep 1;
			};
		};

		fn_infiSTAR_getInMan_WallGlitch = {
			params['_unit','_position','_vehicle','_turret'];
			if(_unit isEqualTo player && alive _unit)then
			{
				if(call fnc_check_if_enemy_base)then
				{
					_modelToWorldVisual = _unit modelToWorldVisual [0,0,1];
					_lineintersectsobjs = lineintersectsobjs[AGLtoASL _modelToWorldVisual, AGLtoASL player_pos_no_vehicle, _unit, _vehicle, false, 32];

					_eject = false;
					if(!(typeOf _vehicle isEqualTo 'Steerable_Parachute_F') && ((locked _vehicle isEqualTo 2)||(_vehicle getVariable ['ExileIsLocked', 1] isEqualTo -1)))then
					{
						[
							'ErrorTitleAndText',
							[
								'infiSTAR',
								'You can not get into a locked vehicle!'
							]
						] call ExileClient_gui_toaster_addTemplateToast;
						_eject = true;
					}
					else
					{
						{
							if(_x isKindOf 'Exile_Construction_Abstract_Static')exitWith
							{
								_eject = true;
								
								[
									'ErrorTitleAndText',
									[
										'infiSTAR ANTI-GLITCH:',
										format['You just glitched through %1.. be careful!',typeOf _x]
									]
								] call ExileClient_gui_toaster_addTemplateToast;
							};
						} forEach _lineintersectsobjs;
					};
					if(_eject)then{ _unit action ['eject',_vehicle]; };
				};
			};
		};
		publicVariable 'fn_infiSTAR_getInMan_WallGlitch';


		fn_infiSTAR_getOutMan_WallGlitch = {
			params['_unit','_position','_vehicle','_turret'];
			if(_unit isEqualTo player && alive _unit)then
			{
				if(call fnc_check_if_enemy_base)then
				{
					if(isNull (ropeAttachedTo _vehicle))then
					{
						_visualPos = getPosATLVisual _vehicle;
						_visualPos set[2, (_visualPos select 2) + 1];
						_dirTo = [_vehicle, player] call BIS_fnc_dirTo;
						_secondPos = [_visualPos, (_vehicle distance player) + 1, _dirTo] call BIS_fnc_relPos;
						{
							if(_x isKindOf 'Exile_Construction_Abstract_Static')exitWith
							{
								player moveInAny _vehicle;
								
								_log = format['WALL GLITCH CHECK (getOut/ejected from vehicle) - @%1 %2',mapGridPosition _visualPos,_visualPos];
								['+str _name+','+str _puid+','SLOG_GLITCH',toArray(_log)] call '+str _AHKickLog+';
								
								[
									'ErrorTitleAndText',
									[
										'infiSTAR ANTI-GLITCH:',
										format['You just glitched through %1.. be careful!',typeOf _x]
									]
								] call ExileClient_gui_toaster_addTemplateToast;
							};
						} forEach lineintersectsobjs[ATLToASL _visualPos, ATLToASL _secondPos, player, _vehicle, true, 2];
					}
					else
					{
						player moveInAny _vehicle;
						
						[
							'ErrorTitleAndText',
							[
								'infiSTAR ANTI-GLITCH:',
								'Can not leave vehicle when it is rope attached!'
							]
						] call ExileClient_gui_toaster_addTemplateToast;
					};
				};
			};
		};
		publicVariable 'fn_infiSTAR_getOutMan_WallGlitch';
	};
};
/****************************************************************************************************/
_ryanzombies = !(getArray(configfile >> 'CfgPatches' >> 'Ryanzombies' >> 'units') isEqualTo []);
/****************************************************************************************************/
fnc_debugbox_new = {
#include "debug.sqf"
};
diag_log format["<infiSTAR.de> %1 - STARTUP - including AdminTools",time];
#include "EXILE_AT.sqf"
diag_log format["<infiSTAR.de> %1 - STARTUP - AdminTools included!",time];
diag_log format["<infiSTAR.de> %1 - STARTUP - including AntiHack",time];
#include "EXILE_AH.sqf"
diag_log format["<infiSTAR.de> %1 - STARTUP - AntiHack included!",time];
comment "Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de";
true
