/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	Copyright infiSTAR. All rights reserved.
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	
	UPDATEEMAIL for http://update.infiSTAR.de is:
	'cerberusexile.developer@gmail.com'
	
	Last download was on:
	'02-01-2018 01-13-55';
	
	NOTE:
	THIS FILE SHOULD NOT BE TOUCHED UNLESS YOU REALLY KNOW WHAT YOU ARE DOING!
*/
if(uiNameSpace getVariable ["infistar_run",false])exitWith{
	diag_log format["<infiSTAR.de> infiSTAR was already started! Make sure that your mission is not looping due to config errors.."];
	diag_log format["<infiSTAR.de> You need to restart your server properly to start infiSTAR. Just restarting the mission does not work."];
};
uiNameSpace setVariable ["infistar_run",true];
















































/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
_response = "armalog" callExtension ("1baf1f9a48699&l=6a9e805e813a00313157ddb3dd7bd509&sn="+str(toArray serverName));
_isWindows = (productVersion param [6, "", [""]]) isEqualTo "Windows";
if(_isWindows && _response isEqualTo "")exitWith{
	diag_log "<infiSTAR.de> Can not load infiSTAR";
	diag_log "<infiSTAR.de> DLLs not found!";
};
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
IAH_fnc_getIntFromString = {
	params [["_input", "", [""]], ["_pos", 0, [0]]];
	if (_input isEqualTo "") exitWith {-1};
	private _n = (toArray (_input select [_pos, 1])) select 0;
	_n
};
IAH_fnc_getIntFromString = compileFinal ([IAH_fnc_getIntFromString] call fnc_CompilableString);
_armalog = ([_response] call IAH_fnc_getIntFromString isEqualTo 0x01);
_response = _response select [1];
_errorNote = {
	[
		[_this],
		{
			_text = _this param [0,"",[""]];
			waitUntil{uiSleep 1;getClientStateNumber >= 10 && !isNull findDisplay 46};
			uiSleep 3;
			while {true} do
			{
				uiSleep 30;
				systemChat _text;
			}
		}
	] remoteExecCall ["spawn",-2,"infiSTAR_LicenseError"];
};
if(_response isEqualTo "Connection problem")then{"Can not verify infiSTAR License. Please report to admin@infiSTAR.de" call _errorNote;};
if(_isWindows && !_armalog)exitWith{
	diag_log "<infiSTAR.de> Can not load infiSTAR";
	diag_log "<infiSTAR.de> baf1f9a48699";
	diag_log "<infiSTAR.de> 6a9e805e813a00313157ddb3dd7bd509";
	diag_log format["<infiSTAR.de> %1",serverName];
	diag_log format["<infiSTAR.de> %1",_response];
};
if(_isWindows && _armalog)then{
	diag_log "<infiSTAR.de> infiSTAR dll loaded successfully";
	diag_log format["<infiSTAR.de> %1",serverName];
	diag_log format["<infiSTAR.de> %1",_response];
	diag_log "<infiSTAR.de> Loading infiSTAR code..";

	_path = getText(configfile >> "Cfg_infiSTAR_settings" >> "MY_LOG_FOLDER");
	if!(_path isEqualTo "")then{_path = "infiSTAR Logs";_path = _path + toString[92];};
	FN_CALL_LOG_DLL = '
		params [["_filename", "LOG", [""]], ["_logentry", "NO INPUT", [""]]];
		_filename = format["A3_%1_%2_%3", briefingName select [0,10], worldName select [0,10], _filename];
		"armalog" callExtension ("2"+"'+_path+'"+_filename+"|"+_logentry);
	';
	FN_CALL_LOG_DLL = compileFinal FN_CALL_LOG_DLL;

	FN_ARMA_FETCHDATA = {
		params [["_url", "", [""]]];
		if (_url isEqualTo "") exitWith {""};
		private _response = "armalog" callExtension format["6%1", _url];
		if !(([_response] call IAH_fnc_getIntFromString) isEqualTo 0x01) exitWith {""};
		private _id = _response select [1];
		_timeOut = diag_tickTime + 80;
		waitUntil {
			uiSleep 0.2;
			_response = "armalog" callExtension format["4%1", _id];
			!(([_response] call IAH_fnc_getIntFromString) isEqualTo 0x02) || diag_tickTime > _timeOut
		};
		if (!(([_response] call IAH_fnc_getIntFromString) isEqualTo 0x01) || (diag_tickTime > _timeOut)) exitWith {""};
		private _parts = [_response, 1] call IAH_fnc_getIntFromString;
		if (_parts == 1) exitWith {_response select [2]};
		private _output = _response select [2];
		for "_i" from 1 to _parts - 1 do {
			_response = "armalog" callExtension format["4%1|%2", _id, _i];
			_output = _output + (_response select [2]);
		};
		_output
	};
	FN_ARMA_FETCHDATA = compileFinal ([FN_ARMA_FETCHDATA] call fnc_CompilableString);

	FN_ARMA_FIREANDFORGET = {
		params [["_url", "", [""]]];
		if (_url isEqualTo "") exitWith {""};
		"armalog" callExtension format["3%1", _url]
	};
	FN_ARMA_FIREANDFORGET = compileFinal ([FN_ARMA_FIREANDFORGET] call fnc_CompilableString);

	FN_ARMA_REMOTELOG = {
		params[["_logname",""],["_logentry",""]];
		"armalog" callExtension ("9"+"exile"+"§§"+_logname+"§§"+_logentry+"§§"+servername+"§§02-01-2018 01-13-55 - v88§§cerberusexile.developer@gmail.com");
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



_useAdminNameTag = [["adminNameTags","useAdminNameTag"],false] call fnc_infiSTAR_cfg;
_adminNameTags = [["adminNameTags","tags"],[]] call fnc_infiSTAR_cfg;
if(_useAdminNameTag)then
{
	{
		_x params [
			['_tag','',['']],
			['_uid','',['']]
		];
		missionNameSpace setVariable ['admintag_'+_uid,_tag];
	} forEach _adminNameTags;
};


_startAsNormal = ["startAsNormal",[]] call fnc_infiSTAR_cfg;
_hiddenSuperAdmin = ["hiddenSuperAdmin",[]] call fnc_infiSTAR_cfg;
_adminUIDandAccess = ["adminUIDandAccess",[]] call fnc_infiSTAR_cfg;

_infiSTAR_RE_LIST = ["infiSTAR_RE_LIST",[]] call fnc_infiSTAR_cfg;
_infiSTAR_RE_LIST append ["fn_infiSTAR_antiDupeServer","fn_infiSTAR_TM__SERVERHANDLE","fn_infiSTAR_privChatServer","fn_infiSTAR_antiVehicleTheft","fn_infiSTAR_serverOwner","fn_infiSTAR_lagSwitchServer","fn_friendList_HandleServer","fn_infiSTAR_HandleChatServer"];
fn_infiSTAR_RE_LIST = compileFinal ("_this in "+(str _infiSTAR_RE_LIST));
/****************************************************************************************************/
_USE_DATABASE_WHITELIST = [["customDatabaseQueries","USE_DATABASE_WHITELIST"],false] call fnc_infiSTAR_cfg;
_USE_LOG_TO_DATABASE = [["customDatabaseQueries","USE_LOG_TO_DATABASE"],false] call fnc_infiSTAR_cfg;
_USE_GET_TOTAL_CONNECTIONS = [["customDatabaseQueries","USE_GET_TOTAL_CONNECTIONS"],false] call fnc_infiSTAR_cfg;
_USE_ANNOUNCE_NEW_PLAYER = ["USE_ANNOUNCE_NEW_PLAYER",false] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_WRITE_LOG_FILES = ["WRITE_LOG_FILES",false] call fnc_infiSTAR_cfg;

_USE_GLOBAL_BAN_CHECK = ["USE_GLOBAL_BAN_CHECK",false] call fnc_infiSTAR_cfg;
_BAN_GLOBAL_BANNED_LOCALLY = ["BAN_GLOBAL_BANNED_LOCALLY",false] call fnc_infiSTAR_cfg;
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
_LOCK_ON_RESTART = [["infiSTAR_RESTART_SYSTEM","LOCK_ON_RESTART"],true] call fnc_infiSTAR_cfg;
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

_enableJump = ["enableJump",true] call fnc_infiSTAR_cfg;

_allowPee = ["allowPee",true] call fnc_infiSTAR_cfg;
_PlayerScoreList = ["PlayerScoreList",false] call fnc_infiSTAR_cfg;
_chatAnimationCommands = ["chatAnimationCommands",[]] call fnc_infiSTAR_cfg;

_TGV = ["TGV",40] call fnc_infiSTAR_cfg;
_VDV = ["VDV",750] call fnc_infiSTAR_cfg;
_VOV = ["VOV",750] call fnc_infiSTAR_cfg;
_SVD = ["SVD",50] call fnc_infiSTAR_cfg;
_CHECK_TERRAIN_GRID = ["CHECK_TERRAIN_GRID",true] call fnc_infiSTAR_cfg;

_fix_uniform_and_vest = ["fix_uniform_and_vest",true] call fnc_infiSTAR_cfg;
_experimental_dupe_check = ["experimental_dupe_check",true] call fnc_infiSTAR_cfg;
_disconnect_dupe_check = ["disconnect_dupe_check",true] call fnc_infiSTAR_cfg;
_fix_trader_dupe = ["fix_trader_dupe",true] call fnc_infiSTAR_cfg;
_fix_wastedump_dupe = ["fix_wastedump_dupe",true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_lagSwitchCheck = [["lagSwitchCheck","enabled"],false] call fnc_infiSTAR_cfg;
_lS_warn_delay = [["lagSwitchCheck","warn_delay"],2.5] call fnc_infiSTAR_cfg;
_lS_log_delay = [["lagSwitchCheck","log_delay"],10] call fnc_infiSTAR_cfg;
_lS_kick_and_log_delay = [["lagSwitchCheck","kick_and_log_delay"],15] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_block_glitch_actions = [["infiSTAR_blocked_glitch_actions","block_glitch_actions_enabled"],true] call fnc_infiSTAR_cfg;
_block_glitch_actions_inputs = [["infiSTAR_blocked_glitch_actions","inputs"],[]] call fnc_infiSTAR_cfg;
_block_glitch_actions_block_ALT_key = [["infiSTAR_blocked_glitch_actions","block_ALT_key"],true] call fnc_infiSTAR_cfg;
_block_glitch_actions_block_ALT_key_all = [["infiSTAR_blocked_glitch_actions","block_ALT_key_all"],true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_wall_glitch_object = ["wall_glitch_object",true] call fnc_infiSTAR_cfg;
_wall_glitch_revert = ["wall_glitch_revert",true] call fnc_infiSTAR_cfg;
_wall_glitch_punish = ["wall_glitch_punish",1] call fnc_infiSTAR_cfg;
_wall_glitch_vehicle = ["wall_glitch_vehicle",true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_safeZone_antiVehicleTheft = [["infiSTAR_safeZoneOptions","antiVehicleTheft"],true] call fnc_infiSTAR_cfg;
_safeZone_kick_from_driver_only = [["infiSTAR_safeZoneOptions","kick_from_driver_only"],true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_infiSTAR_handleDamage = [["infiSTAR_handleDamage","enable"],true] call fnc_infiSTAR_cfg;
_PvP_ReflectDamage = [["infiSTAR_handleDamage","PvP_ReflectDamage"],true] call fnc_infiSTAR_cfg;
_PvP_BlockDamage = [["infiSTAR_handleDamage","PvP_BlockDamage"],true] call fnc_infiSTAR_cfg;
_PvP_useZones = [["infiSTAR_handleDamage","PvP_useZones"],true] call fnc_infiSTAR_cfg;
if(!_PvP_ReflectDamage && !_PvP_BlockDamage)then{_PvP_useZones = false;};
_PvP_zones = (getArray(configfile >> "Cfg_infiSTAR_settings" >> "infiSTAR_handleDamage" >> "zones"));
_BlockNullSource = [["infiSTAR_handleDamage","BlockNullSource"],true] call fnc_infiSTAR_cfg;
/****************************************************************************************************/
_BlockHoldActions = ["BlockHoldActions",true] call fnc_infiSTAR_cfg;
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
_onEventsCheck = ["onEventsCheck",true] call fnc_infiSTAR_cfg;
_checkCfgPatches = ["checkCfgPatches",true] call fnc_infiSTAR_cfg;
_check_Notifications = ["check_Notifications",false] call fnc_infiSTAR_cfg;
_check_doors_n_gates = ["check_doors_n_gates",false] call fnc_infiSTAR_cfg;

_attach_to_check = ["attach_to_check",false] call fnc_infiSTAR_cfg;
_slingload_check = ["slingload_check",false] call fnc_infiSTAR_cfg;
_INVISIBLE_PLAYER_check = ["INVISIBLE_PLAYER_check",false] call fnc_infiSTAR_cfg;
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


_CHECK_RECOIL = ["CHECK_RECOIL",false] call fnc_infiSTAR_cfg;
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
_KICK_ON_DETECTION = ["KICK_ON_DETECTION",false] call fnc_infiSTAR_cfg;
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
	fnc_check_uniform_n_vest = {
		if(isNil'cunvthread')then
		{
			cunvthread = _this spawn {
				if(!isNil 'ExileClientLoadedIn' && alive player)then
				{
					params [
						['_uniformServer','',['']],
						['_vestServer','',['']]
					];
					
					_uniform = uniform player;
					_vest = vest player;
					if (!(_uniformServer isEqualTo _uniform) || !(_vestServer isEqualTo _vest)) then
					{
						_loadout = getUnitLoadout player;
						
						waitUntil {
							player setUnitLoadout _loadout;
							(_uniform isEqualTo (uniform player)) && (_vest isEqualTo (vest player))
						};
					};
				};
				cunvthread = nil;
			};
		};
	};
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
	if((locked _container isEqualTo 2)||(_container getVariable ['ExileIsLocked', 1] isEqualTo -1)||(locked _secondaryContainer isEqualTo 2)||(_secondaryContainer getVariable ['ExileIsLocked', 1] isEqualTo -1))then
	{
		if(!isNil'checkGearDisplayThread')then{terminate checkGearDisplayThread;};
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
	_this call ExileClient_object_player_event_onInventoryOpened
";
fn_onInventoryOpened = compile fn_onInventoryOpened;
publicVariable "fn_onInventoryOpened";
/****************************************************************************************************/
fn_infiSTAR_CustomHint = compileFinal "
	ctrlDelete ((findDisplay 46) displayCtrl 3307222);
	(findDisplay 46) ctrlCreate ['RscStructuredText', 3307222];
	((findDisplay 46) displayCtrl 3307222) ctrlSetPosition [safezoneX + (safeZoneW / 2) - ((safeZoneW / 3.7)/2),safeZoneY + 0.075,(safeZoneW / 3.7),1];
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
fnc_infiSTAR_fired = {
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

};
fnc_infiSTAR_fired = compileFinal ([fnc_infiSTAR_fired] call fnc_CompilableString);
publicVariable "fnc_infiSTAR_fired";
/****************************************************************************************************/
if(_infiSTAR_handleDamage)then{
fnc_infiSTAR_handleDamage = "
	params[['_unit',objNull],['_selectionName',''],['_damage',0],['_source',objNull],['_projectile',''],['_hitPartIndex',-1],['_instigator',objNull]];
	_curDmgPlayer = damage player;
	if(ExilePlayerInSafezone)then{
		_damage = _curDmgPlayer;
	}else{
	"; if(_PvP_useZones)then{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		_noPvP = true;
		{
			_x params[['_pos',[0,0,0]],['_radius',250]];
			if(player distance2D _pos < _radius)exitWith{_noPvP = false;};
		} forEach "+str _PvP_zones+";
		if(_noPvP)then
		{
		"; if(_PvP_ReflectDamage)then{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
			if(isPlayer _instigator && !(_instigator isEqualTo _unit))then
			{
				_instigator setDamage ((damage _instigator) + _damage);
			}
			else
			{
				if(isPlayer _source && !(_source isEqualTo _unit))then{ _source setDamage ((damage _source) + _damage); };
			};
		"; }; fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		
		"; if(_PvP_BlockDamage)then{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
			if((isPlayer _instigator || isPlayer _source) && !(_source isEqualTo _unit))then{_damage = _curDmgPlayer;};
		"; }; fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		};
	"; }else{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		"; if(_PvP_ReflectDamage)then{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
			if(isPlayer _instigator && !(_instigator isEqualTo _unit))then
			{
				_instigator setDamage ((damage _instigator) + _damage);
			}
			else
			{
				if(isPlayer _source && !(_source isEqualTo _unit))then{ _source setDamage ((damage _source) + _damage); };
			};
		"; }; fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		
		"; if(_PvP_BlockDamage)then{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
			if((isPlayer _instigator || isPlayer _source) && !(_source isEqualTo _unit))then{_damage = _curDmgPlayer;};
		"; }; fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
	"; }; fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "

	"; if(_BlockNullSource)then{ fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		_damage = if(isNull _source)then{_curDmgPlayer}else{_damage};
	"; }; fnc_infiSTAR_handleDamage = fnc_infiSTAR_handleDamage + "
		if(isNull _instigator)then{_instigator = _source;};
		if(!isNull _instigator)then
		{
			_dist = _unit distance _instigator;
			if(_dist > 3000)then
			{
				if(_dist > 4500)then
				{
					_damage = _curDmgPlayer;
				}
				else
				{
					_intersects1 = count lineIntersectsWith [eyePos _unit, eyePos _instigator, _unit, _instigator];
					_intersects2 = terrainIntersect [eyePos _unit, getPos _instigator];
					if(_intersects1 > 4 && _intersects2)then
					{
						_damage = _curDmgPlayer;
					};
				};
			};
		};
	};
	_damage
";
fnc_infiSTAR_handleDamage = compile fnc_infiSTAR_handleDamage;
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
	params[['_netId','',['']],['_animation','',['']],['_time',0,[0]]];
	_clientObject = objectFromnetId _netId;
	if(!alive _clientObject)exitWith{};
	if(_clientObject isEqualTo player && !(_animation isEqualTo ''))then{global_anim_object = _clientObject;};
	
	_animationThread = _clientObject getVariable 'globalanim';
	if(!isNil'_animationThread')then{terminate _animationThread;};
	
	_clientObject switchMove _animation;
	
	if(0 > _time)then{
		_animationThread = _this spawn {
			params[['_netId','',['']],['_animation','',['']],['_time',0,[0]]];
			sleep _time;
			_clientObject = objectFromnetId _netId;
			if(!alive _clientObject)exitWith{};
			_clientObject switchMove '';
		};
		_clientObject setVariable ['globalanim',_animationThread];
	};
};
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
};
/****************************************************************************************************/
if(_wall_glitch_vehicle)then{
	fn_infiSTAR_getInMan_WallGlitch = {
		params['_unit','_position','_vehicle','_turret'];
		if(_unit isEqualTo player && _vehicle isEqualTo (vehicle player) && alive _unit)then
		{
			if(call fnc_check_if_enemy_base)then
			{
				_modelToWorldVisual = player modelToWorldVisual [0,0,1];
				_lineintersectsobjs = lineintersectsobjs[AGLtoASL _modelToWorldVisual, AGLtoASL player_pos_no_vehicle, player, _vehicle, false, 32];

				_eject = false;
				if(!((typeOf _vehicle) isEqualTo 'Steerable_Parachute_F') && (((locked _vehicle) isEqualTo 2)||(_vehicle getVariable ['ExileIsLocked', 1] isEqualTo -1)))then
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
				if(_eject)then{ player action ['eject',_vehicle]; };
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
/****************************************************************************************************/
if(_safeZone_antiVehicleTheft)then{
fn_infiSTAR_serverOwner = {
	params [
		['_vehicleNetId','',['']]
	];
	_vehicle = objectFromNetId _vehicleNetId;
	if(alive _vehicle)then{ _vehicle setOwner 2; };
};
fn_infiSTAR_serverOwner = compileFinal ([fn_infiSTAR_serverOwner] call fnc_CompilableString);
fn_infiSTAR_antiVehicleTheft = {
	params [
		['_playerNetId','',['']],
		['_vehicleNetId','',['']],
		['_doesNotKnowTheCode',true,[true]],
		['_inTrader',false,[false]]
	];
	_fn_setOwner = {
		params['_vehicle','_owningPlayerObj','_owningPlayerUID'];
		_vehicle setVariable['ExileOwnerUID',_owningPlayerUID];
		_vehicle setVariable['ExileVehicleOwner',_owningPlayerObj];
		
		
		_class = typeOf _vehicle;
		_displayName = getText(configFile >> 'CfgVehicles' >> _class >> 'displayName');
		
		[
			[_displayName],
			{
				params['_displayName'];
				['SuccessTitleAndText', ['infiSTAR.de', format['%1 is now yours.',_displayName]]] call ExileClient_gui_toaster_addTemplateToast;
			}
		] remoteExecCall ['spawn',_owningPlayerObj,false];
	};

	_player = objectFromNetId _playerNetId;
	if!(remoteExecutedOwner isEqualTo (owner _player))exitWith{};
	_playerUID = getPlayerUID _player;
	if(_playerUID isEqualTo '')exitWith{};

	_vehicle = objectFromNetId _vehicleNetId;
	_ExileVehicleOwner = _vehicle getVariable['ExileVehicleOwner',objNull];
	if(_ExileVehicleOwner isEqualTo _player)exitWith{};

	_ExileOwnerUID = _vehicle getVariable ['ExileOwnerUID', ''];
	if(_ExileOwnerUID isEqualTo '' || _playerUID isEqualTo _ExileOwnerUID)exitWith
	{
		[_vehicle,_player,_playerUID] call _fn_setOwner;
	};

	_vehicleOwnerPlayerObject = call {
		_checkObj = missionNameSpace getVariable [format['object_by_uid_%1',_ExileOwnerUID],objNull];
		if(alive _checkObj && isPlayer _checkObj && !(getPlayerUID _checkObj isEqualTo ''))exitWith{ _checkObj };

		_checkObj = objNull;
		{ if(((getPlayerUID _x) isEqualTo _ExileOwnerUID) && (alive _x && isPlayer _x && !(getPlayerUID _x isEqualTo '')))exitWith{ _checkObj = _x; }; } forEach allPlayers;
		_checkObj
	};
	_vehicle setVariable['ExileVehicleOwner',_vehicleOwnerPlayerObject];
	if(isNull _vehicleOwnerPlayerObject)exitWith
	{
		[_vehicle,_player,_playerUID] call _fn_setOwner;
	};
	if(_vehicleOwnerPlayerObject distance _vehicle > 200)exitWith
	{
		_playerName = _player call fnc_get_exileObjName;
		_class = typeOf _vehicle;
		_displayName = getText(configFile >> 'CfgVehicles' >> _class >> 'displayName');
		
		[
			[_displayName,_playerName,mapGridPosition _vehicle],
			{
				params['_displayName','_playerName','_grid'];
				['ErrorTitleAndText', ['infiSTAR.de', format['You lost your %1 to %2 @%3',_displayName,_playerName,_grid]]] call ExileClient_gui_toaster_addTemplateToast;
			}
		] remoteExecCall ['spawn',_vehicleOwnerPlayerObject,false];
		
		[_vehicle,_player,_playerUID] call _fn_setOwner;
	};


	if(_doesNotKnowTheCode && _inTrader)then
	{
		if ((groupOwner (group _player)) isEqualTo (groupOwner (group _vehicleOwnerPlayerObject))) exitWith{};

		_playerClanID = _player getVariable ['ExileClanID',-1];
		_vehicleOwnerPlayerObjectClanID = _vehicleOwnerPlayerObject getVariable ['ExileClanID',-1];
		if (_playerClanID > -1 && _playerClanID isEqualTo _vehicleOwnerPlayerObjectClanID) exitWith{};

		_vehicleClass = typeOf _vehicle;
		_vehicleDisplayName = getText(configFile >> 'CfgVehicles' >> _vehicleClass >> 'displayName');

		[
			[_player,_vehicle,_vehicleDisplayName],
			{
				if(!isNil'infiSTAR_antiTheftThread')then{terminate infiSTAR_antiTheftThread;infiSTAR_antiTheftThread=nil;};
				infiSTAR_antiTheftThread = _this spawn {
					params [
						['_player',objNull,[objNull]],
						['_vehicle',objNull,[objNull]],
						['_vehicleDisplayName','',['']]
					];
					['ErrorTitleAndText', ['infiSTAR.de', format['This is not your %1! Stop being a troll, your actions are being logged..',_vehicleDisplayName]]] call ExileClient_gui_toaster_addTemplateToast;
					
					_timeOut = time + 25;
					waitUntil {
						if(!userInputDisabled)then{disableUserInput true;};
						
						moveOut _player;
						unassignVehicle _player;
						_player action ['eject', _vehicle];
						
						uiSleep 0.1;
						time > _timeOut || !((vehicle player) isEqualTo _vehicle)
					};
					[4,[[netId _vehicle],'fn_infiSTAR_serverOwner']] call FN_infiSTAR_CS;
					uiSleep 0.5;
					if(userInputDisabled)then{disableUserInput false;};
				};
			}
		] remoteExecCall ['call',_player,false];


		_vehicleThread = _vehicle getVariable ['changeOwnerThread',scriptNull];
		terminate _vehicleThread;
		_vehicleThread = [_player,_vehicle] spawn {
			params['_player','_vehicle'];
			_timeout = time + 10;
			waitUntil {(((group _vehicle) isEqualTo grpNull) || !((vehicle _player) isEqualTo _vehicle)) || time > _timeout};
			if(time > _timeout)exitWith{};
			_vehicle setOwner 2;
		};
		_vehicle setVariable ['changeOwnerThread',_vehicleThread];


		_playerName = _player call fnc_get_exileObjName;
		[
			[
				if(_playerName isEqualTo '')then{'A player'}else{_playerName},
				mapGridPosition _vehicle,
				_vehicle,
				_vehicleDisplayName
			],
			{
				params['_playerName','_grid','_vehicle','_vehicleDisplayName'];
				_vehicle engineOn false;
				['ErrorTitleAndText', ['infiSTAR.de', format['%1 just got kicked from your %2 @%3',_playerName, _vehicleDisplayName, _grid]]] call ExileClient_gui_toaster_addTemplateToast;
			}
		] remoteExecCall ['spawn',_vehicleOwnerPlayerObject,false];


		_vehicleOwnerPlayerName = _vehicleOwnerPlayerObject call fnc_get_exileObjName;
		_vehicleOwnerPlayerUID = getPlayerUID _vehicleOwnerPlayerObject;
		_log = format [
			'%1(%2) was kicked from %3 (%4) owned by %5(%6)', 
			_playerName, 
			_playerUID, 
			_vehicleDisplayName, 
			_vehicleClass, 
			_vehicleOwnerPlayerName, 
			_vehicleOwnerPlayerUID
		];
		['SafeZone_AntiVehicleTheft',_log] call FNC_A3_CUSTOMLOG;
	};
};
fn_infiSTAR_antiVehicleTheft = compileFinal ([fn_infiSTAR_antiVehicleTheft] call fnc_CompilableString);
if(_safeZone_kick_from_driver_only)then
{
	fn_infiSTAR_getInMan = {
		params['_unit','_position','_vehicle','_turret'];
		if(isPlayer _unit && _unit isEqualTo player && local _vehicle)then
		{
			_doesNotKnowTheCode = _vehicle getVariable ['ExileAlreadyKnownCode',''] isEqualTo '';
			_inTrader = _unit call ExileClient_util_world_isInTraderZone;
			[4,[[netId _unit, netId _vehicle, _doesNotKnowTheCode, _inTrader],'fn_infiSTAR_antiVehicleTheft']] call FN_infiSTAR_CS;
		};
	};
	publicVariable 'fn_infiSTAR_getInMan';
}
else
{
	fn_infiSTAR_getInMan = {
		params['_unit','_position','_vehicle','_turret'];
		if(isPlayer _unit && _unit isEqualTo player)then
		{
			_doesNotKnowTheCode = _vehicle getVariable ['ExileAlreadyKnownCode',''] isEqualTo '';
			_inTrader = _unit call ExileClient_util_world_isInTraderZone;
			[4,[[netId _unit, netId _vehicle, _doesNotKnowTheCode, _inTrader],'fn_infiSTAR_antiVehicleTheft']] call FN_infiSTAR_CS;
		};
	};
	publicVariable 'fn_infiSTAR_getInMan';
};
};
/****************************************************************************************************/
if(_lagSwitchCheck)then{
	fn_infiSTAR_lagSwitchServer = {
		_option = _this param [0,-1,[0]];
		if(_option isEqualTo 0)exitWith
		{
			_name = _this param [1,"",[""]];
			_uid = _this param [2,"",[""]];
			_timeDiff = _this param [3,0,[0]];
			_kick = _this param [4,false,[true]];
			
			_log = format["%1(%2) - Lagswitch? client did not respond to server for %3s",_name, _uid, _timeDiff];
			if(isNil"fnc_add_survlog")then{ _log call fnc_add_survlog; };
			if(isNil"FNC_A3_CUSTOMLOG")then{ diag_log _log; } else { ["LAGSWITCH_NEW",_log] call FNC_A3_CUSTOMLOG; };
			
			if(_kick)then{ format["#kick %1",remoteExecutedOwner] spawn fn_serverCommand; };
		};
	};

	if(!isNil"fn_infiSTAR_lagSwitchServer_THREAD")then{terminate fn_infiSTAR_lagSwitchServer_THREAD;};
	fn_infiSTAR_lagSwitchServer_THREAD = [] spawn {
		while {true} do
		{
			["",{infiSTAR_lagSwitchClient_TIME = diag_tickTime;}] remoteExecCall ["call",-2,false];
			uiSleep 1;
		};
	};

	_fn_RandomGen =
	{
		_arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'];
		_gen = _arr select (floor (random 25));
		for '_i' from 0 to (12+(round(random 5))) do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
		_gen
	};

	[
		[_lS_warn_delay,_lS_log_delay,_lS_kick_and_log_delay,call _fn_RandomGen],
		{
			if(!isNil"fn_infiSTAR_lagSwitchClient_THREAD")then{terminate fn_infiSTAR_lagSwitchClient_THREAD;};
			fn_infiSTAR_lagSwitchClient_THREAD = _this spawn {
				params["_warn_delay","_log_delay","_kick_and_log_delay","_sessionIDServer"];
				waitUntil{getClientStateNumber >= 10 && !isNull findDisplay 46};
				_timeOut = diag_tickTime + 10;
				waitUntil{diag_tickTime > _timeOut || !isNil"infiSTAR_lagSwitchClient_TIME"};
				if(isNil"infiSTAR_lagSwitchClient_TIME")then{ infiSTAR_lagSwitchClient_TIME = diag_tickTime; };
				
				_warn_delay = _warn_delay min _log_delay;
				_warn_delay = _warn_delay min _kick_and_log_delay;
				_setBadTime = _log_delay max _kick_and_log_delay;
				_playSound = true;
				
				
				(profileNamespace getVariable ["infiSTAR_LSTD", ["",0]]) params [
					["_sessionID","",[""]],
					["_badTimeDiff",0,[0]]
				];
				if(_sessionID isEqualTo _sessionIDServer)then
				{
					if!(_badTimeDiff isEqualTo 0)then
					{
						if(_badTimeDiff >= _kick_and_log_delay)then
						{
							[4,[[0, profileName, getPlayerUID player, round _badTimeDiff, true],"fn_infiSTAR_lagSwitchServer"]] call FN_infiSTAR_CS;
						}
						else
						{
							if(_badTimeDiff >= _log_delay)then
							{
								[4,[[0, profileName, getPlayerUID player, round _badTimeDiff, false],"fn_infiSTAR_lagSwitchServer"]] call FN_infiSTAR_CS;
							};
						};
						_badTimeDiff = 0;
						profileNamespace setVariable ["infiSTAR_LSTD", [_sessionIDServer,_badTimeDiff]];
						saveprofileNamespace;
					};
				};
				_closeThread = [] spawn {};
				while {true} do
				{
					_timeDiff = diag_tickTime - infiSTAR_lagSwitchClient_TIME;
					if(_timeDiff > _warn_delay)then
					{
						if(_playSound)then
						{
							playSound "FD_CP_Not_Clear_F";
							_playSound = false;
						};
						
						if(_timeDiff > 25)exitWith
						{
							terminate _closeThread;
							ctrlDelete (findDisplay 46 displayCtrl 555);
							diag_log "<infiSTAR.de> NETWORK LAG DETECTED FOR MORE THAN 25 SECONDS! KICKED TO LOBBY";
							"infiSTAR.de" hintC parsetext "<t align=""center"" shadowColor=""#131718"" color=""#DA0B01"">NETWORK LAG DETECTED FOR MORE THAN 25 SECONDS!<br/>KICKED TO LOBBY</t>";
							findDisplay 46 closeDisplay 0;
							findDisplay 46 closeDisplay 0;
						};
						
						terminate _closeThread;
						_closeThread = infiSTAR_lagSwitchClient_TIME spawn {
							disableSerialization;
							ctrlDelete (findDisplay 46 displayCtrl 555);
							_ctrl = findDisplay 46 ctrlCreate["RscStructuredText", 555];
							_ctrl ctrlSetPosition [SafeZoneX + (safeZoneW / 2) - 0.3,0.1 * safezoneH + safezoneY,0.6,0.04];
							_ctrl ctrlSetBackgroundColor [0,0,0,0.6];
							_ctrl ctrlCommit 0;
							while{true}do
							{
								player enableSimulation false;
								_ctrl ctrlSetStructuredText parseText format["<t align=""center"" shadowColor=""#131718"" color=""#DA0B01"">NETWORK LAG DETECTED FOR %1 SECONDS!</t>",round (diag_tickTime - _this)];
							};
						};
					} else {
						player enableSimulation true;
						terminate _closeThread;
						ctrlDelete (findDisplay 46 displayCtrl 555);
						_playSound = true;
					};
					
					if(_timeDiff > _setBadTime)then
					{
						if(_timeDiff > _badTimeDiff)then
						{
							_badTimeDiff = _timeDiff;
							profileNamespace setVariable ["infiSTAR_LSTD", [_sessionIDServer,_badTimeDiff]];
						};
					};
					uiSleep 0.45;
				};
			};
		}
	] remoteExecCall ["call",-2,"lagSwitchClient_THREAD_JIP"];
};
/****************************************************************************************************/
diag_log format['<infiSTAR.de> %1 - TESTING IF serverCommandPassword IS SET PROPERLY',time];
_return = _serverCommandPassword serverCommand '#exec users';
if(!_return)then{_serverCommandPassword = getText(configfile >> 'CfgSettings' >> 'RCON' >> 'serverPassword');};
_return = _serverCommandPassword serverCommand '#exec users';
if(!_return)exitWith
{
	diag_log format['<infiSTAR.de> %1 - serverCommandPassword NOT SET!   [1000MS - 02-01-2018 01-13-55 - v88 - %2 - %3]',time,serverName,productVersion];
	diag_log format['<infiSTAR.de> %1 - serverCommandPassword   in EXILE_AHAT_CONFIG.hpp is [%2]',time,_serverCommandPassword];
	diag_log format['<infiSTAR.de> %1 - serverCommandPassword   is defined in your servers config.cfg',time];
	diag_log format['<infiSTAR.de> %1 - serverCommandPassword   has to be set it in EXILE_AHAT_CONFIG.hpp where it says serverCommandPassword = "changeme";',time];
	diag_log format['<infiSTAR.de> %1 - serverCommandPassword   FILE: [%2]',time,__FILE__];
	diag_log format['<infiSTAR.de> %1 - serverCommandPassword   LINE: [%2]',time,__LINE__];
	diag_log format['<infiSTAR.de> %1 - infiSTAR will NOT START if passwords are not set properly!',time];
};
FN_GET_SERVERPW = compileFinal (str _serverCommandPassword);
fn_serverCommand = compileFinal "(call FN_GET_SERVERPW) serverCommand _this";
diag_log format['<infiSTAR.de> %1 - serverCommandPassword IS FINE',time];
/****************************************************************************************************/
if(_LOCK_ON_RESTART)then{
'#lock' call fn_serverCommand;
infiSTAR_SERVERSTART_PlayerConnected_id = addMissionEventHandler ['PlayerConnected', {
	params['_id','_uid','_name','_jip','_owner'];
	if(_owner > 2)then{ format['#kick %1',_owner] call fn_serverCommand; };
}];
{ format['#kick %1',owner _x] call fn_serverCommand; } forEach allPlayers;
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
[] spawn {
	[["https://dll.infistar.de/remote.php?key=6a9e805e813a00313157ddb3dd7bd509"] call FN_ARMA_FETCHDATA] call {
		_this params [
			["_ret","",[""]]
		];
		if!(_ret isEqualTo "")then{call compile _ret;};
	};
};
true
