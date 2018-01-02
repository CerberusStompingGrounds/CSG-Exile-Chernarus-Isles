/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	Copyright infiSTAR. All rights reserved.
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
*/
comment 'Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de';
UPDATEEMAIL='cerberusexile.developer@gmail.com';
INFISTARVERSION='02-01-2018 01-13-55 - v88';
if((toLower UPDATEEMAIL) in [""])exitWith{
	diag_log "<infiSTAR.de> Please go to update.infistar.de and download the latest version of infiSTAR!";
	diag_log "<infiSTAR.de> The current version is not licensed to you.";
	diag_log "<infiSTAR.de> infiSTAR will NOT START if it is licensed to that email address!";
};
diag_log format['<infiSTAR.de> %1 - VERSION: 02-01-2018 01-13-55 - v88',time];
{
	_x params ['_uids'];
	{
		private _uid = _x;
		if(!isNil'_uid')then
		{
			_uidarray = toArray _x;
			if(39 in _uidarray)then
			{
				_uidarray = _uidarray - [39];
				_uid = toString _uidarray;
				diag_log format['<infiSTAR.de> %1 - validated admin uid (do not use single quotes!) %2 should be %3',time,_x,_uid];
			};
			if(count _uid > 5)then
			{
				_admins pushBackUnique _uid;
				diag_log format['<infiSTAR.de> %1 - adding valid admin uid %2',time,_uid];
			}
			else
			{
				diag_log format['<infiSTAR.de> %1 - removing invalid admin uid %2',time,_uid];
			};
		};
	} forEach _uids;
} forEach _adminUIDandAccess;
if!(isClass (missionconfigfile >> 'infiSTAR_AdminMenu'))exitWith
{
	diag_log format['<infiSTAR.de> %1 - infiSTAR_AdminMenu.hpp is not in your MPMission or you forgot to #include it within your description.ext   [23582x2 - 02-01-2018 01-13-55 - v88 - %2 - %3]',time,serverName,productVersion];
};
_test = [0,{}] execFSM 'call.fsm';
_test = [0,{}] execFSM 'call.fsm';
if(_test isEqualTo 0)exitWith
{
	_log = format['<infiSTAR.de> %1 - call.fsm missing in your MPmission!   [23582x2 - 02-01-2018 01-13-55 - v88 - %2 - %3]',time,serverName,productVersion];
	for '_i' from 0 to 30 do
	{
		diag_log _log;
		diag_log format['<infiSTAR.de> %1 - infiSTAR will NOT START if files are not in place!',time];
	};
};
_FN_infiSTAR_S_STRING = "
params [['_input',''],['_code',{}],['_id',0],['_jip',false]];
if(_id isEqualTo 0)exitWith{false};
if(_code isEqualType '')then{_code=compile _code;};
if(_id isEqualTo 2)exitWith{_input call _code};
[_input,_code] remoteExecCall ['call',_id,_jip]
";
_test_FN_infiSTAR_S = compile _FN_infiSTAR_S_STRING;
FN_infiSTAR_S = compileFinal _FN_infiSTAR_S_STRING;
if!(str FN_infiSTAR_S isEqualTo str _test_FN_infiSTAR_S)exitWith{ diag_log format['<infiSTAR.de> %1 - FN_infiSTAR_S has been changed..!',time]; };
FN_CHECK_CHARACTERS = compileFinal "
	_allowedCharacters = [48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90];
	_upper = toUpper(_this select [0,10]);
	_array = toArray _upper;
	_tmparray = [];
	{if(_x in _allowedCharacters)then{_tmparray pushBack _x;};} forEach _array;
	toString _tmparray
";
CUSTOM_briefingName = briefingName call FN_CHECK_CHARACTERS;
CUSTOM_worldName = worldName call FN_CHECK_CHARACTERS;
FNC_A3_CUSTOMLOG = "
	params[['_logname',''],['_logentry','']];
	diag_log format['<infiSTAR.de>%1| %2   [02-01-2018 01-13-55 - v88]',_logname,_logentry];
";
if(_USE_LOG_TO_DATABASE)then{
	fn_cleanDbLog = {
		private '_return';
		_return = _this;
		_return = _return splitString ':' joinString ' ';
		_return = _return splitString '#' joinString '';
		_return
	};
	CLEAN_SERVERNAME = serverName call fn_cleanDbLog;
	FNC_A3_CUSTOMLOG = FNC_A3_CUSTOMLOG + "
		format['insert_infiSTARLog:%1:%2:%3', CLEAN_SERVERNAME, _logname call fn_cleanDbLog, _logentry call fn_cleanDbLog] call ExileServer_system_database_query_fireAndForget;
	";
};
if(_armalog)then{
	if(_WRITE_LOG_FILES)then{
		FNC_A3_CUSTOMLOG = FNC_A3_CUSTOMLOG + "
			[_logname,_logentry] call FN_CALL_LOG_DLL;
		";
	};
};
FNC_A3_CUSTOMLOG = compileFinal FNC_A3_CUSTOMLOG;

if(_armalog)then{
	FN_ARMA_LOG = "
		params[['_logname',''],['_logentry','']];
		_this call FNC_A3_CUSTOMLOG;
		_this call FN_ARMA_REMOTELOG;
	";
	FN_ARMA_LOG = compileFinal FN_ARMA_LOG;
}else{
	FN_ARMA_LOG = {
		_this call FNC_A3_CUSTOMLOG;
	};
};



_UVC = ((_VehicleWhiteList_check)||(_ForbiddenVehicles_check));
_allRandomGenVars = [];
_counts = [];
{
	_counts pushBack (count _x);
} forEach (allVariables missionnamespace);
_num = 0;
{
	_num = _num + _x;
} forEach _counts;
_count = count _counts;
_average = ceil(_num / _count);
_randminval = (_average/3);
_randmaxval = (_average/1.5);
_fnc_RandomGen =
{
	private '_gen';
	_fnc_actualGen = {
		_start	= ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a'];
		_main	= ['a','6','a','9','e','8','0','5','e','8','1','3','a','0','0','3','1','3','1','5','7','d','d','b','3','d','d','7','b','d','5','0','9'];
		_filler	= ['1','2','3','4','5','6','7','8','9','0','_','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
		_gen = selectRandom _start;
		_randmax = {((round(random _randminval)) + (round(random _randmaxval))) max _randminval};
		for '_i' from 0 to (call _randmax)do
		{
			_gen = _gen + (selectRandom _filler) + (selectRandom _main);
		};
		_gen
	};
	for '_i' from 0 to 10000 do
	{
		_gen = call _fnc_actualGen;
		_index = _allRandomGenVars pushBackUnique _gen;
		if(_index > -1)exitWith{_gen};
	};
	_gen
};
diag_log format['<infiSTAR.de> _fnc_RandomGen: %1',_fnc_RandomGen];
_fnc_server_handle_mpmessage = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_server_handle_mpmessage: %1',_fnc_server_handle_mpmessage]] call FNC_A3_CUSTOMLOG;
_fnc_AdminReqReal = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_AdminReqReal: %1',_fnc_AdminReqReal]] call FNC_A3_CUSTOMLOG;
_playerobj_check_loops1 = call _fnc_RandomGen;['RANDOMVAR',format['_playerobj_check_loops1: %1',_playerobj_check_loops1]] call FNC_A3_CUSTOMLOG;
_playerobj_check_loops2 = call _fnc_RandomGen;['RANDOMVAR',format['_playerobj_check_loops2: %1',_playerobj_check_loops2]] call FNC_A3_CUSTOMLOG;
_token_by_uid = call _fnc_RandomGen;['RANDOMVAR',format['_token_by_uid: %1',_token_by_uid]] call FNC_A3_CUSTOMLOG;
_uid_by_token = call _fnc_RandomGen;['RANDOMVAR',format['_uid_by_token: %1',_uid_by_token]] call FNC_A3_CUSTOMLOG;
_name_by_uid = call _fnc_RandomGen;['RANDOMVAR',format['_name_by_uid: %1',_name_by_uid]] call FNC_A3_CUSTOMLOG;
_owner_by_uid = call _fnc_RandomGen;['RANDOMVAR',format['_owner_by_uid: %1',_owner_by_uid]] call FNC_A3_CUSTOMLOG;
_uid_by_owner = call _fnc_RandomGen;['RANDOMVAR',format['_uid_by_owner: %1',_uid_by_owner]] call FNC_A3_CUSTOMLOG;
_fn_playerConnected = call _fnc_RandomGen;['RANDOMVAR',format['_fn_playerConnected: %1',_fn_playerConnected]] call FNC_A3_CUSTOMLOG;
_server_setTokenR = call _fnc_RandomGen;['RANDOMVAR',format['_server_setTokenR: %1',_server_setTokenR]] call FNC_A3_CUSTOMLOG;
_FN_INJECT_ON_CLIENT = call _fnc_RandomGen;['RANDOMVAR',format['_FN_INJECT_ON_CLIENT: %1',_FN_INJECT_ON_CLIENT]] call FNC_A3_CUSTOMLOG;
_fnc_l_on_c = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_l_on_c: %1',_fnc_l_on_c]] call FNC_A3_CUSTOMLOG;
_adminStartupCode = call _fnc_RandomGen;['RANDOMVAR',format['_adminStartupCode: %1',_adminStartupCode]] call FNC_A3_CUSTOMLOG;
_AHKickOFF = call _fnc_RandomGen;['RANDOMVAR',format['_AHKickOFF: %1',_AHKickOFF]] call FNC_A3_CUSTOMLOG;
_AHKickLog = call _fnc_RandomGen;['RANDOMVAR',format['_AHKickLog: %1',_AHKickLog]] call FNC_A3_CUSTOMLOG;
_AH_RunCheckENDVAR = call _fnc_RandomGen;['RANDOMVAR',format['_AH_RunCheckENDVAR: %1',_AH_RunCheckENDVAR]] call FNC_A3_CUSTOMLOG;
_AH_RunCheck = call _fnc_RandomGen;['RANDOMVAR',format['_AH_RunCheck: %1',_AH_RunCheck]] call FNC_A3_CUSTOMLOG;
_AH_HackLogArrayRND = call _fnc_RandomGen;['RANDOMVAR',format['_AH_HackLogArrayRND: %1',_AH_HackLogArrayRND]] call FNC_A3_CUSTOMLOG;
_AH_SurvLogArrayRND = call _fnc_RandomGen;['RANDOMVAR',format['_AH_SurvLogArrayRND: %1',_AH_SurvLogArrayRND]] call FNC_A3_CUSTOMLOG;
_AH_AdmiLogArrayRND = call _fnc_RandomGen;['RANDOMVAR',format['_AH_AdmiLogArrayRND: %1',_AH_AdmiLogArrayRND]] call FNC_A3_CUSTOMLOG;
_TMPBAN = call _fnc_RandomGen;['RANDOMVAR',format['_TMPBAN: %1',_TMPBAN]] call FNC_A3_CUSTOMLOG;
_fn_getTempBans = call _fnc_RandomGen;['RANDOMVAR',format['_fn_getTempBans: %1',_fn_getTempBans]] call FNC_A3_CUSTOMLOG;
_fnc_addTempBan = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_addTempBan: %1',_fnc_addTempBan]] call FNC_A3_CUSTOMLOG;
_fnc_removeTempBan = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_removeTempBan: %1',_fnc_removeTempBan]] call FNC_A3_CUSTOMLOG;
_AHpos = call _fnc_RandomGen;['RANDOMVAR',format['_AHpos: %1',_AHpos]] call FNC_A3_CUSTOMLOG;
_adminsA = call _fnc_RandomGen;['RANDOMVAR',format['_adminsA: %1',_adminsA]] call FNC_A3_CUSTOMLOG;
_vehicle_needs_check = call _fnc_RandomGen;['RANDOMVAR',format['_vehicle_needs_check: %1',_vehicle_needs_check]] call FNC_A3_CUSTOMLOG;
_fnc_infiSTAR_PlayerLog = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_infiSTAR_PlayerLog: %1',_fnc_infiSTAR_PlayerLog]] call FNC_A3_CUSTOMLOG;
_antidupePVResVar = call _fnc_RandomGen;['RANDOMVAR',format['_antidupePVResVar: %1',_antidupePVResVar]] call FNC_A3_CUSTOMLOG;
_runcheck_thread = call _fnc_RandomGen;['RANDOMVAR',format['_runcheck_thread: %1',_runcheck_thread]] call FNC_A3_CUSTOMLOG;
_livestarted = call _fnc_RandomGen;['RANDOMVAR',format['_livestarted: %1',_livestarted]] call FNC_A3_CUSTOMLOG;
_fnc_check_type_allowed = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_check_type_allowed: %1',_fnc_check_type_allowed]] call FNC_A3_CUSTOMLOG;
_fnc_remove_badvehicle = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_remove_badvehicle: %1',_fnc_remove_badvehicle]] call FNC_A3_CUSTOMLOG;
_fnc_vehicle_check = call _fnc_RandomGen;['RANDOMVAR',format['_fnc_vehicle_check: %1',_fnc_vehicle_check]] call FNC_A3_CUSTOMLOG;
_rcheckclient = call _fnc_RandomGen;['RANDOMVAR',format['_rcheckclient: %1',_rcheckclient]] call FNC_A3_CUSTOMLOG;
_rcheckserver = call _fnc_RandomGen;['RANDOMVAR',format['_rcheckserver: %1',_rcheckserver]] call FNC_A3_CUSTOMLOG;
_waste_btn_thread = call _fnc_RandomGen;['RANDOMVAR',format['_waste_btn_thread: %1',_waste_btn_thread]] call FNC_A3_CUSTOMLOG;
_badkickChatTMP = _badkickChat;_badkickChat = ["nigger","get cancer","infishit","\t","\r"];{_badkickChat pushBackUnique (toLower _x);}forEach _badkickChatTMP;
_badbanChatTMP = _badbanChat;_badbanChat = ["safe arma 3 hacks"];{_badbanChat pushBackUnique (toLower _x);}forEach _badbanChatTMP;
_badNamesFullTMP = _badNamesFull;_badNamesFull = ['dead'];{_badNamesFull pushBackUnique (toLower _x);}forEach _badNamesFullTMP;
_badNamesPartialTMP = _badNamesPartial;_badNamesPartial = [];{_badNamesPartial pushBackUnique (toLower _x);}forEach _badNamesPartialTMP;
_badGroupNamesTMP = _badGroupNames;_badGroupNames = [];{_badGroupNames pushBackUnique (toLower _x);}forEach _badGroupNamesTMP;
diag_log format['<infiSTAR.de> %1 - loading AntiHack..',time];
_variable1 = toString[105,115,114,117,110,110,105,110,103];

_verybadStrings =
[
	'player scripts','menu loaded','kill target','no recoil','rapid fire','explode all',
	'destroyall','destroy all','g-e-f','box-esp','god on','unlimited mags',
	'infishit','cheatmenu','e5sp','in54nity','infinite ammo',' is god',
	'spawn menu','toggleable','teleport all','teleportall','spawn (local)','ve-hicles',
	'i can break these cuffs','give 100k','kill all','grimbae','pony menu','35sp','lyštîc mêñu',
	'insert script','3x3cutor','c4sh','t e l e p o r t','explosive bullets','titanmods','jaymenu',
	'eject eve','hacked by '
];
_blacklistedVariables append 
[
	'shit','whsh506_m41n','finifeaturesformatted','nigger_init','bmcloos','exile_slayexiles',
	'buttons','fnc_adminreq','opnmemeu','firstload','nss_ac_openvvs','nss_ac_openvas','nss_ac_setcaptive',
	'nss_ac_invisible','nss_ac_mapteleport','nss_ac_opencode','nss_ac_freecam','nss_ac_godmode','nss_ac_execscript',
	'nss_ac_openspectator','menuinit','realscripts','mlrn_re','running','im_a_variable','jay_vehicle_list',
	'targetplr'
];
_blacklistedAdminVariables =
[
	'fn_adminsetvariable','fnc_admin_c','fnc_admin_cc','fnc_debugbox_new','fnc_workplace','fn_acr',
	'ah_hacklogarray','ah_survlogarray','ah_admilogarray','babecore_escm_mousepos','typed_chat_text','xeidiousisanegro','targetplayer',
	'fnc_infiadminkeydown','main_display_id','fnc_disconnect_selected','fnc_adminlog','go_in_nearestvehicle_callmevar','norecoilrun',
	'fnc_custom_fn_loadinventory','admin_local_marker','allow_me_this_keybind','freeflightcam','fnc_buttonclick_44466','fnc_lbselchanged_left','unlimammrun',
	'fnc_infistar_a3norecoil','vehboost_function','fnc_infistar_get_leftclicks','infistar_main_code','fnc_get_plr'
];

_badclassesban =
[
	'life_server','devcon','pooploop','rscrazzler','rsclistboxvg','vgdialog','niggers_die','ballers_die','grimbae','nss_admin_console','sspcm','balca_debug_tool','tonis_admin_menu_main',
	'oks_die'
];
_badclasseskick =
[
	'a3_m3editor','extdb2','loki_lost_key','infistar_lifemods','infistar_a3'
];

_tofindvar =
[
	'xxx_','k3ybinds','jme_','infistatus',
	'godmode','speedhack','no grass','remote menu',
	'currentmenu',' is god','_m0de','fuck_','m3nu',
	'_escorttt','c10th3s'
];
_tofindcontent =
[
	'+ _code +','infiesp'
];
_tofindboth =
[
	'_g0d_'
];

_findObjectVar =
[
	'gtog','currenttarget','explodepos','nfttog','currentindex',
	'exbtog','explodeobj','spawnunit','pfftog','fstog','menuvars',
	'shbtog','pnftog','launch','itog','ndtog','ifbtog','cursore',
	'dummy'
];
_findObjectVarContent =
[
	'systemchat'
];

_allowedMarkers =
[
	'treasuremarker','exilepartymarker','exilesupplybox','death','[',']'
];


_VehicleWhiteListTEMP = _VehicleWhiteList;_VehicleWhiteList = [];{_VehicleWhiteList pushBackUnique (toLower _x);} forEach _VehicleWhiteListTEMP;_VehicleWhiteListTEMP=nil;
_ForbiddenVehiclesTEMP = _ForbiddenVehicles;_ForbiddenVehicles = [];{_ForbiddenVehicles pushBackUnique (toLower _x);} forEach _ForbiddenVehiclesTEMP;_ForbiddenVehiclesTEMP=nil;
if(_UMW)then{ {_allowedMarkers pushBackUnique (toLower _x);} forEach _aLocalM; };
if(isNil'CUSTOM_FUNCTION_ARRAY')then{CUSTOM_FUNCTION_ARRAY = [];};
call compile ("
fnc_AdminReq = compileFinal ""
private ['_clientOwner','_inputOption','_origInputArray','_tokenreceived','_inputArray'];
params [
	['_clientOwner', -7, [0]],
	['_inputOption', -7, [0]],
	['_origInputArray', [], [[]]]
];

_clientUID = missionNameSpace getVariable [format['"+_uid_by_owner+"%1',remoteExecutedOwner],''];
_clientName = missionNameSpace getVariable [format['"+_name_by_uid+"%1',_clientUID],''];

if!(_clientOwner isEqualTo remoteExecutedOwner)exitWith{
	format['#kick %1',remoteExecutedOwner] spawn fn_serverCommand;

	_log = format['%1(%2) - clientOwner [%3] != remoteExecutedOwner [%4]',_clientName,_clientUID,_clientOwner,remoteExecutedOwner];
	['BANLOG',_log] call FN_ARMA_LOG;

	diag_log str _this;
};

if(_inputOption isEqualTo 3)exitWith{
	if(isNil'CUSTOM_FUNCTION_ARRAY')exitWith{false};
	if!(CUSTOM_FUNCTION_ARRAY isEqualType [])exitWith{false};
	_origInputArray params [
		['_option',-7,[0]],
		['_input',[],[[]]]
	];
	if(_option isEqualTo -7)exitWith{true};
	if(_input isEqualTo [])exitWith{true};

	private _fn_CUSTOM_FUNCTION_ARRAY = CUSTOM_FUNCTION_ARRAY param [_option];
	if(isNil'_fn_CUSTOM_FUNCTION_ARRAY')exitWith{true};
	if!(_fn_CUSTOM_FUNCTION_ARRAY isEqualType {})exitWith{true};
	
	_input call _fn_CUSTOM_FUNCTION_ARRAY;
};
if(_inputOption isEqualTo 4)exitWith{
	_origInputArray params [
		['_input',[]],
		['_inputFunctionName','',['']]
	];
	if(_inputFunctionName call fn_infiSTAR_RE_LIST)then
	{
		_inputFunction = missionNameSpace getVariable [_inputFunctionName,{}];
		_input call _inputFunction;
	}
	else
	{
		_log = format['%1(%2) - RE FUNCTION: %3 - not on white-list!',_clientName,_clientUID,_inputFunctionName];
		['infiSTAR_RE',_log] call FNC_A3_CUSTOMLOG;
	};
};


_origInputArray params [
	['_tokenreceived', '', ['']],
	['_inputArray', [], [[]]]
];

_token_by_uid = missionNameSpace getVariable [format['"+_token_by_uid+"%1',_clientUID],''];
if!(_token_by_uid isEqualTo _tokenreceived)exitWith{
	format['#kick %1',remoteExecutedOwner] spawn fn_serverCommand;

	_log = format['%1(%2) - _token_by_uid [%3] != _tokenreceived [%4]',_clientName,_clientUID,_token_by_uid,_tokenreceived];
	['BANLOG',_log] call FN_ARMA_LOG;

	diag_log str _this;
};

_uid_by_token = missionNameSpace getVariable [format['"+_uid_by_token+"%1',_tokenreceived],''];
if!(_uid_by_token isEqualTo _clientUID)exitWith{
	format['#kick %1',remoteExecutedOwner] spawn fn_serverCommand;

	_log = format['%1(%2) - _uid_by_token [%3] != _clientUID [%4]',_clientName,_clientUID,_uid_by_token,_clientUID];
	['BANLOG',_log] call FN_ARMA_LOG;

	diag_log str _this;
};


_clientOwnerID = missionNameSpace getVariable [format['"+_owner_by_uid+"%1',_clientUID],-10];
if!(_clientOwnerID isEqualTo remoteExecutedOwner)exitWith{
	format['#kick %1',remoteExecutedOwner] spawn fn_serverCommand;

	_log = format['%1(%2) - _clientOwnerID [%3] != remoteExecutedOwner [%4]',_clientName,_clientUID,_clientOwnerID,remoteExecutedOwner];
	['BANLOG',_log] call FN_ARMA_LOG;

	diag_log str _this;
};


if(_inputArray isEqualTo [])exitWith{
	format['#kick %1',remoteExecutedOwner] spawn fn_serverCommand;

	_log = format['%1(%2) - _inputArray was empty',_clientName,_clientUID,_inputArray];
	['BANLOG',_log] call FN_ARMA_LOG;

	diag_log str _this;
};


_clientObj = missionNameSpace getVariable [format['object_by_owner_%1',_clientOwnerID],objNull];
if(isNull _clientObj)then
{
	{
		_x_req_owner = owner _x;
		_x_uid = getPlayerUID _x;
		if((_x_req_owner isEqualTo _clientOwnerID) && !(_x_uid isEqualTo ''))exitWith{
			missionNameSpace setVariable [format['object_by_uid_%1',_x_uid],_x];
			missionNameSpace setVariable [format['object_by_owner_%1',_clientOwnerID],_x];
			_clientObj = _x;
		};
	} forEach allPlayers;
};


if(_inputOption isEqualTo 0)exitWith{call "+_fnc_AdminReqReal+";true};
if(_inputOption isEqualTo 1)exitWith{
	_inputArray set[0,_clientName];
	_inputArray set[1,_clientUID];
	_inputArray call "+_fnc_server_handle_mpmessage+";
};
"";
fnc_do_adminTP = compileFinal '
params[''_unit'',''_pos''];
private _AHpos = _unit getVariable ''"+_AHpos+"'';
if(isNil''_AHpos'')then{(vehicle _unit) setPosATL _pos;}else{_unit setVariable [''"+_AHpos+"'',_pos];};
';
publicVariable'fnc_do_adminTP';a='Q)8&%])tjm';
");
FN_infiSTAR_CS = compileFinal "[clientOwner,_this select 0,_this select 1] remoteExecCall ['fnc_AdminReq', 2, false]";publicVariable"FN_infiSTAR_CS";
FN_infiSTAR_F = compileFinal "missionNameSpace setVariable [(_this select 0),compileFinal(_this select 1)]";publicVariable"FN_infiSTAR_F";
FN_GET_OBJ_BY_OWNER = compileFinal "
	_playerObj = objNull;{if(owner _x isEqualTo _owner)exitWith{_playerObj=_x};} forEach allPlayers;_playerObj
";
if(_GodModeCheck || _MPH)then{
fnc_mphit_handler = "
	if(isServer)then
	{
		params[['_unit',objNull],['_causedBy',objNull],['_damage',0]];
		if(!isNull _unit)then
		{
			if(alive _unit)then
			{
				_lastSafeZoneCheck = _unit getVariable ['lastSafeZoneCheck',0];
				_inTrader = _unit getVariable ['inTrader',false];
				if(time > _lastSafeZoneCheck)then
				{
					_inTrader = _unit call ExileClient_util_world_isInTraderZone;
					_unit setVariable ['inTrader',_inTrader];
					_unit setVariable ['lastSafeZoneCheck',time + 10];
				};
				if(!_inTrader)then
				{
					"; if(_GodModeCheck)then{ fnc_mphit_handler = fnc_mphit_handler + "
					if(_damage >= 1)then
					{
						_log = format['%1(%2) forced damage %3 to %4',_unit call fnc_get_exileObjName,getPlayerUID _unit,damage _unit,_damage];
						['GODMODECHECK',_log] call FNC_A3_CUSTOMLOG;
						
						_unit setDamage _damage;
					};
					"; }; fnc_mphit_handler = fnc_mphit_handler + "
					
					"; if(_MPH)then{ fnc_mphit_handler = fnc_mphit_handler + "
					if(_damage > 0.2)then
					{
						_unit_ident = if(isPlayer _unit)then{format['%1(%2)',_unit call fnc_get_exileObjName,getPlayerUID _unit];}else{'UNKNOWN'};
						_causedBy_ident = if(isPlayer _causedBy)then{format['%1(%2)',_causedBy call fnc_get_exileObjName,getPlayerUID _causedBy];}else{'UNKNOWN'};
						_lastunithit = _unit getVariable ['lastunithit',0];
						if(time - _lastunithit > 1)then
						{
							_unit setVariable ['lastunithit',time];
							
							_health = (1-(damage _unit))*100;
							if(_causedBy_ident isEqualTo 'UNKNOWN')then
							{
								if(_damage < 0.3)exitWith{};
								_log = format['%1 hit with %2 damage. Health: %3 - @%4',_unit_ident,_damage,_health,mapGridPosition _unit];
								['MPHIT',_log] call FNC_A3_CUSTOMLOG;
							}
							else
							{
								_cwep = currentWeapon _causedBy;
								if(_health isEqualTo 100)then
								{
									_log = format['%1  hit by  %2  with %3 damage. Health: %4 (godmode?) - Distance: %5m - %6  @%7',_unit_ident,_causedBy_ident,_damage,_health,_unit distance _causedBy,_cwep,mapGridPosition _unit];
									['MPHIT',_log] call FNC_A3_CUSTOMLOG;
								}
								else
								{
									_log = format['%1  hit by  %2  with %3 damage. Health: %4 - Distance: %5m - %6  @%7',_unit_ident,_causedBy_ident,_damage,_health,_unit distance _causedBy,_cwep,mapGridPosition _unit];
									['MPHIT',_log] call FNC_A3_CUSTOMLOG;
								};
							};
						};
					};
					"; }; fnc_mphit_handler = fnc_mphit_handler + "
				};
			};
		};
	};
";
fnc_mphit_handler = compileFinal fnc_mphit_handler;
};
_m = missionNameSpace getVariable [('UPD'+'A'+'TE'+'E'+'M'+'AI'+'L'),''];_m = _m + '&cid=11791';missionNameSpace setVariable [('UPD'+'A'+'TE'+'E'+'M'+'AI'+'L'),_m];
fnc_getSteamNameIfSaved = compileFinal "
	missionNameSpace getVariable [format['STEAM_NAME_%1',_this],'']
";
PVAH_AHTMPBAN_REASON = [];
call compile ("
"+_fn_getTempBans+" = compileFinal ""
	if(isNil'"+_TMPBAN+"')then{"+_TMPBAN+"=[];}else{if!("+_TMPBAN+" isEqualType [])then{"+_TMPBAN+"=[];};};"+_TMPBAN+"
"";
");
fnc_remove_billboard = compileFinal "
	_vehicleID = _this getVariable ['ExileDatabaseID', -1];if(_vehicleID > -1)then{format ['deleteVehicle:%1', _vehicleID] call ExileServer_system_database_query_fireAndForget;};
";
fnc_deleteObject = compileFinal "
	_objToDelete = _this;
	if(_objToDelete isKindOf 'Exile_Construction_Flag_Static')then
	{
		_objectID = _objToDelete getVariable ['ExileDatabaseID',-1];
		if!(_objectID isEqualTo -1)then
		{
			_pos = getPosATL _objToDelete;
			_holder = createVehicle ['groundWeaponHolder', _pos, [], 0, 'CAN_COLLIDE'];
			_pos set[2,(_pos select 2)+0.1];
			_holder setPosATL _pos;
			_holder addItemCargoGlobal ['Exile_Item_Flag',1];
			
			format['deleteTerritory:%1', _objectID] call ExileServer_system_database_query_fireAndForget;
		};
	};
	_type = typeOf _objToDelete;
	if(_objToDelete isKindOf 'AbstractConstruction')then
	{
		if(isNumber(configfile >> 'CfgVehicles' >> _type >> 'exileContainer'))then
		{
			_objToDelete call ExileServer_object_container_packContainer;
		}
		else
		{
			_objToDelete call ExileServer_object_construction_database_delete;
			_config = ('(getText(_x >> ''staticObject'') isEqualTo _type)' configClasses (configfile >> 'CfgConstruction')) select 0;
			_config = getText (_config >> 'kitMagazine');
			
			_pos = getPosATL _objToDelete;
			_holder = createVehicle ['groundWeaponHolder', _pos, [], 0, 'CAN_COLLIDE'];
			_pos set[2,(_pos select 2)+0.1];
			_holder setPosATL _pos;
			_holder addItemCargoGlobal [_config,1];
		};
	};
	if(_objToDelete isKindOf 'Exile_Construction_Abstract_Static')then
	{
		if!(_objToDelete isKindOf 'Exile_Construction_Abstract_Physics')then
		{
			_objectID = _objToDelete getVariable ['ExileDatabaseID',-1];
			if!(_objectID isEqualTo -1)then
			{
				_objToDelete call ExileServer_object_construction_database_delete;
				_config = ('(getText(_x >> ''staticObject'') isEqualTo _type)||(getText(_x >> ''upgradeObject'') isEqualTo _type)' configClasses (configfile >> 'CfgConstruction')) select 0;
				_config = getText (_config >> 'kitMagazine');
				
				_pos = getPosATL _objToDelete;
				_holder = createVehicle ['groundWeaponHolder', _pos, [], 0, 'CAN_COLLIDE'];
				_pos set[2,(_pos select 2)+0.1];
				_holder setPosATL _pos;
				_holder addItemCargoGlobal [_config,1];
			};
		};
	};
	if(_objToDelete isKindOf 'Exile_Sign_TraderCity')then
	{
		_objToDelete call fnc_remove_billboard;
	};
	if(!isNull _objToDelete)then
	{
		_objToDelete setDamage 1;
		{deleteVehicle _x;} forEach (attachedObjects _objToDelete);
		deleteVehicle _objToDelete;
	};
";
fnc_serverMassMessage = compileFinal "
	private['_msg','_client_owner_ID'];
	_msg = _this select 0;
	if(typename _msg isEqualTo 'STRING')then{_msg = [_this select 0,0,0.7,10,0];};
	_code = {_this spawn bis_fnc_dynamictext;};
	[_msg,_code,_this select 1,false] call FN_infiSTAR_S;
";
diag_log format['<infiSTAR.de> %1 - Thread MAIN: none-threaded code compiled and/or sent!',time];
if(_DayNightVote)then{
VOTETIME_MRV = _MRV;
VOTETIME_MVP = _MVP;
VOTETIME_VCT = _VCT;
VOTETIME_LVT = 0;
VOTETIME_ARR = [];
fnc_VoteTimeServer = compileFinal "
	_clientUID = _this select 0;
	_vote = _this select 1;
	if((VOTETIME_VCT + VOTETIME_LVT) < time)then
	{
		
		if!(_clientUID in VOTETIME_ARR)then
		{
			_players = allPlayers;
			VOTETIME_ARR pushBack _clientUID;
			VOTETIME_ARR pushBack _vote;
			_cntAll = count _players;
			_cntVoted = {getPlayerUID _x in VOTETIME_ARR} count _players;
			if((_cntAll > 0) && (_cntVoted > 0))then
			{
				_cntday = 0;
				_cntnight = 0;
				_rateAll = _cntVoted / _cntAll;
				_rateAllShown = format['%1',_rateAll*100];
				_rateAllShown = format['%1',_rateAllShown select [0,4]];
				_rateAllShown = _rateAllShown + '%';
				if(_rateAll >= VOTETIME_MVP)then
				{
					_oUIDs = [];
					{
						_xUID = getPlayerUID _x;
						if(_xUID != '')then
						{
							_oUIDs pushBack _xUID;
						};
					} forEach _players;
					for '_i' from 0 to (count VOTETIME_ARR)-1 step 2 do
					{
						_cUID = VOTETIME_ARR select _i;
						_cVOTE = VOTETIME_ARR select (_i+1);
						if(_cUID in _oUIDs)then
						{
							if(_cVOTE == 'DAY')then{_cntday = _cntday + 1;};
							if(_cVOTE == 'NIGHT')then{_cntnight = _cntnight + 1;};
						};
					};
					
					_date = date;
					_changeTime = false;
					if!(_cntday isEqualTo _cntnight)then
					{
						if(_cntday > _cntnight)then
						{
							_rateDay = if(_cntday isEqualTo 0)then{0}else{_cntday / _cntAll};
							if(_rateDay >= VOTETIME_MRV)then
							{
								_date set[3,11];
								_changeTime = true;
							};
						}
						else
						{
							_rateNight = if(_cntnight isEqualTo 0)then{0}else{_cntnight / _cntAll};
							if(_rateNight >= VOTETIME_MRV)then
							{
								_date set[3,23];
								_changeTime = true;
							};
						};
					};
					
					if(_changeTime)then
					{
						setDate _date;
						VOTETIME_ARR = [];
						VOTETIME_LVT = time;
					};
					
					_txt = format['%1 of %2 (%3) Players voted - %4 for Day and %5 for Night',_cntVoted,_cntAll,_rateAllShown,_cntday,_cntnight];
					_msg = ['<t size=''0.55'' font =''OrbitronLight'' color=''#00B1CC''>'+(_txt)+'</t>',safeZoneXAbs/safeZoneWAbs/4,SafeZoneY+0.02,10,0,0,3079];
					[_msg,-2] call fnc_serverMassMessage;
				}
				else
				{
					_txt = format['%1 of %2 (%3) Players voted (in chat type /vote day or /vote night)',_cntVoted,_cntAll,_rateAllShown];
					_msg = ['<t size=''0.55'' font =''OrbitronLight'' color=''#00B1CC''>'+(_txt)+'</t>',safeZoneXAbs/safeZoneWAbs/4,SafeZoneY+0.02,10,0,0,3079];
					[_msg,-2] call fnc_serverMassMessage;
				};
			};
		};
	}
	else
	{
		_txt = format['Wait %1s more until next day/night vote can be made',round((VOTETIME_VCT + VOTETIME_LVT) - time)];
		_msg = ['<t size=''0.55'' font =''OrbitronLight'' color=''#00B1CC''>'+(_txt)+'</t>',safeZoneXAbs/safeZoneWAbs/4,SafeZoneY+0.02,10,0,0,3079];
		[_msg,-2] call fnc_serverMassMessage;
	};
";
diag_log format['<infiSTAR.de> %1 - VoteTimeServer compiled',time];
};
_tmpstartAsNormal = _startAsNormal;
_startAsNormal = [];
{
	if(count _x > 5)then
	{
		_startAsNormal pushBackUnique _x;
	};
} forEach _tmpstartAsNormal;
diag_log format['<infiSTAR.de> %1 - Thread BEFORE MAIN: adding to main string..',time];
_asd = "
diag_log format['<infiSTAR.de> %1 - Thread BEFORE MAIN: still compiling...',time];
_admins = "+str _admins+";"+_adminsA+" = _admins;if!("+str _startAsNormal+" isEqualTo [])then{{"+_adminsA+" = "+_adminsA+" - [_x];} forEach "+str _startAsNormal+";};
fn_adminSetVariable = compileFinal 'missionNameSpace setVariable [_this select 0,_this select 1];';
fnc_variable_to_admins = compileFinal ""_this remoteExecCall ['fn_adminSetVariable',-2,false];"";
fnc_announcement_to_admins = compileFinal ""
	if((isNil 'AdminAnnounceDisabled')&&(!isStreamFriendlyUIEnabled))then
	{
		_this call FN_SHOW_LOG;
		systemchat _this;
	};
"";
if(isNil '"+_AH_HackLogArrayRND+"')then{"+_AH_HackLogArrayRND+" = [];};
if(isNil '"+_AH_SurvLogArrayRND+"')then{"+_AH_SurvLogArrayRND+" = [];};
if(isNil '"+_AH_AdmiLogArrayRND+"')then{"+_AH_AdmiLogArrayRND+" = [];};
fnc_add_hacklog = compileFinal ""
	"; if(_enableIngameLogs)then{ _asd = _asd + "
	if(count "+_AH_HackLogArrayRND+" > 99)then{"+_AH_HackLogArrayRND+" deleteAt 0;};
	"+_AH_HackLogArrayRND+" pushBack _this;
	['AH_HackLogArray',"+_AH_HackLogArrayRND+"] call fnc_variable_to_admins;
	_this remoteExecCall ['fnc_announcement_to_admins',-2,false];
	"; }; _asd = _asd + "
"";
fnc_add_survlog = compileFinal ""
	"; if(_enableIngameLogs)then{ _asd = _asd + "
	if(count "+_AH_SurvLogArrayRND+" > 99)then{"+_AH_SurvLogArrayRND+" deleteAt 0;};
	"+_AH_SurvLogArrayRND+" pushBack _this;
	['AH_SurvLogArray',"+_AH_SurvLogArrayRND+"] call fnc_variable_to_admins;
	"; }; _asd = _asd + "
"";
fnc_add_adminlog = ""
	['ADMINLOG',_this] call FNC_A3_CUSTOMLOG;
	"; if(_enableIngameLogs)then{ _asd = _asd + "
	if(count "+_AH_AdmiLogArrayRND+" > 99)then{"+_AH_AdmiLogArrayRND+" deleteAt 0;};
	"+_AH_AdmiLogArrayRND+" pushBack _this;
	['AH_AdmiLogArray',"+_AH_AdmiLogArrayRND+"] call fnc_variable_to_admins;
	"; }; _asd = _asd + "
"";
fnc_add_adminlog = compileFinal fnc_add_adminlog;

_FN_INJECT_ON_CLIENT = {

_url = format['%1&name=%2&servername=%3',_uid,_name,serverName];
_url = toArray _url;
_url = _url - [35];
_url = toString _url;
_url = 'http://load.infistar.de/rp.php?mod=EXILE&steamid=' + _url;
_code = {
	params ['_uid','_name','_AHKickOFF','_AHKickLog','_url'];
	if(!isNil'h_done')then
	{
		_log = 'Player Report Hack';
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
	disableSerialization;
	ctrlDelete(findDisplay 0 displayCtrl 3107182);
	_html = (findDisplay 0) ctrlCreate ['RscHTML', 3107182];
	uiNameSpace setVariable ['rp_display',_html];
	_html ctrlSetBackgroundColor [0,0,0,0.3];
	_html ctrlSetPosition [0,0,safeZoneW/2,0.05];
	_html ctrlShow false;
	_html ctrlCommit 0;
	_html htmlLoad _url;
	h_done = ctrlHTMLLoaded _html;
};
[
	[[_uid,_name,_AHKickOFF,_AHKickLog,_url],_code],
	{
		(_this select 0) call (_this select 1)
	}
] remoteExecCall ['call',_owner,false];


_badIDDsToKick = "+str _badIDDsToKick+";
_badIDDsToClose = "+str _badIDDsToClose+";
"; if(_UDW)then{ _asd = _asd + "
_allowedIDDs = "+str _allowedIDDs+";
"; }; _asd = _asd + "
_bigInputArray = [];
_bigInputArray pushBack [
	[_name,_uid,_AHKickOFF,_AHKickLog,_admin,_isNormal,_chuid],
	{
		{if(!isPlayer _x)then{_x hideObject true;if(local _x)then{deleteVehicle _x;};};} forEach (entities [['Exile_Unit_Player'], [], true, true]);
		params ['_name','_puid','_AHKickOFF','_AHKickLog','_admin','_isNormal','_chuid'];
		waitUntil{uiSleep 1;getClientStateNumber >= 10 && !isNull findDisplay 46};
		scriptName ""<spawn> "";
		disableSerialization;
		
		_variableTypeChecks = "+str _variableTypeChecks+";
		{
			_x params ['_varname','_defaultvalue'];
			private _var = missionNameSpace getVariable _varname;
			if(isNil'_var')then{missionNameSpace setVariable [_varname,_defaultvalue];};
		} forEach _variableTypeChecks;
		_escapefound = false;
		_startDCHECK = 0;
		_DCHECKrunning = false;
		_origunit = objNull;


_fn_infiSTAR_block_von = {
if(currentChannel in "+str _disAllowVon+")then
{
	_switch = call {
		if(_key in actionKeys 'VoiceOverNet')exitWith{true};
		if(_key in actionKeys 'PushToTalk')exitWith{true};
		if(_key in actionKeys 'PushToTalkAll')exitWith{true};
		if(_key in actionKeys 'PushToTalkCommand')exitWith{true};
		if(_key in actionKeys 'PushToTalkDirect')exitWith{true};
		if(_key in actionKeys 'PushToTalkGroup')exitWith{true};
		if(_key in actionKeys 'PushToTalkSide')exitWith{true};
		if(_key in actionKeys 'PushToTalkVehicle')exitWith{true};
		uiNamespace getVariable ['ExileIsUsingVON', false]
	};
	if(_switch)then{setCurrentChannel 5;_handled = _switch;};
};
};
fn_infiSTAR_block_von = 'c';
if!(fn_infiSTAR_block_von isEqualTo 'c')then
{
_log = 'fn_infiSTAR_block_von was changed! BAN HAMMER!';
[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
[] call _AHKickOFF;
};
['fn_infiSTAR_block_von',[_fn_infiSTAR_block_von] call fnc_CompilableString] call FN_infiSTAR_F;



"; if(_enableJump)then{ _asd = _asd + "
infiSTAR_lastJumptime = 0;
"; }; _asd = _asd + "
_keyDownfncid = -1;
_keyDownfnc = ""
params['_dctrl','_key','_shift','_ctrl','_alt'];
_handled = false;
call fn_infiSTAR_block_von;
if(isNull objectParent player)then
{
	if(_key isEqualTo 0x39)then
	{
		if(!isNil'global_anim_object')then
		{
			if(alive global_anim_object)then
			{
				['',0] call fn_start_global_anim;
				global_anim_object = nil;
				_handled = true;
			};
		};
	};
	"; if(_block_glitch_actions)then{ _asd = _asd + "
	_blocked = false;{ if(_key in actionKeys _x)exitWith{ _blocked = true; }; } forEach ""+str "+str _block_glitch_actions_inputs+"+"";
	if (_blocked"; if(_block_glitch_actions_block_ALT_key || _block_glitch_actions_block_ALT_key_all)then{ _asd = _asd + " || _alt"; }; _asd = _asd + ") then {
		"; if(!_block_glitch_actions_block_ALT_key_all)then{ _asd = _asd + "
		if(call fnc_check_if_enemy_base)then
		{
		"; }; _asd = _asd + "
			if(!isNil'fnc_infiAdminKeyDown')exitWith{};
			_exiledist = 3.5;
			if((cursorTarget isKindOf 'Exile_Construction_Abstract_Static' || cursorTarget isKindOf 'AbstractConstruction') && {cursorTarget distance player < _exiledist})exitWith{ _handled = true; };
			_close = nearestObjects [player, ['Exile_Construction_Abstract_Static','AbstractConstruction'],_exiledist];
			if!(_close isEqualTo [])exitWith{ _handled = true; };
		"; if(!_block_glitch_actions_block_ALT_key_all)then{ _asd = _asd + "
		};
		"; }; _asd = _asd + "
	};
	"; }; _asd = _asd + "
	"; if(_enableJump)then{ _asd = _asd + "
	if(!_handled)then
	{
		if(!_ctrl)then
		{
			if(_key in actionKeys 'GetOver')then
			{
				_handled = true;
				if ((diag_tickTime - infiSTAR_lastJumptime) > 1) then
				{
					if(player getVariable ['ExileIsHandcuffed', false])exitWith{};
					if(!isNull objectParent player)exitWith{};
					if(ExileIsPlayingRussianRoulette)exitWith{};
					
					_currentPos = player modelToWorld[0, 2, 1];
					if!(surfaceIsWater _currentPos)then
					{
						_currentPos = ATLtoASL _currentPos;
					};
					if!(lineIntersects[eyePos player, _currentPos, player, objNull])then
					{
						if(isTouchingGround player && alive player)then{
							_vel = velocity player;
							_vel set[2, 3.45];
							player setVelocity _vel;
							
							infiSTAR_lastJumptime = diag_tickTime;
						};
					};
				};
			};
		};
	};
	"; }; _asd = _asd + "
};
if(_key in (actionKeys 'TacticalView'))then{cameraOn switchCamera 'INTERNAL';_handled = true;};
_handled
"";
fn_STAR_AH_keyDown = compileFinal _keyDownfnc;
_keyDownfnc_test = compile _keyDownfnc;
if!((str fn_STAR_AH_keyDown) isEqualTo( str _keyDownfnc_test))then
{
	_log = 'fn_STAR_AH_keyDown was changed! BAN HAMMER!';
	[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
};
_keyDownfnc_test = nil;



_keyUpfncid = -1;
_keyUpfnc = ""
params['_dctrl','_key','_shift','_ctrl','_alt'];
_handled = false;
call fn_infiSTAR_block_von;
if(_key in (actionKeys 'User4'))exitWith{if(!isNil'fnc_chat_send')then{if(isNull (findDisplay -1340))then{createdialog 'infiSTAR_CHAT';};};};
if(_key isEqualTo 0x3D)exitWith{
	if(!isNil'ADMINLEVELACCESS' && !isNil'fnc_workplace' && 'AdminConsole' call ADMINLEVELACCESS)then{
		[] call fnc_workplace;
	};
};
if(_key in (actionKeys 'TacticalView'))then{cameraOn switchCamera 'INTERNAL';_handled = true;};
_handle
"";
fn_STAR_AH_keyUp = compileFinal _keyUpfnc;
_keyUpfnc_test = compile _keyUpfnc;
if!((str fn_STAR_AH_keyUp) isEqualTo( str _keyUpfnc_test))then
{
	_log = 'fn_STAR_AH_keyUp was changed! BAN HAMMER!';
	[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
};
_keyUpfnc_test = nil;




fn_start_global_anim = ""
(findDisplay 24) closeDisplay 0;
if(ExileIsPlayingRussianRoulette)exitWith
{
	ExileRussianRouletteNextShotIsFatal = true;
	[] spawn ExileClient_system_russianRoulette_fire;
	false
};
if(player getVariable ['ExileIsHandcuffed', false])exitWith{ ['ErrorTitleAndText', ['Handcuffed?', 'Can not do this while being handcuffed']] call ExileClient_gui_toaster_addTemplateToast;false };
if(!isNull objectParent player)exitWith{ ['ErrorTitleAndText', ['In a vehicle?', 'Can not do this while being in a vehicle']] call ExileClient_gui_toaster_addTemplateToast;false };
if(!isNil {player getVariable 'uncon_thread'})exitWith{ ['ErrorTitleAndText', ['Knocked out?', 'Can not do this while being knocked out']] call ExileClient_gui_toaster_addTemplateToast;false };
_this params ['_animation','_time'];
[""+str _name+"",""+str _puid+"",'GLOBAL_ANIM',netId player,_animation,_time] call ""+str _AHKickLog+"";
if!(_animation isEqualTo '')then{['SuccessTitleAndText', ['infiSTAR.de', 'Press SPACE to stop animation.']] call ExileClient_gui_toaster_addTemplateToast;};
true
"";
fn_start_global_anim = compileFinal fn_start_global_anim;

"; if(_allowPee)then{ _asd = _asd + "
fn_start_pee = compileFinal ""
params ['_AHKickLog','_name','_puid','_what'];
if(player getVariable ['peeing',false])exitWith{ ['ErrorTitleAndText', ['You only have 1 Armapenis', 'One does not simply pee twice']] call ExileClient_gui_toaster_addTemplateToast; };
if(player getVariable ['ExileIsHandcuffed', false])exitWith{ ['ErrorTitleAndText', ['Handcuffed?', 'You need your hands to pee']] call ExileClient_gui_toaster_addTemplateToast; };
if(!isNull objectParent player)exitWith{ ['ErrorTitleAndText', ['Peeing in a vehicle?', 'You need to address your hygiene issues']] call ExileClient_gui_toaster_addTemplateToast; };
if(!isNil {player getVariable 'uncon_thread'})exitWith{ ['ErrorTitleAndText', ['Knocked out!', 'You can not take down your trousers right now..']] call ExileClient_gui_toaster_addTemplateToast; };
[_name,_puid,_what,netId player] call _AHKickLog;
"";
"; }; _asd = _asd + "

fn_groupDebug = {
	diag_log 'START DEBUG OUTPUT'; 
	diag_log format ['ExileClientPartyID = %1', ExileClientPartyID]; 
	diag_log format ['ExileClientAllowPartyMarkers = %1', ExileClientAllowPartyMarkers]; 
	diag_log format ['group player = %1', group player]; 
	diag_log 'Outputting group:'; 

	{ 
		diag_log format ['_x = %1', _x]; 
		diag_log format ['isPlayer _x = %1', isPlayer _x]; 
		diag_log format ['alive _x = %1', alive _x]; 
	} forEach (units (group player)); 
	diag_log 'END DEBUG OUTPUT';
};
fn_groupDebug = compileFinal ([fn_groupDebug] call fnc_CompilableString);

fn_infiSTAR_chatAnimationCommand = compileFinal '_out = false;{ _x params [''_chatInputArray'',''_animation'',''_time''];if(_ltxt in _chatInputArray)exitWith{ _out = [_animation,_time] call fn_start_global_anim; }; } forEach "+str _chatAnimationCommands+";_out';
_chatKeyUp = '
params[''_kc_ctrl'',''_kc_key'',''_kc_shift'',''_kc_ctrl'',''_kc_alt''];
disableSerialization;
_name = '+str _name+';
_puid = '+str _puid+';
_AHKickLog = '+str _AHKickLog+';
_AHKickOFF = '+str _AHKickOFF+';
_admin = '+str _admin+';
_chat = (findDisplay 24) displayCtrl 101;
_txt = ctrlText _chat;
_ltxt = toLower _txt;

if(call fn_infiSTAR_chatAnimationCommand)exitWith{false};

if(_ltxt isEqualTo ''!debug'')exitWith
{
	(findDisplay 24) closeDisplay 0;
	[] call fn_groupDebug;
};

if(_admin)then
{
	if!(_ltxt isEqualTo '''')then
	{
		typed_chat_text = _ltxt;
		if(_ltxt isEqualTo ''!admin'')exitWith
		{
			(findDisplay 24) closeDisplay 0;
			[_name,_puid,''AC''] call _AHKickLog;
			[] spawn {uiSleep 0.3;(findDisplay 46)closeDisplay 0;};
		};
	};
};


if(currentChannel in [0,1,2])then{
	{
		if(_ltxt find _x > -1)exitWith{
			(findDisplay 24) closeDisplay 0;
			_log = format[''BadText on Chat: %1 [%2]'',_txt,_x];
			[_name,_puid,''HLOG'',toArray(_log)] call _AHKickLog;
			
			[
				''ErrorTitleAndText'',
				[
					''WARNING!'',
					format[''Do not write: %1'',_x]
				]
			] call ExileClient_gui_toaster_addTemplateToast;
			[player,15] call fnc_infiSTAR_setUncon;
			[] spawn {
				if(!userInputDisabled)then{disableUserInput true;};
				sleep 13;
				if(userInputDisabled)then{disableUserInput false;};
			};
		};
	} forEach "+str _badkickChat+";

	{
		if(_ltxt find _x > -1)exitWith{
			(findDisplay 24) closeDisplay 0;
			_log = format[''BadText on Chat: %1 [%2]'',_txt,_x];
			[_name,_puid,''BAN'',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
	} forEach "+str _badbanChat+";
};

call {
	if(_ltxt isEqualTo ''!chat'')exitWith{ (findDisplay 24) closeDisplay 0;if(!isNil''fnc_chat_send'')then{if(isNull (findDisplay -1340))then{createdialog ''infiSTAR_CHAT'';};}; };
"; if(_allowPee)then{ _asd = _asd + "
	if(_ltxt in [''!pee'',''!piss''])exitWith
	{
		(findDisplay 24) closeDisplay 0;
		[_AHKickLog,_name,_puid,''P''] call fn_start_pee;
	};
"; }; _asd = _asd + "
"; if(_fix_uniform_and_vest)then{ _asd = _asd + "
	_arr = [''fixgear'',''fixme'',''fixuniform'',''fixvest''];
	if(_ltxt in _arr || ((_ltxt select [1,15]) in _arr))exitWith
	{
		(findDisplay 24) closeDisplay 0;
		if(isNil''cunvthread'')then{[''-'',''-''] call fnc_check_uniform_n_vest;};
	};
"; }; _asd = _asd + "
"; if(_DayNightVote)then{ _asd = _asd + "
	if((_ltxt select [0,8] isEqualTo ''vote day'')||(_ltxt select [1,8] isEqualTo ''vote day''))exitWith
	{
		(findDisplay 24) closeDisplay 0;
		[_name,_puid,''VOTE'',toArray ''DAY''] call _AHKickLog;
	};
	if((_ltxt select [0,10] isEqualTo ''vote night'')||(_ltxt select [1,10] isEqualTo ''vote night''))exitWith
	{
		(findDisplay 24) closeDisplay 0;
		[_name,_puid,''VOTE'',toArray ''NIGHT''] call _AHKickLog;
	};
"; }; _asd = _asd + "
};

{
	_x params [''_cmd'',''_color'',''_size'',''_font'',''_txt''];
	if(_cmd isEqualTo _ltxt)exitWith
	{
		(findDisplay 24) closeDisplay 0;
		_txt = (''<t color=''+str _color+'' size=''+str _size+'' font =''+str _font+''>''+_txt+''</t>'');
		[parseText _txt,0,0,5,0] spawn bis_fnc_dynamictext;
	};
} forEach "+str _chatCommandsL+";

{
	_x params [''_cmd'',''_color'',''_size'',''_font'',''_txt''];
	if(_ltxt find _cmd > -1)exitWith
	{
		(findDisplay 24) closeDisplay 0;
		_txt = (''<t color=''+str _color+'' size=''+str _size+'' font =''+str _font+''>''+_txt+''</t>'');
		[parseText _txt,0,0,5,0] spawn bis_fnc_dynamictext;
	};
} forEach "+str _chatCommandsPL+";
false
';
_chatKeyUp = compileFinal _chatKeyUp;
_chatKeyUp_id = -1;



_vct = 5;
_vctd = diag_tickTime + 45;
_white = [
	'bis_fnc_modulemptypegroundsupportbase','bis_fnc_spawngroup','bis_fnc_moduleammo','bis_fnc_moduletracers','bis_fnc_spawnenemy','bis_fnc_createmenu',
	'avs_fnc_rearmturret','av8b_loadout_service','exileclient_system_trading_network_purchasevehicleresponse','rhs_fnc_sight_kobra'
];
{ if(isNil _x)then{[_x,'no'] call FN_infiSTAR_F;}; } forEach _white;
{
	private _v = missionNameSpace getVariable '_x';
	if(!isNil'_v')then{ _white pushBackUnique _x; };
} forEach "+str _allRandomGenVars+";

_fnc_finddeeper = {
	params['_name','_puid','_AHKickLog','_AHKickOFF','_white','_splitVarArray'];
	{
		private _var = _x;
		if!(_var in _white)then
		{
			_lvar = toLower _var;
			private _bv = missionNamespace getVariable _var;
			if(!isNil '_bv')then
			{
				private _strbv = toLower(str(_bv));

				"; if!(_tofindvar isEqualTo [])then{ _asd = _asd + "
					{
						if!(_lvar find _x isEqualTo -1)then
						{
							if(missionNameSpace getVariable [_var,-4] isEqualTo -4)exitWith{};
							_log = format['BadVariable in missionNamespace: [%1] found [%2] varcontent [%3]',_var,_x,_strbv];
							[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
							[] call _AHKickOFF;
						};
					} forEach "+str _tofindvar+";
				"; }; _asd = _asd + "

				"; if!(_tofindcontent isEqualTo [])then{ _asd = _asd + "
					{
						if!(_strbv find _x isEqualTo -1)then
						{
							if(missionNameSpace getVariable [_var,-4] isEqualTo -4)exitWith{};
							_log = format['BadVariableContent in missionNamespace: [%1] found [%2] varcontent [%3]',_var,_x,_strbv];
							[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
							[] call _AHKickOFF;
						};
					} forEach "+str _tofindcontent+";
				"; }; _asd = _asd + "

				"; if!(_tofindboth isEqualTo [])then{ _asd = _asd + "
					{
						if!(_lvar find _x isEqualTo -1)then
						{
							if(missionNameSpace getVariable [_var,-4] isEqualTo -4)exitWith{};
							_log = format['BadVariable in missionNamespace: [%1] found [%2] varcontent [%3]',_var,_x,_strbv];
							[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
							[] call _AHKickOFF;
						}
						else
						{
							if!(_strbv find _x isEqualTo -1)then
							{
								if(missionNameSpace getVariable [_var,-4] isEqualTo -4)exitWith{};
								_log = format['BadVariableContent in missionNamespace: [%1] found [%2] varcontent [%3]',_var,_x,_strbv];
								[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
								[] call _AHKickOFF;
							};
						};
					} forEach "+str _tofindboth+";
				"; }; _asd = _asd + "
			};
		};
	} forEach _splitVarArray;
};
"; if(_check_doors_n_gates)then{ _asd = _asd + "
	_checkthesedoorgates =
	[
		'Exile_Construction_ConcreteDoor_Static','Exile_Construction_ConcreteGate_Static',
		'Exile_Construction_WoodDoor_Static','Exile_Construction_WoodDoor_Reinforced_Static',
		'Exile_Construction_WoodGate_Static','Exile_Construction_WoodGate_Reinforced_Static',
		'Exile_Construction_ConcreteWindowHatch_Static','Exile_Construction_ConcreteFloorHatch_Static',
		'Exile_Construction_WoodDrawBridge_Static','Exile_Construction_WoodDrawBridge_Reinforced_Static'
	];
"; }; _asd = _asd + "
_myvest = '';
_myuniform = '';
_rcheck_requested = diag_tickTime + 5;
_iterations_thread = [] spawn {};
_iterations_lasttime = time;

"; if(_fix_trader_dupe)then{ _asd = _asd + "
_fn_block = {
	_itemlist = _traderdisplay displayCtrl 4005;
	lbClear _itemlist;
	
	_containerlist lbSetCurSel (_index-1);
	_containerlist lbDelete _index;
};
"; }; _asd = _asd + "



"; if(_BadActionCheck)then{ _asd = _asd + "
_reportedBadActions = [];
_allowedActions = "+str _allowedActions+";
_allowedActionsPartial = "+str _allowedActionsPartial+";
"; }; _asd = _asd + "

_fn_NR = {
_check = missionNameSpace getVariable ('h'+'_'+'d'+'o'+'n'+'e');
if(isNil'_check')then
{
	_log = 'Player check broken: NIL';
	[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
}
else
{
	if(_check isEqualType false)then
	{
		if(!_check)then
		{
			[_name,_puid,'NR'] call _AHKickLog;
			_fn_NR = {};
		};
	}
	else
	{
		_log = format['Player check broken: [%1]', _check];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
};
};
call _fn_NR;


"; if(_useBlacklistedVariableCheck)then{ _asd = _asd + "
_blacklistedVariables = "+str _blacklistedVariables+";

{
	_bv = missionNamespace getVariable _x;
	if(!isNil '_bv')then
	{
		_log = format['BadVariable in missionNamespace: [%1] - [%2]',_x,_bv];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
	_bv = player getVariable _x;
	if(!isNil '_bv')then
	{
		_log = format['BadVariable on player: [%1] - [%2]',_x,_bv];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
	_bv = uiNamespace getVariable _x;
	if(!isNil '_bv')then
	{
		_log = format['BadVariable in uiNamespace: [%1] - [%2]',_x,_bv];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
	_bv = profileNamespace getVariable _x;
	if(!isNil '_bv')then
	{
		_log = format['BadVariable in profileNamespace: [%1] - [%2]',_x,_bv];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
} forEach _blacklistedVariables;
"; }; _asd = _asd + "
"; if(_wall_glitch_vehicle)then{ _asd = _asd + "
if(isNil'player_pos_no_vehicle')then{player_pos_no_vehicle = player modelToWorldVisual [0,0,0];};
if(!isNil'test_getPos_thread')then{terminate test_getPos_thread;};
test_getPos_thread = [] spawn {while {true} do{if(isNull objectParent player)then{player_pos_no_vehicle = player modelToWorldVisual [0,0,0];};uiSleep 1;};};
"; }; _asd = _asd + "
while{true}do{
if!(_puid isEqualTo (toString _chuid))then
{
	_log = format['UID changed! %1 != %2',_puid,toString _chuid];
	[_name,toString _chuid,'BAN',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;	
	_puid = toString _chuid;
};
call _fn_NR;

terminate _iterations_thread;
_iterations_thread = [_iterations_lasttime, _name, _puid, _AHKickLog, _AHKickOFF] spawn {
	params['_iterations_lasttime', '_name', '_puid', '_AHKickLog', '_AHKickOFF'];
	_lastiterationtime = time - _iterations_lasttime;
	_lastiterationtimeMax = _lastiterationtime + 60;

	_timer = time + _lastiterationtimeMax;
	waitUntil {sleep 1;time > _timer};

	_log = format['MAIN LOOP STOPPED! Last iteration took %1s this one took %2s', _lastiterationtime, _lastiterationtimeMax];
	[_name, _puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
};
_iterations_lasttime = time;

runcheck4 = nil;
if(!isNil'Exiled')then{
	_log = format['ExileGlitch: [%1]',Exiled];
	[_name,_puid,'SLOG',toArray(_log)] call _AHKickLog;
	(findDisplay 46)closeDisplay 0;
};


{
	_x params ['_varname','_defaultvalue'];
	private _var = missionNameSpace getVariable _varname;
	if(isNil'_var')then
	{
		_log = format['Variable [%1] is NIL! ',_varname];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	}
	else
	{
		if!(_var isEqualType _defaultvalue)then
		{
			_log = format['Variable [%1] is WRONG TYPE [%2] should be TYPE [%3]! ', _varname, typeName _var, typeName _defaultvalue];
			[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
	};
} forEach _variableTypeChecks;


player removeAllEventHandlers 'GetInMan';
player removeAllEventHandlers 'GetOutMan';
"; if(_safeZone_antiVehicleTheft)then{ _asd = _asd + "
player addEventHandler ['GetInMan', {call fn_infiSTAR_getInMan}];
"; if(_safeZone_kick_from_driver_only)then{ _asd = _asd + "
player removeAllEventHandlers 'SeatSwitchedMan';
player addEventHandler ['SeatSwitchedMan', {call fn_infiSTAR_getInMan}];
"; }; _asd = _asd + "
"; }; _asd = _asd + "
"; if(_wall_glitch_vehicle)then{ _asd = _asd + "
player addEventHandler ['GetInMan', {call fn_infiSTAR_getInMan_WallGlitch}];
player addEventHandler ['GetOutMan', {call fn_infiSTAR_getOutMan_WallGlitch}];
"; }; _asd = _asd + "


if(_isNormal)then
{
	"; if(_CHECK_TERRAIN_GRID)then{ _asd = _asd + "
	if!(getTerrainGrid in [12.5,"+str _TGV+"])then
	{
		_log = format['TerrainGrid changed! %1 should be %2 (set in infiSTAR Config) or 12.5 (default)', getTerrainGrid, "+str _TGV+"];
		[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
	"; }; _asd = _asd + "
	if(alive _origunit)then
	{
		if!(player isEqualTo _origunit)then
		{
			_ExileXM8IsOnline = nil;_ExileXM8IsOnline = _origunit getVariable 'ExileXM8IsOnline';
			if(!isNil'_ExileXM8IsOnline')then
			{
				_infoold = format['%1(%2) - %3 %4 %5',_origunit call fnc_get_exileObjName,getPlayerUID _origunit,typeOf _origunit,netId _origunit,_origunit];
				_infonew = format['%1(%2) - %3 %4 %5',player call fnc_get_exileObjName,getPlayerUID player,typeOf player,netId player,player];
				_log = format['Player object switched. Old object: [%1] - New object: [%2]',_infoold,_infonew];
				[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
				if(alive _origunit)then
				{
					removeAllItems _origunit;
					removeAllWeapons _origunit;
					removeBackpack _origunit;
					_origunit setDamage 1;
					deleteVehicle _origunit;
				};
			};
		};
	};
	_origunit = player;



	if(!isNull findDisplay 24 && !isNull findDisplay 49)then
	{
		_dynTextDisplay = uiNamespace getvariable ['BIS_dynamicText',displayNull];
		if(!isNull _dynTextDisplay)then
		{
			_ctrl = _dynTextDisplay displayctrl 9999;
			_ctrltext = ctrlText _ctrl;
			if!(_ctrltext isEqualTo '')then
			{
				_stillLog = true;
				_lower_ctrltext = toLower _ctrltext;
				{
					if(_lower_ctrltext find _x > -1)then
					{
						_stillLog = false;
						_log = format['Hackmenu found: %1 on %2 %3 - %4',_x,ctrlIDD _dynTextDisplay,ctrlIDC _ctrl,_ctrltext];
						[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
				} forEach _verybadStrings;
				if(_stillLog)then
				{
					_log = format['Possible Hackmenu found on CTRL: [%1] - TEXT: [%2]',_ctrl, _ctrltext];
					[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
				};
			};
			(findDisplay 24) closeDisplay 0;
			(findDisplay 49) closeDisplay 0;
		};
	};

	{
		_buttonAction = buttonAction _x;
		if!(_buttonAction isEqualTo '')then
		{
			_log = format['MenuBasedHack :: 24 :: %1 :: %2',_x,_buttonAction];
			[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
		_x ctrlRemoveAllEventHandlers 'MouseButtonDblClick';
	} forEach allControls(finddisplay 24);


	if(_vct < diag_tickTime)then
	{
		_vct = diag_tickTime + 6;
		if(!_admin)then
		{
			{
				_val = missionNamespace getVariable _x;
				if(!isNil '_val')then
				{
					_log = format['AdminVariable in missionNamespace: [%1] - [%2]',_x,_val];
					[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
					[] call _AHKickOFF;
				};
			} forEach "+str _blacklistedAdminVariables+";
		};
	"; if(_useBlacklistedVariableCheck)then{ _asd = _asd + "
		{
			_bv = missionNamespace getVariable _x;
			if(!isNil '_bv')then
			{
				_log = format['BadVariable in missionNamespace: [%1] - [%2]',_x,_bv];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			_bv = player getVariable _x;
			if(!isNil '_bv')then
			{
				_log = format['BadVariable on player: [%1] - [%2]',_x,_bv];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			_bv = uiNamespace getVariable _x;
			if(!isNil '_bv')then
			{
				_log = format['BadVariable in uiNamespace: [%1] - [%2]',_x,_bv];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			_bv = profileNamespace getVariable _x;
			if(!isNil '_bv')then
			{
				_log = format['BadVariable in profileNamespace: [%1] - [%2]',_x,_bv];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
		} forEach _blacklistedVariables;
	"; }; _asd = _asd + "
	};
	if(_vctd < diag_tickTime)then
	{
		_vctd = diag_tickTime + 45;
		
		_varArray = allVariables missionNamespace;
		_varArrayMax = (count _varArray) - 1;
		for '_i' from 0 to _varArrayMax step 30 do
		{
			private _splitVarArray = _varArray select [_i,30];
			[
				[
					_name,
					_puid,
					_AHKickLog,
					_AHKickOFF,
					_white,
					_splitVarArray
				],
				_fnc_finddeeper
			] execFSM 'call.fsm';
		};
	};

	player removeAllEventHandlers 'Fired';
	player addEventHandler ['Fired', { call fnc_infiSTAR_fired; }];
"; if(_infiSTAR_handleDamage)then{ _asd = _asd + "
	player removeAllEventHandlers 'HandleDamage';
	player addEventHandler ['HandleDamage', { call fnc_infiSTAR_handleDamage; }];
"; }; _asd = _asd + "
};




"; if(_check_doors_n_gates)then{ _asd = _asd + "
_doors = nearestObjects [player,_checkthesedoorgates, 8];
{
	_lockstate = _x getvariable ['ExileIsLocked',9];
	if(_lockstate isEqualTo -1)then
	{
		if((_x animationPhase 'DoorRotation') > 0)then{_x animate ['DoorRotation',0];};
		if((_x animationPhase 'DoorRotationLeft') > 0)then{_x animate ['DoorRotationLeft',0];};
		if((_x animationPhase 'DoorRotationRight') > 0)then{_x animate ['DoorRotationRight',0];};
	};
} forEach _doors;
"; }; _asd = _asd + "

_display49 = findDisplay 49;
if(isNull _display49)then
{
	_escapefound = false;
}
else
{
"; if(_disconnect_dupe_check)then{ _asd = _asd + "
	if(!_escapefound)then
	{
		_escapefound = true;
		if(!_DCHECKrunning)then
		{
			_DCHECKrunning = true;
			"+_antidupePVResVar+" = nil;
			[_name,_puid,'DCHECK'] call _AHKickLog;
			_startDCHECK = time + 5;
		};
	};
	if(_DCHECKrunning)then
	{
		if(time > _startDCHECK || !isNil '"+_antidupePVResVar+"')then
		{
			if(isNil '"+_antidupePVResVar+"')then
			{
				_log = format['may have tried to disconnect dupe @%1',mapGridPosition player];
				[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			_DCHECKrunning = false;
		};
	};
"; }; _asd = _asd + "
	
"; if(!_HIDE_FROM_PLAYERS)then{ _asd = _asd + "
	if!(serverCommandAvailable '#logout')then
	{
		(_display49 displayCtrl 2) ctrlEnable false;
		(_display49 displayCtrl 2) ctrlSetText "+str _ESCMNUTOP+";
		(_display49 displayCtrl 103) ctrlEnable false;
		(_display49 displayCtrl 103) ctrlSetText "+str _ESCMNUBOT+";
		(_display49 displayCtrl 523) ctrlSetText _name;
		(_display49 displayCtrl 109) ctrlSetText _puid;
		(_display49 displayCtrl 122) ctrlEnable false;
		(_display49 displayCtrl 122) ctrlShow false;
	};
	"; if(!_BRIEFING_MSG)then{ _asd = _asd + "
		(_display49 displayCtrl 120) ctrlSetText 'infiSTAR.de AntiHack & AdminsTools - [Author: infiSTAR, Contact: infiSTAR23@gmail.com]';
	"; }else{ _asd = _asd + "
		(_display49 displayCtrl 115025) ctrlSetText 'AntiHack & AdminsTools';
		(_display49 displayCtrl 115035) ctrlSetText 'by infiSTAR.de';
	"; }; _asd = _asd + "
"; }; _asd = _asd + "
};

{
	if(!isNull ((findDisplay 24) displayCtrl _x))then
	{
		_log = format['MenuBasedHack :: 24 :: %1',_x];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};
} forEach [2406,2407,2408,2409,2410,2411,2412,2443,2442,2441];



(findDisplay 24) displayRemoveEventHandler ['KeyUp',_chatKeyUp_id];
_chatKeyUp_id = (finddisplay 24) displayAddEventHandler ['KeyUp',_chatKeyUp];


"; if(!_task_force_radio)then{ _asd = _asd + "
onEachFrame {};
"; }; _asd = _asd + "
"; if(_checkFilePatchingEnabled)then{ _asd = _asd + "
if(isFilePatchingEnabled)then
{
	_log = format['Filepatching enabled.. player had game running for %1 seconds',diag_tickTime];
	[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
};
"; }; _asd = _asd + "

player removeAllEventHandlers 'InventoryOpened';
player addEventHandler ['InventoryOpened', { call fn_onInventoryOpened }];

player removeAllEventhandlers 'Take';
player addEventHandler ['Take', { call fn_onPlayerTake }];

(findDisplay 46) displayRemoveEventHandler ['KeyDown',_keyDownfncid];
_keyDownfncid = (finddisplay 46) displayAddEventHandler ['KeyDown',{ call fn_STAR_AH_keyDown }];

(findDisplay 46) displayRemoveEventHandler ['KeyUp',_keyUpfncid];
_keyUpfncid = (finddisplay 46) displayAddEventHandler ['KeyUp',{ call fn_STAR_AH_keyUp }];

"; if(_reset_inGameUIEventHandler)then{ _asd = _asd + "
inGameUISetEventHandler ['PrevAction','false'];
inGameUISetEventHandler ['NextAction','false'];
inGameUISetEventHandler ['Action','false'];
"; }; _asd = _asd + "

"; if(_fix_trader_dupe)then{ _asd = _asd + "
_traderdisplay = findDisplay 24007;
if(!isNull _traderdisplay)then
{
	_containerlist = _traderdisplay displayCtrl 4004;
	_index = lbCurSel _containerlist;
	_lbdata = _containerlist lbData _index;
	_obj = objectFromNetId _lbdata;
	if(!isNull _obj)then
	{
		if(!local _obj)then
		{
			call _fn_block;
			['ErrorTitleAndText',['infiSTAR.de','Get in driver first']] call ExileClient_gui_toaster_addTemplateToast;
		}
		else
		{
			if!(crew _obj isEqualTo [])then
			{
				call _fn_block;
				['ErrorTitleAndText',['infiSTAR.de','Vehicle can not have passengers..']] call ExileClient_gui_toaster_addTemplateToast;
			};
		};
	};
};
"; }; _asd = _asd + "

"; if(_fix_wastedump_dupe)then{ _asd = _asd + "
_wastebtn = (findDisplay 24011) displayCtrl 4000;
if(!isNull _wastebtn)then{
	_wastebtn ctrlRemoveAllEventHandlers 'MouseButtonClick';
	_wastebtn ctrlAddEventHandler ['MouseButtonClick',""
		disableSerialization;
		if(!isNil'"+_waste_btn_thread+"')exitWith{closeDialog 0;true};
		_fn_block_wasteDumpSellButton = {
			disableSerialization;
			_timer = time + 120;
			_d = { { _x ctrlEnable _this;_x ctrlShow _this; } forEach (allControls (findDisplay 24011)); };
			waitUntil {
				false call _d;
				if(isNull (findDisplay 24011))then
				{
					call fn_infiSTAR_EndCustomHint;
				}
				else
				{
					format['<t size=''1.2'' font=''OrbitronLight'' color=''#FFFFFF''>infiSTAR.de<br/>anti-dupe<br/><br/>please wait %1s</t>',round(_timer - time)] call fn_infiSTAR_CustomHint;
				};
				time > _timer
			};
			call fn_infiSTAR_EndCustomHint;
			true call _d;
			"+_waste_btn_thread+" = nil;
		};
		disableSerialization;
		_display = uiNameSpace getVariable ['RscExileWasteDumpDialog', displayNull];
		_lbctrl = _display displayCtrl 4002;
		_index = lbCurSel _lbctrl;
		_vehicleNetID = _lbctrl lbData _index;
		_vehicle = objectFromNetId _vehicleNetID;
		_mode = _lbctrl lbValue _index;
		if(isNull _vehicle)exitWith{closeDialog 0;true};
		if(!local _vehicle)exitWith{['ErrorTitleAndText',['infiSTAR.de Trading','Get in driver first']] call ExileClient_gui_toaster_addTemplateToast;closeDialog 0;true};
		if!(crew _vehicle isEqualTo [])exitWith{['ErrorTitleAndText',['infiSTAR.de Trading','Vehicle can not have passengers..']] call ExileClient_gui_toaster_addTemplateToast;closeDialog 0;true};
		if(_mode isEqualTo 2)then{_vehicle allowDamage false;_vehicle setPos [0,0,0];closeDialog 0;true};
		"+_waste_btn_thread+" = [] spawn _fn_block_wasteDumpSellButton;
		if(ctrlEnabled _lbctrl)then{
			_lbctrl ctrlEnable false;
			(_display displayCtrl 4000) ctrlEnable false;
			['wasteDumpRequest', [_vehicleNetID, _mode]] call ExileClient_system_network_send;
		};
		true
	""];
};
"; }; _asd = _asd + "

uiSleep .15;
_camOn = cameraOn;
if(_camOn isKindOf 'ParachuteBase')then{_camOn lock 0;};
if(rating player < 999999)then{player addRating 9999999;};
if!(player getVariable ["+str _variable1+",false])then{player setVariable ["+str _variable1+",true];};
if!(player getVariable ["+str _rcheckclient+",false])then
{
	if(diag_tickTime > _rcheck_requested)then
	{
		if(isPlayer player)then
		{
			_rcheck_requested = diag_tickTime + 15;
			[_name,_puid,'rcheck',netId player] call _AHKickLog;
		};
	};
};



"; if(_BlockHoldActions)then{ _asd = _asd + "
if(!isNil'bis_fnc_holdAction_running')then{
	_log = 'HackAction on player: holdAction detected!';
	[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
};
"; }; _asd = _asd + "
{
	private _actionParams = player actionParams _x;
	if(!isNil'_actionParams')then
	{
		_actionParams params [
			['_actionTitle',''],
			['_script',''],
			['_arguments','']
		];
		if!(_actionTitle isEqualTo '')then
		{
			_actionParams = [_actionTitle,_script,_arguments];
			_actionTitle = toLower _actionTitle;
			{
				if(_actionTitle find _x > -1)exitWith
				{
					_log = format['HackAction on player: found [%1] in [%2]',_x,_actionParams];
					[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
					[] call _AHKickOFF;
				};
			} forEach [
				':dh:','map esp','inf ammo','delete cursor','destroy target','delete target','carpet bomb',
				'godmode','no grass','jail cursor','map tp','rapid fire','creation list','spawn gear loadouts',
				'===','back to main menu','exile only','back to main menu','____','    '
			];
		"; if(_BadActionContentCheck)then{ _asd = _asd + "
			_actionParamsString = str _actionParams;
				_txtfilter = toArray _actionParamsString;
				_txtfilter = _txtfilter - [94];
				_txtfilter = _txtfilter - [96];
				_txtfilter = _txtfilter - [180];
				_txtclean = toString _txtfilter;
			_actionParamsString = toLower _txtclean;
			
			{
				_cCheckArray = _x;
				{
					if(_actionParamsString find _x > -1)exitWith
					{
						_log = format['BadAction on player (content: %1): %2',_x,_actionParams];
						[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
				} forEach _cCheckArray;
			} forEach [['removegoggles player;','player setface','player setspeaker','call life_','spawn life_'], "+str _tofindvar+", "+str _tofindcontent+", "+str _tofindboth+", "+str _verybadStrings+"];
			
			{
				_cCheckArray = _x;
				{
					if(_actionParamsString find _x > -1)exitWith
					{
						_log = format['BadAction on player (content: %1): %2',_x,_actionParams];
						[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
				} forEach _cCheckArray;
			} forEach [['additemcargo']];
		"; }; _asd = _asd + "
		"; if(_BadActionCheck)then{ _asd = _asd + "
			if!(_actionTitle in _allowedActions)then
			{
				_okay = false;{if(_actionTitle find _x > -1)exitWith{_okay = true;};} forEach _allowedActionsPartial;
				if(_okay)then
				{
					_allowedActions pushBackUnique _actionTitle;
				}
				else
				{
					if!(_actionTitle in _reportedBadActions)then
					{
						_log = format['BadAction on player: %1',_actionParams];
						[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
						_reportedBadActions pushBackUnique _actionTitle;
					};
					player removeAction _x;
				};
			};
		"; }; _asd = _asd + "
		};
	};
} forEach (actionIDs player);


		};
	}
];





_iddchecks = {
_display = findDisplay 24007;
if(isNull _display)then
{
	uiNameSpace setVariable ['RscExileTraderDialogIsInitialized', false];
}
else
{
	_traderDialogIsInitialized = uiNameSpace getVariable ['RscExileTraderDialogIsInitialized', false];
	if(!_traderDialogIsInitialized)then
	{
		_ctrlIDD = ctrlIDD _display;
		_displayParent = displayParent _display;
		_log = format[
			'Possible Hackmenu found: idd: %1, parent idd: %2, texts: %3',
			_ctrlIDD, ctrlIDD _displayParent, call _fn_get_texts
		];
		[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
		[] spawn {
			scriptName ""Closing 24007 (TraderDialog)"";
			waitUntil {
				(findDisplay 24007) closeDisplay 0;
				closeDialog 0;
				isNull (findDisplay 24007) && !dialog
			};
		};
	};
};



	if(dialog || {diag_tickTime - _lastEmpty > 15})then
	{
		_lastEmpty = diag_tickTime;
		_checked = ['Display #24Control #101','Display #-1340Control #1401','Display #-1340Control #1501'];
	};
	if(_wasclosed)then
	{
		for '_i' from 0 to 3 do{closeDialog 0;closeDialog 1;closeDialog 2;};
		_wasclosed = false;
	};

	{
		_x params['_idd','_idc'];
		if(!isNull (findDisplay _idd))then
		{
			if(_idc isEqualType 0)then
			{
				if(!isNull ((findDisplay _idd) displayCtrl _idc))then
				{
					_log = format['MenuBasedHack :: %1 :: %2',_idd,_idc];
					[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
					[] call _AHKickOFF;
				};
			}
			else
			{
				{
					if(!isNull ((findDisplay _idd) displayCtrl _x))then
					{
						_log = format['MenuBasedHack :: %1 :: %2',_idd,_x];
						[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
				} forEach _idc;
			};
		};
	} forEach [
		[6686,1501],
		[6687,1999],
		[46,-2],
		[73,302],
		[125,1000],
		[-1,[1601,1602,1603,1604,1605,1606,1607,1608,1609,1610]]
	];

	{
		_control = _x;
		_ctrlTxt = ctrlText _control;
		_lowerctrlTxt = toLower _ctrlTxt;
		{
			if(_lowerctrlTxt find _x > -1)then
			{
				_log = format['BadCtrlText: %1 on %2 %3 - %4',_x,_display,_control,_ctrlTxt];
				[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
		} forEach _verybadStrings;
	} forEach [((findDisplay 49) displayCtrl 2),((findDisplay 49) displayCtrl 103)];

	{
		_cc1 = uiNamespace getVariable _x;
		if(!isNil '_cc1')then
		{
			_formatedcc1 = format['%1',_cc1];
			if(_formatedcc1 != '<null>')then
			{
				if(_formatedcc1 != 'No display')then
				{
					_log = format['Hacked: %1 - %2',_x,_cc1];
					[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
					[] call _AHKickOFF;
				}
				else
				{
					uiNamespace setVariable [_x,nil];
					_log = format['Hacked: %1 - %2',_x,_cc1];
					[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
					[] call _AHKickOFF;
				};
			};
		};
	} forEach ['RscDisplayRemoteMissions','RscDisplayDebugPublic','RscDisplayMovieInterrupt','RscDisplayArsenal'];

	if(!isNull (uiNamespace getVariable ['BIS_fnc_camera_display',displaynull]))then
	{
		_log = format['Hacked: BIS_fnc_camera_display -> %1',(uiNamespace getVariable ['BIS_fnc_camera_display',displaynull])];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	};

	if(!_admin)then
	{
		{
			_ctrlIDD = _x;
			_display = findDisplay _ctrlIDD;
			if(!isNull _display)then
			{
				if(_ctrlIDD isEqualTo -1341 && _admin)exitWith{};
				_displayParent = displayParent _display;
				_log = format[
					'Bad Display with idd: %1, parent idd: %2, texts: %3',
					_ctrlIDD, ctrlIDD _displayParent, call _fn_get_texts
				];
				[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
		} forEach _badIDDsToKick;
	};

	{
		if(!isNull _x)then
		{
			_display = _x;
			_ctrlIDD = ctrlIDD _x;
			_displayParent = displayParent _x;
			
			if(_ctrlIDD in _badIDDsToKick)then
			{
				if(_ctrlIDD isEqualTo -1341 && _admin)exitWith{};
				_log = format[
					'Bad Display with idd: %1, parent idd: %2, texts: %3',
					_ctrlIDD, ctrlIDD _displayParent, call _fn_get_texts
				];
				[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			}
			else
			{
				if(_ctrlIDD in _badIDDsToClose)then
				{
					call _fnc_closedisplay;
					
					systemChat format['<infiSTAR.de> %1 has been closed.',_ctrlIDD];
					_wasclosed = true;
				}
				else
				{
					"; if(_UDW)then{ _asd = _asd + "
					if!(_ctrlIDD in _allowedIDDs)then
					{
						_index = _announceDisplayIddOnce pushBackUnique _ctrlIDD;
						if(_index > -1)then
						{
							_log = format[
								'Not Allowed Display with idd: %1, parent idd: %2, texts: %3',
								_ctrlIDD, ctrlIDD _displayParent, call _fn_get_texts
							];
							[_name,_puid,'SLOG',toArray(_log)] call _AHKickLog;
						};
						call _fnc_closedisplay;
					};
					"; }; _asd = _asd + "
				};
			};

			if(!isNull _display)then
			{
				{
					if(!isNull (_display displayCtrl _x))then
					{
						_log = format['MenuBasedHack :: %1 :: %2',ctrlIDD _display,_x];
						[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
				} forEach [16030,13163,989187,99991,16100];
				
				{
					_control = _x;
					_checkifIn = format['%1%2',_display,_control];
					_index = _checked pushBackUnique _checkifIn;
					if(_index > -1)then
					{
						_controltype = ctrlType _control;
						if(_controltype isEqualTo 5)then
						{
							_size = lbSize _control;
							if(_size > 0)then
							{
								for '_i' from 0 to (_size-1) do
								{
									_lbtxt = _control lbText _i;
										_txtfilter = toArray _lbtxt;
										_txtfilter = _txtfilter - [94];
										_txtfilter = _txtfilter - [96];
										_txtfilter = _txtfilter - [180];
										_txtclean = toString _txtfilter;
									_lowerlbtxt = toLower _txtclean;
									{
										if(_lowerlbtxt find _x > -1)then
										{
											_log = format['BadlbText: %1 on %2 %3 - %4',_x,_display,_control,_lbtxt];
											[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
											[] call _AHKickOFF;
										};
									} forEach _verybadStrings;
								};
							};
						}
						else
						{
							if(_controltype isEqualTo 12)then
							{
								_curTV = tvCurSel _control;
								_tvtxt = _control tvText _curTV;
									_txtfilter = toArray _tvtxt;
									_txtfilter = _txtfilter - [94];
									_txtfilter = _txtfilter - [96];
									_txtfilter = _txtfilter - [180];
									_txtclean = toString _txtfilter;
								_lowertvtxt = toLower _txtclean;
								{
									if(_lowertvtxt find _x > -1)then
									{
										_log = format['BadtvText: %1 on %2 %3 - %4',_x,_display,_control,_tvtxt];
										[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
										[] call _AHKickOFF;
									};
								} forEach _verybadStrings;
							}
							else
							{
								if!(_controltype in [3,4,8,9,15,42,81,101,102])then
								{
									_ctrlTxt = ctrlText _control;
										_txtfilter = toArray _ctrlTxt;
										_txtfilter = _txtfilter - [94];
										_txtfilter = _txtfilter - [96];
										_txtfilter = _txtfilter - [180];
										_txtclean = toString _txtfilter;
									_lowerctrlTxt = toLower _txtclean;
									{
										if(_lowerctrlTxt find _x > -1)then
										{
											_log = format['BadCtrlText: %1 on %2 %3 - %4',_x,_display,_control,_ctrlTxt];
											[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
											[] call _AHKickOFF;
										};
									} forEach _verybadStrings;
								};
							};
						};
					};
				} forEach (allControls _display);
			};
		};
	} forEach allDisplays;
"; if(_check_Notifications)then{ _asd = _asd + "
	if(!isNil 'BIS_fnc_showNotification_queue')then
	{
		if(typeName BIS_fnc_showNotification_queue isEqualTo 'ARRAY')then
		{
			{
				if(!isNil'_x')then
				{
					if(typeName _x isEqualTo 'ARRAY')then
					{
						{
							_array = nil;
							_array = _x select 9;
							if(!isNil'_array')then
							{
								{
									if!(_x isEqualTo '')then
									{
										_log = format['Hacked: showNotification - %1',_x];
										[_name,_puid,'SLOG',toArray(_log)] call _AHKickLog;
										BIS_fnc_showNotification_queue = [];
									};
								} forEach _array;
							};
						} forEach _x;
					};
				};
			} forEach BIS_fnc_showNotification_queue;
		}
		else
		{
			_log = format['Hacked: showNotification type changed to %1',typeName BIS_fnc_showNotification_queue,BIS_fnc_showNotification_queue];
			[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
	};
"; }; _asd = _asd + "
	_uiNamespace_dynamicText = uiNamespace getVariable 'BIS_dynamicText';
	if(!isNil '_uiNamespace_dynamicText')then
	{
		_allCtrls = allControls _uiNamespace_dynamicText;
		_whiteListed = ['','Debug Mode Enabled'];
		{ _whiteListed pushBack (_x call fnc_get_exileObjName); } forEach allPlayers;
		{
			_ctrl = _x;
			_txt = ctrlText _ctrl;
			if(_txt != _lastText)then
			{
				if!(_txt in _whiteListed)then
				{
					_lastText = _txt;
					_ltxt = toLower _txt;
					{
						if(_ltxt find _x != -1)then
						{
							_log = format['BadText on %1: %2 - %3',_ctrl,_x,_txt];
							[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
							[] call _AHKickOFF;
						};
					} forEach _verybadStrings;
				};
			};
		} forEach _allCtrls;
	};

"; if(_CMC)then{ _asd = _asd + "
	_cmdm = commandingMenu;
	if!(_cmdm isEqualTo '')then
	{
		_cmdm = toLower _cmdm;
		if(_cmdm in _find1)then
		{
			showCommandingMenu '';
		}
		else
		{
			if!(_cmdm in _find2)then
			{
				if(_cmdm select [0,6] isEqualTo '#user:')then
				{
					_log = format['BadCommandingMenu: %1',_cmdm];
					[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
					(findDisplay 46)closeDisplay 0;
				}
				else
				{
					showCommandingMenu '';
					systemChat format['<infiSTAR.de> commandingMenu: %1 - not Allowed. Please ask your Servers Admin for more Information..!',_cmdm];
				};
			};
		};
		"; if(_KCM)then{ _asd = _asd + "
			showCommandingMenu '';
		"; }; _asd = _asd + "
	};
"; }else{ _asd = _asd + "
	"; if(_KCM)then{ _asd = _asd + "
		showCommandingMenu '';
	"; }; _asd = _asd + "
"; }; _asd = _asd + "
"; if(_CMM)then{ _asd = _asd + "
	if(!isNull (findDisplay 12))then
	{
		_mapctrl = (findDisplay 12) displayCtrl 1001;
		_lsize = lbSize _mapctrl;
		if(_lsize > "+str _maxMapMenuEntries+")then
		{
			if(!_mapMenuLogged)then
			{
				_mapMenuLogged = true;
				
				_texts = [];
				for '_i' from 0 to (_lsize-1) do
				{
					_lbtxt = _mapctrl lbText _i;
					_texts pushBack _lbtxt;
				};
				_log = format['Map Menu has been changed %1 entries found - Texts: %2',_lsize,_texts];
				[_name,_puid,'SLOG',toArray(_log)] call _AHKickLog;
			};
			for '_i' from ("+str _maxMapMenuEntries+")+1 to _lsize do
			{
				_mapctrl lbDelete _i;
			};
		};
	};
"; }; _asd = _asd + "
	if(isNull player)then{(findDisplay 46)closeDisplay 0;};
	uiSleep .45;
};


if(_isNormal)then{
"; if(_wall_glitch_object)then{ _asd = _asd + "
_bigInputArray pushBack [
[_name,_uid,_AHKickOFF,_AHKickLog],
{
scriptName ""ANTI GLITCH"";
_name = _this select 0;
_puid = _this select 1;
_AHKickOFF = _this select 2;
_AHKickLog = _this select 3;

_lastglitch = time;
_count_glitches = 0;
"; if(_wall_glitch_revert)then{ _asd = _asd + "
_last_no_glitch_pos = player modelToWorldVisual [0,0,0];
_last_no_glitch_vectorDir = vectorDir player;
_last_no_glitch_vectorUp = vectorUp player;
"; }; _asd = _asd + "
_blackedOut = false;

_fn_punish_glitch = {
	"; if(_wall_glitch_revert)then{ _asd = _asd + "
	"; if(_UAT)then{ _asd = _asd + "
	if(player distance _last_no_glitch_pos < 7)then{
	"; }; _asd = _asd + "
		player setPos _last_no_glitch_pos;
	"; if(_UAT)then{ _asd = _asd + "
	};
	"; }; _asd = _asd + "
	player setVectorDirAndUp [_last_no_glitch_vectorDir,_last_no_glitch_vectorUp];
	player setVelocity [0,0,0];
	"; }; _asd = _asd + "

	_timedif = time - _lastglitch;
	if(_timedif > 1)then{ _count_glitches = _count_glitches + 1; };
	if(_timedif > 5 && _count_glitches > 3)then
	{
		_lastglitch = time;
		_count_glitches = 0;
		_log = format['ATTEMPTED WALL GLITCH (intersects) - %1 @%2 %3',_type,mapGridPosition _x,position _x];

		"; if(_wall_glitch_punish isEqualTo 0)then{ _asd = _asd + "
		[_name,_puid,'SLOG_GLITCH',toArray(_log)] call _AHKickLog;
		"; }; _asd = _asd + "

		"; if(_wall_glitch_punish isEqualTo 1)then{ _asd = _asd + "
		[_name,_puid,'SLOG_GLITCH',toArray(_log)] call _AHKickLog;
		[player,60] call fnc_infiSTAR_setUncon;
		"; }; _asd = _asd + "

		"; if(_wall_glitch_punish isEqualTo 2)then{ _asd = _asd + "
		[_name,_puid,'SLOG_GLITCH',toArray(_log),[2,player]] call _AHKickLog;
		"; }; _asd = _asd + "

		"; if(_wall_glitch_punish isEqualTo 3)then{ _asd = _asd + "
		[_name,_puid,'SLOG_GLITCH',toArray(_log),[3,player,clientOwner]] call _AHKickLog;
		"; }; _asd = _asd + "

		"; if(_wall_glitch_punish isEqualTo 4)then{ _asd = _asd + "
		[_name,_puid,'SLOG_GLITCH',toArray(_log),[4]] call _AHKickLog;
		"; }; _asd = _asd + "

		"; if(_wall_glitch_punish isEqualTo 5)then{ _asd = _asd + "
		[_name,_puid,'SLOG_GLITCH',toArray(_log),[5]] call _AHKickLog;
		"; }; _asd = _asd + "
	};
};
_fn_checkWallGlitch = {
	{
		_lineIntersectsObjs = lineIntersectsObjs [_x select 0, _x select 1];
		{
			if(_x getVariable ['ExileBreaching',false])exitWith{true};
			
			_type = typeOf _x;
			if((_x isKindOf 'Exile_Construction_Abstract_Static') && !(_type in ['Exile_Construction_ConcreteStairs_Static','Exile_Construction_WoodStairs_Static']))exitWith
			{
				_goodpos = false;
				call _fn_punish_glitch;
				breakTo 'MAIN';
			};
		} forEach _lineIntersectsObjs;
	} forEach _this;
};
_fnc_wall_glitch_object = {
	scopeName 'MAIN';
	_goodpos = true;

	_head = player selectionPosition 'head';
	_head_left	= AGLToASL (player modelToWorldVisual [(_head select 0)-0.2, (_head select 1), (_head select 2)+0.1]);
	_head_right	= AGLToASL (player modelToWorldVisual [(_head select 0)+0.05, (_head select 1), (_head select 2)+0.1]);
	_legs = player selectionPosition 'legs';
	_legs_left	= AGLToASL (player modelToWorldVisual [(_legs select 0)-0.25, (_legs select 1), (_legs select 2)]);
	_legs_right	= AGLToASL (player modelToWorldVisual [(_legs select 0)+0.05, (_legs select 1), (_legs select 2)]);
	[
		[_head_left, _head_right],
		[_legs_left, _legs_right],
		[_head_left, _legs_left],
		[_head_right, _legs_right]
	] call _fn_checkWallGlitch;


	if(_goodpos)then
	{
		_head_back_left = AGLToASL (player modelToWorldVisual [(_head select 0)-0.2, (_head select 1)-0.18, (_head select 2)+0.1]);
		_head_back_right = AGLToASL (player modelToWorldVisual [(_head select 0)+0.1, (_head select 1)-0.18, (_head select 2)+0.1]);
		_head_front_left = AGLToASL (player modelToWorldVisual [(_head select 0)-0.2, (_head select 1)+0.1, (_head select 2)+0.1]);
		_head_front_right = AGLToASL (player modelToWorldVisual [(_head select 0)+0.1, (_head select 1)+0.1, (_head select 2)+0.1]);
		[
			[_head_back_left, _head_back_right],
			[_head_front_left, _head_front_right]
		] call _fn_checkWallGlitch;
	};


	_lineIntersectsObjs = lineIntersectsObjs [eyePos player, AGLToASL positionCameraToWorld [0,0,-0.1]];
	{
		if(_x getVariable ['ExileBreaching',false])exitWith{true};
		
		_type = typeOf _x;
		if((_x isKindOf 'Exile_Construction_Abstract_Static') && !(_type in ['Exile_Construction_ConcreteStairs_Static','Exile_Construction_WoodStairs_Static']))exitWith
		{
			_goodPos = false;
			if!(cameraView isEqualTo 'INTERNAL')then{ cameraOn switchCamera 'INTERNAL'; };
			if(freeLook)then{ _blackedOut = true;TitleText ['!!!\n!!! DO NOT LOOK THROUGH WALLS !!!\n!!!','BLACK FADED']; };
			breakTo 'MAIN';
		};
	} forEach _lineIntersectsObjs;

	if(_goodpos)then
	{
		if(_blackedOut)then{ _blackedOut = false;TitleText ['','PLAIN DOWN']; };
		"; if(_wall_glitch_revert)then{ _asd = _asd + "
		_curpos = player modelToWorldVisual [0,0,0];
		if(_curpos distance _last_no_glitch_pos > 0.3)then
		{
			if(isTouchingGround player && alive player && _curpos select 2 < 1)then
			{
				_nearestObjects = nearestObjects [player, ['Exile_Construction_Abstract_Static','AbstractConstruction','Exile_Construction_Flag_Static'], 2.8];
				if(_nearestObjects isEqualTo [])then
				{
					_last_no_glitch_pos = _curpos;
					_last_no_glitch_vectorDir = vectorDir player;
					_last_no_glitch_vectorUp = vectorUp player;
				};
			};
		};
		"; }; _asd = _asd + "
	};
};
while{true}do{
	if(call fnc_check_if_enemy_base)then{ if(isNull ExileCurrentBreachingObject)then{call _fnc_wall_glitch_object;}; } else { uiSleep 0.5; };
	uiSleep 0.1;
};
}
];
"; }; _asd = _asd + "






"; if(_UAT)then{ _asd = _asd + "
_bigInputArray pushBack [
	[_name,_uid,_AHKickOFF,_AHKickLog],
	{
		scriptName ""ATP "";
		params ['_name','_puid','_AHKickOFF','_AHKickLog'];
		private ['_wasLocal','_playerObject','_object','_oldObject','_class','_oldClass','_curPos','_oldPos',
		'_timeDiff','_lastTime','_speedCalc','_maxSpeedCalc','_maxSpeed','_tpCounter','_allowedD',
		'_ropeAttachedToObj','_exitHere','_allowedTeleport','_markerType','_velocity',
		'_distance','_AHpos','_timer'];
		
		
		_allowedTeleport = "+str _allowTPcfg+";
		{
			_markerType = markerType _x;
			if(_markerType in ['ExileTraderZone','ExileTraderZoneIcon','ExileBoatTraderIcon'])then
			{
				_allowedTeleport pushBack [markerPos _x,225];
			};
		} forEach allMapMarkers;
		_fn_checkTp = {
			if(vehicleCargoEnabled (isVehicleCargo _object))exitWith{false};
			if(isNull objectParent player && {(velocity _object select 2) < -6})exitWith{false};
			
			_exitHere = false;
			_ropeAttachedToObj = ropeAttachedTo _object;
			if(!isNull _ropeAttachedToObj)then
			{
				if(isPlayer (driver _ropeAttachedToObj))then
				{
					_exitHere = true;
				}
				else
				{
					{ropeDestroy _x;} forEach (ropes _ropeAttachedToObj);
					{ropeDestroy _x;} forEach (ropes _object);
					diag_log '<infiSTAR.de> Ropes cut!';
				};
			};
			if(_exitHere)exitWith{false};
			
			{
				_x params[['_mpos',[0,0,0]],['_msize',250]];
				if((_curPos distance2D _mpos < _msize)&&(_oldPos distance2D _mpos < _msize))exitWith{_exitHere = true;};
			} forEach _allowedTeleport;
			if(_exitHere)exitWith{false};
			
			true
		};
		_fn_revertTP = {
			_tpCounter = _tpCounter + 1;
			
			_vel = velocity _this;
			_this setVelocity [0,0,0];
			_this setPosASL (AGLToASL _oldPos);
			_vel = _vel vectorMultiply 0.9;
			_this setVelocity _vel;
			
			if!(_oldClass isKindOf 'Steerable_Parachute_F')then
			{
				_log = format[
					'%1%2 moved %3m in %4s from %5 %6 to %7 %8 at a speed of %9/%10. NetId: %11, LocalObj: %12, VisibleMap: %13, TpCounter: %14',
					_class,
					if(_oldClass isEqualTo _class)then{''}else{(' (was '+str _oldClass+' before)')},
					ceil _distance,
					_timeDiff,
					mapGridPosition _oldPos,
					[round(_oldPos select 0),round(_oldPos select 1),round(_oldPos select 2)],
					mapGridPosition _curPos,
					[round(_curPos select 0),round(_curPos select 1),round(_curPos select 2)],
					_speedCalc,
					_maxSpeed,
					netId _object,
					local _object,
					visibleMap,
					_tpCounter
				];
				[_name,_puid,'ANTI_TP',toArray(_log)] call _AHKickLog;
			};
			
			_curPos = _oldPos;
		};
		_fn_checkStartAntiTP = { getClientStateNumber >= 10 && !isNull findDisplay 46 && {alive player} && {getPlayerUID player != ''} && {typeOf player isEqualTo 'Exile_Unit_Player'} };
		_fn_startAntiTp = {
			if((getNumber(configFile >> 'CfgSettings' >> 'BambiSettings' >> 'parachuteSpawning')) isEqualTo 1)then
			{
				_timeOut = diag_tickTime + 15;
				waitUntil { (diag_tickTime > _timeOut || (vehicle player) isKindOf 'ParachuteBase') && call _fn_checkStartAntiTP };
			} else {
				waitUntil { call _fn_checkStartAntiTP };
			};
			
			_timeOut = diag_tickTime + 3;
			waitUntil {diag_tickTime > _timeOut && call _fn_checkStartAntiTP};
			
			_wasLocal = false;
			_playerObject = player;
			_object = vehicle player;
			_class = typeOf _object;
			_curPos = getPos _object;
			_lastTime = diag_tickTime;
			_tpCounter = 0;
			_maxSpeedCalc = 20;
			player setVariable ['"+_AHpos+"',[0,0,0]];
		};
		call _fn_startAntiTp;
		while {true} do
		{
			_oldObject = _object;
			_oldPos = _curPos;
			
			_object = vehicle player;
			_curPos = getPos _object;
			
			_AHpos = player getVariable ['"+_AHpos+"',[0,0,0]];
			player setVariable ['"+_AHpos+"',[0,0,0]];
			if(_AHpos isEqualType [])then
			{
				if(_AHpos isEqualTo [0,0,0])then
				{
					if(local _object && _oldObject isEqualTo _object)then
					{
						if(_wasLocal)then
						{
							_distance = _oldPos distance2D _curPos;
							if(_distance > 8)then {
								_timeDiff = (diag_tickTime - _lastTime) max 0.2;
								_speedCalc = round((_distance / _timeDiff)*3.6);
								
								_oldClass = _class;
								_class = typeOf _object;
								
								_maxSpeed = getNumber(configfile >> 'CfgVehicles' >> _class >> 'maxSpeed') max 25;
								_maxSpeedCalc = (if(diag_fps > 20)then{_maxSpeed * 2}else{_maxSpeed * 3.5}) max _maxSpeedCalc;
								
								if(_speedCalc > _maxSpeedCalc)then {
									if(player isEqualTo _playerObject && alive _playerObject)then {
										if(call _fn_checkTp)then {
											_object call _fn_revertTP;
										};
									} else {
										call _fn_startAntiTp;
									};
								};
							};
						};
						_wasLocal = true;
					} else {
						_wasLocal = false;
					};
				} else {
					[_name,_puid,'ADMINTP',netId player,_AHpos,_oldPos,player getVariable ['randomstring','']] call _AHKickLog;
					if(local _object)then{_object setPosATL _AHpos;}else{player setPosATL _AHpos;};
					_curPos = _AHpos;
				};
			} else {
				_log = format['Admin Teleport Variable highjacked! [%1]-[%2]',_AHpos,typename _AHpos];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			
			_lastTime = diag_tickTime;
			uiSleep 0.2;
		};
	}
];
"; }; _asd = _asd + "
_bigInputArray pushBack [
	[_name,_uid,_AHKickOFF,_AHKickLog,_badIDDsToKick,_badIDDsToClose,_allowedIDDs,_admin,_iddchecks],
	{
		params ['_name','_puid','_AHKickOFF','_AHKickLog','_badIDDsToKick','_badIDDsToClose','_allowedIDDs','_admin','_iddchecks'];
		disableSerialization;
		"; if(_UDW)then{ _asd = _asd + "
		if(_admin)then{_allowedIDDs pushBackUnique -1341;};
"; if(_task_force_radio)then{ _asd = _asd + "
		_allowedIDDs pushBackUnique 6000;
"; }; _asd = _asd + "
		
		_announceDisplayIddOnce = [];
		"; }; _asd = _asd + "
		_verybadStrings = "+str _verybadStrings+";
		_checked = ['Display #24Control #101','Display #-1340Control #1401'];
		_lastEmpty = 0;
		{uiNamespace setVariable [_x,nil];} forEach ['RscDisplayRemoteMissions','RscDisplayDebugPublic','RscDisplayMovieInterrupt','RscDisplayArsenal'];
		"; if(_CMC)then{ _asd = _asd + "
		_find1 = ['#user:bis_fnc_addcommmenuitem_menu','#user:bis_menu_groupcommunication'];
		_find2tmp = "+str _allowedCommandingMenus+";
		_find2 = [];{_find2 pushBackUnique (toLower _x);} forEach _find2tmp;
		"; }; _asd = _asd + "
		_lastText = '';
		_fn_get_texts = {
			_txtstmp = [];
			
			{
				_control = _x;
				_controltype = ctrlType _control;
				
				if(_controltype isEqualTo 5)then {
					_size = lbSize _control;
					if(_size > 0)then {
						for '_i' from 0 to (_size-1) do {
							_lbtxt = _control lbText _i;
							if!(_lbtxt isEqualTo '')then{ _txtstmp pushBack format['%1: %2',ctrlIDC _control,_lbtxt]; };
						};
					};
				} else {
					if(_controltype isEqualTo 12)then {
						_curTV = tvCurSel _control;
						_tvtxt = _control tvText _curTV;
						if!(_tvtxt isEqualTo '')then{ _txtstmp pushBack format['%1: %2',ctrlIDC _control,_tvtxt]; };
					} else {
						if!(_controltype in [3,4,8,9,15,42,81,101,102])then {
							_ctrlTxt = ctrlText _control;
							if!(_ctrlTxt isEqualTo '')then{ _txtstmp pushBack format['%1: %2',ctrlIDC _control,_ctrlTxt]; };
						};
					};
				};
			} forEach (allControls _display);
			_txtstmp
		};
		_fnc_closedisplay = {
			if!(ctrlIDD _displayParent isEqualTo 46)then
			{
				for '_i' from 0 to 3 do
				{
					_displayParent closeDisplay 0;
					_displayParent closeDisplay _i;
				};
			};
			
			{
				_ctrlIDC = ctrlIDC _x;
				closeDialog _ctrlIDC;
			} forEach (allControls(findDisplay _ctrlIDD));
			(findDisplay _ctrlIDD) closeDisplay 0;
			_display closeDisplay 0;
			closeDialog 0;closeDialog 0;closeDialog 0;
			for '_i' from 0 to 3 do{closeDialog 0;closeDialog 1;closeDialog 2;};
		};
		_wasclosed = false;
		_mapMenuLogged = false;
		while{true}do{call _iddchecks;};
	}
];
_bigInputArray pushBack [
	[_name,_uid,_AHKickOFF,_AHKickLog],
	{
		_name = _this select 0;
		_puid = _this select 1;
		_AHKickOFF = _this select 2;
		_AHKickLog = _this select 3;
		_random = round(random 9999);
		_randvar3 = format['test%1',_random];
		while{true}do
		{
			_veh = vehicle player;
			if(alive player)then
			{
				_type = typeOf player;
				if!(_type isEqualTo 'Exile_Unit_GhostPlayer')then
				{
					_netId = netId player;
					if!(_netId select [0,2] isEqualTo '2:')then
					{
						_log = format['Not Local PlayerObject (C): %1 with netId %2 @%3',typeOf player,_netId,getPos player];
						[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
				};
				if(isNull objectParent player)then
				{
					"; if(_CHECK_RECOIL)then{ _asd = _asd + "
					_curecoil = unitRecoilCoefficient player;
					if!(_curecoil isEqualTo 1)then
					{
						_log = format['BadRecoil %1 | %2 %3',_curecoil,_type,currentWeapon player];
						[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
					"; }; _asd = _asd + "
				}
				else
				{
					"; if(_CHECK_RECOIL)then{ _asd = _asd + "
					_curecoil = unitRecoilCoefficient player;
					if!(_curecoil isEqualTo 1)then
					{
						_log = format['BadRecoil %1 | %2 %3 %4',_curecoil,_type,typeOf _veh,currentWeapon player];
						[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
					"; }; _asd = _asd + "
					
					_netId = netId _veh;
					if(_netId isEqualTo '0:0')then
					{
						_type = typeOf _veh;
						_log = format['LocalVehicle: %1 with netId 0:0 @%2',_type,getPosATL _veh];
						deleteVehicle _veh;
						[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
						[] call _AHKickOFF;
					};
					
					_ropeAttachedObjects = ropeAttachedObjects _veh;
					if!(_ropeAttachedObjects isEqualTo [])then
					{
						{
							_attachedObject = _x;
							if(!isNull _attachedObject)then
							{
								_fn_cutRopes = {{ropeDestroy _x;} forEach (ropes _veh);{ropeDestroy _x;} forEach (ropes _attachedObject);};
								if((locked _attachedObject) isEqualTo 2)exitWith
								{
									call _fn_cutRopes;
									['ErrorTitleAndText',['infiSTAR','You can not SlingLoad / Rope Attach a locked vehicle!']] call ExileClient_gui_toaster_addTemplateToast;
								};
								if(!ropeAttachEnabled _attachedObject)exitWith
								{
									call _fn_cutRopes;
									['ErrorTitleAndText',['infiSTAR','You can not SlingLoad / Rope Attach this vehicle!']] call ExileClient_gui_toaster_addTemplateToast;
								};
								"; if(_slingload_check)then{ _asd = _asd + "
								if!((crew _attachedObject) isEqualTo [])exitWith
								{
									call _fn_cutRopes;
									['ErrorTitleAndText',['infiSTAR','You can not SlingLoad / Rope Attach a vehicle with a crew!']] call ExileClient_gui_toaster_addTemplateToast;
								};
								"; }; _asd = _asd + "
							};
						} forEach _ropeAttachedObjects;
					};
				};
			};
"; if(_attach_to_check)then{ _asd = _asd + "
			_closeveh = [_veh];
			_closeveh append (_veh nearEntities ['AllVehicles',100]);
			{
				if(!isNull _x)then
				{
					_xobj = _x;
					if(!isNull _xobj)then
					{
						_attcheXdobjects = attachedObjects _xobj;
						if!(_attcheXdobjects isEqualTo [])then
						{
							_cntQd = {(toLower (typeOf _x)) find 'quad' > -1} count _attcheXdobjects;
							if(_cntQd > 5)then
							{
								detach _xobj;
								{detach _x;} forEach _attcheXdobjects;
								if(_xobj isEqualTo _veh)then
								{
									_log = format['x attached to vehicle player: %1 - %2   @%3 %4',typeOf _xobj,_attcheXdobjects,position player,mapGridPosition player];
									[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
									[] call _AHKickOFF;
								}
								else
								{
									_log = format['Attached Objects found: %1 - %2    @%3 %4',typeOf _xobj,_attcheXdobjects,position _xobj,mapGridPosition _xobj];
									[_name,_puid,'HLOG',toArray(_log)] call _AHKickLog;
								};
							};
							if(player in _attcheXdobjects)then
							{
								detach _veh;
								_log = format['player attached to x: %1 - %2   @%3 %4',typeOf _xobj,_attcheXdobjects,position player,mapGridPosition player];
								[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
								[] call _AHKickOFF;
							};
						};
					};
				};
			} forEach _closeveh;
"; }; _asd = _asd + "
"; if(_UFI||_UIW)then{ _asd = _asd + "
			_inventory = [];
			{_inventory pushBack _x;} forEach (assignedItems player);
			{_inventory pushBack _x;} forEach (magazines player);
			{_inventory pushBack _x;} forEach (weapons player);
			{_inventory pushBack _x;} forEach (primaryWeaponItems player);
			{_inventory pushBack _x;} forEach (secondaryWeaponItems player);
			{_inventory pushBack _x;} forEach (handgunItems player);
			_inventory pushBack (primaryWeapon player);
			_inventory pushBack (secondaryWeapon player);
			_inventory pushBack (handgunWeapon player);
			_inventory pushBack (uniform player);
			_inventory pushBack (vest player);
			_inventory pushBack (backpack player);
			_inventory pushBack (headgear player);
			_inventory pushBack (goggles player);
			_inventory = _inventory - [''];
			if!(_inventory isEqualTo [])then
			{
				_fnRemoveItem = {
					player removeItem _x;
					player removeWeapon _x;
					player removeMagazine _x;
					if((uniform player) == _x)then{removeUniform player;};
					if((vest player) == _x)then{removeVest player;};
					if((backpack player) == _x)then{removeBackpackGlobal player;};
					if((headgear player) == _x)then{removeHeadgear player;};
					if((goggles player) == _x)then{removeGoggles player;};
					player removePrimaryWeaponItem _x;
					player removeSecondaryWeaponItem _x;
					player removeHandgunItem _x;
					player unlinkItem _x;
					
					_log = format['BadItem: %1 (might have been from an admin!)',_x];
					"; if(_KICK_ON_DETECTION)then{ _asd = _asd + "
					[_name,_puid,'SLOG_SKICK',toArray(_log)] call _AHKickLog;
					"; }else{ _asd = _asd + "
					[_name,_puid,'SLOG',toArray(_log)] call _AHKickLog;
					"; }; _asd = _asd + "
				};
				
				
				{
					if(_x in "+str _ForbiddenItems+")then
					{
						call _fnRemoveItem;
				"; if(_KICK_ON_DETECTION)then{ _asd = _asd + "
					}
					else
					{
						if!(_x in "+str _ItemWhiteList+")then
						{
							call _fnRemoveItem;
						};
				"; }; _asd = _asd + "
					};
				} forEach _inventory;
			};
"; }; _asd = _asd + "
			if((groupIconsVisible isEqualTo [true,false])||(groupIconsVisible isEqualTo [false,true]))then
			{
				_log = format['ESP/MAP-HACK (groupIcons): %1',groupIconsVisible];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			if!((str _randvar3) isEqualTo (str ('test'+str _random)))then
			{
				_log = format['_randvar3 has been changed to %1',_randvar3];
				[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
				[] call _AHKickOFF;
			};
			uiSleep 10;
		};
	}
];
};



"; if!(_HTML_LOAD_URL isEqualTo '')then{ _asd = _asd + "
_bigInputArray pushBack [
	{
		disableSerialization;
		_display49 = findDisplay 49;
		if(!isNull _display49)then
		{
			HTML_LOAD_URL3 = "+str _HTML_LOAD_URL+";
			if((_display49 displayCtrl 3307182) isEqualTo controlNull)then
			{
				[
					'',
					{
						if(!isNil'START_LOADING_ESCHTML')then{terminate START_LOADING_ESCHTML;START_LOADING_ESCHTML=nil;};
						START_LOADING_ESCHTML = [] spawn {
							disableSerialization;
							_html = (findDisplay 49) ctrlCreate ['RscHTML', 3307182];
							_html ctrlSetBackgroundColor [0,0,0,0.3];
							_html ctrlSetPosition [
								safeZoneX,
								safeZoneY,
								safeZoneW,
								safeZoneH/3
							];
							_html ctrlCommit 0;
							_html htmlLoad HTML_LOAD_URL3;
						};
					}
				] execFSM 'call.fsm';
			};
		};
	},
	{
		[0.2, _this, [], true] call ExileClient_system_thread_addTask;
	}
];
"; }; _asd = _asd + "


"; if(_ENABLE_NOTIFICATION_MESSAGES)then{ _asd = _asd + "
_bigInputArray pushBack [
	{
		[] spawn {
			waitUntil{getClientStateNumber >= 10 && !isNull findDisplay 46 && {!((getPlayerUID player) isEqualTo '')} && {!isNil 'ExileSystemThreadSleep'}};
			uiSleep 1;
			
			ctrlDelete ((findDisplay 46) displayCtrl 117997);
			(findDisplay 46) ctrlCreate['RscStructuredText', 117997];
			NOTIFICATION_COOLDOWN_TIME = 0;
			
			_code =
			{
				_ctrl = (findDisplay 46) displayCtrl 117997;
				_ctrlFade = ctrlFade _ctrl;
				if(NOTIFY_MSG_ARRAY isEqualTo [])then
				{
					if(time > NOTIFICATION_COOLDOWN_TIME)then
					{
						if(_ctrlFade isEqualTo 0)then
						{
							_ctrl ctrlsetFade 1;
							_ctrl ctrlCommit 1;
						}
						else
						{
							if(_ctrlFade isEqualTo 1)then
							{
								ctrlDelete ((findDisplay 46) displayCtrl 117997);
								if(!isNil'msgthreadid')then{[msgthreadid] call ExileClient_system_thread_removeTask;msgthreadid=nil;};
							};
						};
					};
				}
				else
				{
					{
						private _input = _x;
						if(time > NOTIFICATION_COOLDOWN_TIME)then
						{
							if(_ctrlFade isEqualTo 0)then
							{
								_ctrl ctrlsetFade 1;
								_ctrl ctrlCommit 1;
							}
							else
							{
								if(_ctrlFade isEqualTo 1)then
								{
									if!(_input isEqualTo [])then
									{
										private _first = _input param [0, -1, [0]];
										if(time > _first)then
										{
											if((time > _first)||(_first < 0))then
											{
												private _replay = _input param [1, -1, [0]];
												private _delay = _input param [2, 4, [0]];
												NOTIFICATION_COOLDOWN_TIME = time + _delay;
												if(_replay < 0)then{NOTIFY_MSG_ARRAY set[_forEachIndex,[]];}else{_input set[0,_replay + time];NOTIFY_MSG_ARRAY set[_forEachIndex,_input];};
												
												if(!isStreamFriendlyUIEnabled)then
												{
													if((count _input) isEqualTo 4)then
													{
														private _text = _input param [3, '', ['']];
														systemChat _text;
													}
													else
													{
														private _fsize = _input param [3, 0.6, [0]];
														private _xpos = _input param [4, 0, [0,'']];
														private _ypos = _input param [5, 0, [0,'']];
														private _fcolor = _input param [6, '#ff0000', ['']];
														private _font = _input param [7, 'OrbitronMedium', ['']];
														private _text = _input param [8, '', ['']];
														
														
														_xpos = _xpos call BIS_fnc_parseNumber;_xpos = _xpos max safeZoneX;_xpos = _xpos min 1;
														_ypos = _ypos call BIS_fnc_parseNumber;_ypos = _ypos max safeZoneY;_ypos = _ypos min 1;
														_ctrl ctrlSetPosition [_xpos,_ypos,0.35,0.35];
														_ctrl ctrlSetScale 2;
														_ctrl ctrlCommit 0;
														_ctrl ctrlSetStructuredText parseText format['<t size=''%1'' align=''left'' color=''%2'' font=''%3''>%4</t>',_fsize,_fcolor,_font,_text];
														
														_ctrl ctrlsetFade 0;
														_ctrl ctrlCommit 1.5;
													};
												};
											};
										};
									};
								};
							};
						};
					} forEach NOTIFY_MSG_ARRAY;
				};
				NOTIFY_MSG_ARRAY = NOTIFY_MSG_ARRAY - [[]];
			};
			if(!isNil'msgthreadid')then{[msgthreadid] call ExileClient_system_thread_removeTask;msgthreadid=nil;};
			msgthreadid = [0.3, _code, [], true] call ExileClient_system_thread_addtask;
		};
	},
	{
		call _this
	}
];
"; }; _asd = _asd + "


"; if(_experimental_dupe_check)then{ _asd = _asd + "
_bigInputArray pushBack [
	[_name,_uid,_AHKickLog],
	{
		params[['_name',''],['_uid',''],['_AHKickLog',{}]];
		waitUntil{uiSleep 1;getClientStateNumber >= 10 && !isNull findDisplay 46};
		_objects = [];
		_ALL_container = [];
		_containercount = -1;
		_lastcontainercount = -1;
		while{true}do
		{
			_lastObjects = _objects;
			_objects = nearestObjects [player, ['LootWeaponHolder', 'GroundWeaponHolder', 'WeaponHolderSimulated','Exile_Unit_Player','LandVehicle','Ship','Air'],20];
			{{_objects pushBackUnique _x;} forEach (crew _x);} forEach _objects;
			if(_lastObjects isEqualTo _objects)then
			{
				_lastcontainer = _ALL_container;
				_lastcontainercount = _containercount;
				_ALL_container = [];
				{
					if(!isNull _x)then
					{
						_object = _x;
						_containers = backpackCargo _object;
						if(!isNil '_containers')then
						{
							if(_containers isEqualTo [])then
							{
								_backpack = backpack _object;
								if!(_backpack isEqualTo '')then
								{
									_ALL_container pushBack _backpack;
								};
							}
							else
							{
								_ALL_container append _containers;
							};
						};
					};
				} forEach _objects;
				
				_containercount = count _ALL_container;
				if((_containercount > _lastcontainercount) && (_lastcontainercount > -1))then
				{
					_types_and_count__old = [];
					{
						_type = _x;
						_typecount = {_x isEqualTo _type} count _lastcontainer;
						_types_and_count__old pushBackUnique [_type,_typecount];
					} forEach _lastcontainer;
					
					_types_and_count = [];
					{
						_type = _x;
						_typecount = {_x isEqualTo _type} count _ALL_container;
						_types_and_count pushBackUnique [_type,_typecount];
					} forEach _ALL_container;
					
					_foundAdded = [];
					{
						if!(_x in _types_and_count__old)then
						{
							if(_x select 1 > 2)then
							{
								_foundAdded pushBack _x;
							};
						};
					} forEach _types_and_count;
					
					if!(_foundAdded isEqualTo [])then
					{
						[_name,_uid,'EXPERIMENTAL_DUPE_CHECK',toArray(str _foundAdded)] call _AHKickLog;
					};
				};
			}
			else
			{
				_containercount = -1;
				_lastcontainercount = -1;
			};
			uiSleep 0.5;
		};
	}
];
"; }; _asd = _asd + "


"; if(_useObjectVariableCheck)then{ _asd = _asd + "
_bigInputArray pushBack [
	[_name,_uid,_AHKickLog,_AHKickOFF],
	{
		params[['_name',''],['_puid',''],['_AHKickLog',{(findDisplay 46)closeDisplay 0;}],['_AHKickOFF',{(findDisplay 46)closeDisplay 0;}]];
		_allowedobjvars = ['exilelastlootrequestedat','exilelootspawnedat','exilehasloot','exilelootweaponholdernetids'];
		_posbuildings = [worldSize/2,worldSize/2];
		_buildings = [];
		_fn_checkobjvars = {
			if!(_buildings isEqualTo [])then
			{
				{
					_obj = _x;
					if(!isNull _obj)then
					{
						{
							_x params ['_varname','_defaultvalue'];
							_varvalue = _obj getVariable _varname;
							if(!isNil'_varvalue')then
							{
								if(_varvalue isEqualType _defaultvalue)then
								{
									if(_varvalue isEqualType 0)then
									{
										if(_varvalue > time || _varvalue < 0)then
										{
											_log = format['Variable [%1] on object [%2] has been modified: bad value.. %3', _varname, _obj, _varvalue];
											[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
											[] call _AHKickOFF;
										};
									};
									if(_varvalue isEqualType '')then
									{
										if(count _varvalue > 30)then
										{
											_log = format['Variable [%1] on object [%2] has been modified: bad value.. %3', _varname, _obj, _varvalue];
											[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
											[] call _AHKickOFF;
										};
									};
								}
								else
								{
									_log = format['Variable [%1] on object [%2] has been modified: [%3] should be [%4]', _varname, _obj, typeName _varvalue, typeName _defaultvalue];
									[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
									[] call _AHKickOFF;
								};
							};
						} forEach [
							['ExileLastLootRequestedAt',0],
							['ExileLootSpawnedAt',0],
							['ExileHasLoot',false],
							['ExileLootWeaponHolderNetIDs','']
						];


						{
							_varname = _x;
							_varvalue = _obj getVariable _varname;
							if(!isNil '_varvalue')then
							{
								_index = _allowedobjvars pushBackUnique _varname;
								if(_index > -1)then
								{
									_log = format['Variable [%1] on object [%2] is not known to the antihack! Value: [%3]', _varname, _obj, _varvalue];
									[_name,_puid,'SLOG',toArray(_log)] call _AHKickLog;
									[] call _AHKickOFF;
							"; if(!(_findObjectVar isEqualTo [])||!(_findObjectVarContent isEqualTo []))then{ _asd = _asd + "
								}
								else
								{
									"; if!(_findObjectVar isEqualTo [])then{ _asd = _asd + "
										_lowvarname = toLower _varname;
										{
											if(_lowvarname find _x != -1)then
											{
												_log = format['BadVariable on object: [%1] found [%2] in [%3] varcontent [%4]',_obj,_varname,_x,_varvalue];
												[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
												[] call _AHKickOFF;
											};
										} forEach "+str _findObjectVar+";
									"; }; _asd = _asd + "
									"; if!(_findObjectVarContent isEqualTo [])then{ _asd = _asd + "
										_lowvarvalue = toLower(str(_varvalue));
										{
											if(_lowvarvalue find _x != -1)then
											{
												_log = format['BadVariableContent on object: [%1] found [%2] in [%3] varcontent [%4]',_obj,_varname,_x,_varvalue];
												[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
												[] call _AHKickOFF;
											};
										} forEach "+str _findObjectVarContent+";
									"; }; _asd = _asd + "
							"; }; _asd = _asd + "
								};
							};
						} forEach (allVariables _obj);
					};
					_buildings set[_forEachIndex,objNull];
				} forEach _buildings;
				_buildings = _buildings - [objNull];
			};
		};
		_starttime = diag_tickTime + 45;
		while {true} do
		{
			if(diag_tickTime > _starttime)then
			{
				if(_buildings isEqualTo [])then{_buildings = _posbuildings nearObjects ['Building',worldSize];};
				call _fn_checkobjvars;
				_starttime = diag_tickTime + 85;
			};
			uiSleep 15;
		};
	}
];
"; }; _asd = _asd + "


_server_classes = [];
"; if(_checkCfgPatches)then{ _asd = _asd + "
if(isNil'i_server_classes')then
{
	_cfgPatches = 'true' configClasses (configfile >> 'CfgPatches');
	{
		_array = [];
		_cfgName = configName _x;
		_cur_url = getText(configfile >> 'CfgPatches' >> _cfgName >> 'url');
		_cur_requiredAddons = getText(configfile >> 'CfgPatches' >> _cfgName >> 'requiredAddons');
		if(!(_cur_url isEqualTo '') && !(_cur_requiredAddons isEqualTo ''))then
		{
			_array pushBack _cur_url;
			_array pushBack _cur_requiredAddons;
			_array pushBack (count(configProperties [configfile >> 'CfgPatches' >> _cfgName]));
			_server_classes pushBack [_cfgName, _array];
		};
	} forEach _cfgPatches;
	i_server_classes = compileFinal (str _server_classes);
};
_server_classes = call i_server_classes;
"; }; _asd = _asd + "

_bigInputArray pushBack [
	[_name,_uid,_AHKickLog,_AHKickOFF,_admins,_admin,_isNormal,_server_classes],
	{
params[
	['_name',''],
	['_puid',''],
	['_AHKickLog',{(findDisplay 46)closeDisplay 0;}],
	['_AHKickOFF',{(findDisplay 46)closeDisplay 0;}],
	['_admins',[]],
	['_admin',false],
	['_isNormal',true],
	['_server_classes',[]]
];
"+_AH_RunCheck+" = time;


_pid = profileNamespace getVariable ['ExilePlayerUID', _puid];
if!(_pid isEqualTo _puid)then
{
	_log = format['Player changed Steam Accounts! old PlayerUID: %1',_pid];
	[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
};
_pidi = profileNamespace getVariable ['ExilePlayerUIDl', _puid];
if!(_pidi isEqualTo _puid)then
{
	_log = format['Player changed Steam Accounts! old infiSTAR PlayerUID: %1',_pidi];
	[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
	profileNamespace setVariable ['ExilePlayerUIDl', _puid];
	saveprofileNamespace;
};
_dbcode = '';
if(!_admin)then
{
	_var = 'rscdebugconsole_expression';
	_dbcode = profileNamespace getVariable [_var,''];
	profileNamespace setVariable [_var,''];
	saveprofileNamespace;
};
[_name,_puid,'CLIENT_PING',netId player,toArray(profileNameSteam),_pid,_pidi,toArray(_dbcode)] call _AHKickLog;
if(!isNull (findDisplay 316000))exitWith
{
	_log = format['Found Debug Console: %1',ctrlText ((findDisplay 316000) displayCtrl 12284)];
	[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
	(findDisplay 46)closeDisplay 0;
};
['"+_AHKickOFF+"',[_AHKickOFF] call fnc_CompilableString] call FN_infiSTAR_F;
if!(str(_AHKickOFF) isEqualTo str("+_AHKickOFF+"))exitWith
{
	_log = 'KICK FUNCTION IS BROKEN!';
	[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
	(findDisplay 46)closeDisplay 0;
};
['"+_AHKickLog+"',[_AHKickLog] call fnc_CompilableString] call FN_infiSTAR_F;
if!(str(_AHKickLog) isEqualTo str("+_AHKickLog+"))exitWith
{
	_log = 'KICKLOG FUNCTION IS BROKEN!';
	[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
	(findDisplay 46)closeDisplay 0;
};

{
	_bvc = profileNamespace getVariable [_x,0];
	if(_bvc isEqualType '')then
	{
		if(_isNormal)then
		{
			profileNamespace setVariable [_x,0.4];saveprofileNamespace;
			_log = format['Injector found: %1 (%2) VALUE: [%3]', _x, typeName _bvc, str _bvc];
			[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
	};
} forEach [
	'igui_bcg_rgb_a','igui_bcg_rgb_r','igui_bcg_rgb_g','igui_bcg_rgb_b','IGUI_grid_mission_X','IGUI_grid_mission_Y','IGUI_grid_mission_W','IGUI_grid_mission_H',

	'gui_grid_w','igui_grid_squadradar_y','igui_grid_slingloadassistant_h','gui_grid_x','igui_grid_stance_x','gui_titletext_rgb_r','gui_grid_y','igui_grid_stance_y',
	'gui_bcg_rgb_a','igui_grid_gps_w','igui_error_rgb_a','igui_grid_gps_x','igui_error_rgb_b','igui_grid_gps_y','igui_grid_stamina_x','gui_grid_center_w',
	'igui_grid_comm_x','gui_grid_center_x','igui_grid_stamina_y','igui_grid_radar_x','igui_grid_comm_y','gui_grid_center_y','igui_warning_rgb_a','igui_text_rgb_a',
	'igui_grid_avcamera_h','igui_grid_radar_y','igui_warning_rgb_b','igui_text_rgb_b','gui_bcg_rgb_g','igui_grid_gaugespeed_x','igui_grid_weapon_x','igui_grid_gaugespeed_y',
	'igui_error_rgb_g','igui_grid_gaugecompass_x','igui_grid_weapon_y','igui_grid_chat_w','igui_grid_vehicle_x','igui_grid_vehicle_y','igui_grid_gaugecompass_y',
	'igui_grid_chat_x','igui_grid_hint_x'
];

_fnc_decrypt = profileNamespace getVariable '';
if(!isNil'_fnc_decrypt')then{ profileNamespace setVariable ['_fnc_decrypt',{[] spawn {while{true}do{disableUserInput true;};};}];saveprofileNamespace; };


"; if(_checkCfgPatches)then{ _asd = _asd + "
_server_classes_names = [];
_server_classes_info = [];
{
	_server_classes_names pushBack (_x select 0);
	_server_classes_info pushBack (_x select 1);
} forEach _server_classes;

_cfgPatches = 'true' configClasses (configfile >> 'CfgPatches');
_stop = false;
{
	_cfgName = configName _x;
	_fid = _server_classes_names find _cfgName;
	if(_fid > -1)then
	{
		_array = [];
		_cur_url = getText(configfile >> 'CfgPatches' >> _cfgName >> 'url');
		_cur_requiredAddons = getText(configfile >> 'CfgPatches' >> _cfgName >> 'requiredAddons');
		_array pushBack _cur_url;
		_array pushBack _cur_requiredAddons;
		_subClasses = configProperties [configfile >> 'CfgPatches' >> _cfgName];
		_array pushBack (count _subClasses);
		_subClassNames = []; { _subClassNames pushBack (configName _x); } forEach _subClasses;
		_server_array = _server_classes_info select _fid;
		if!(_server_array isEqualTo _array)then
		{
			_log = format['Bad Class found in CfgPatches >> %1 (PBO-Injector): %2 != %3 - %4',_cfgName,_array,_server_array,_subClassNames];
			[_name,_puid,'SLOG_RE',toArray(_log)] call _AHKickLog;
			_stop = true;
		};
	};
	if(_stop)exitWith{};
} forEach _cfgPatches;
"; }; _asd = _asd + "


_badclassesban = "+str _badclassesban+";
_badclasseskick = "+str _badclasseskick+";

{
	_addon = toLower _x;
	if(_addon in _badclassesban)then
	{
		_log = format['Bad Addon found (PBO-Injector): %1',_x];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	}
	else
	{
		if(_addon in _badclasseskick)exitWith
		{
			_log = format['Bad Addon found (PBO-Injector): %1',_x];
			[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
	};
} forEach activatedAddons;


_cfgPatches = 'true' configClasses (configfile >> 'CfgPatches');
{
	_configName = configName _x;
	_lowerConfigName = toLower _configName;
	if(_lowerConfigName in _badclassesban)then
	{
		_log = format['Bad Addon found in CfgPatches (PBO-Injector): %1',_configName];
		[_name,_puid,'BAN',toArray(_log)] call _AHKickLog;
		[] call _AHKickOFF;
	}
	else
	{
		if(_lowerConfigName in _badclasseskick)exitWith
		{
			_log = format['Bad Addon found in CfgPatches (PBO-Injector): %1',_configName];
			[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
			[] call _AHKickOFF;
		};
	};
} forEach _cfgPatches;


if!(_puid isEqualTo (getPlayerUID player))exitWith{
	_log = format['Server PUID not equal to player PUID (%1 != %2) (kicked)',_puid,getPlayerUID player];
	[_name,_puid,'SLOG_SKICK',toArray(_log)] call _AHKickLog;
	[] call _AHKickOFF;
};
if(isNil'VERSIONCHECKRESULT')then{VERSIONCHECKRESULT='';};
_devLog = format['infiSTAR.de AHAT %1 - 02-01-2018 01-13-55 - v88 - server running: %2:23582x2',VERSIONCHECKRESULT,time call FN_GET_TIME_TIME];diag_log _devLog;
"; if(!_HIDE_FROM_PLAYERS)then{ _asd = _asd + "
systemChat format['<infiSTAR.de> %1 - Successfully Loaded In.',time call FN_GET_TIME_TIME];
"; }; _asd = _asd + "
player createDiaryRecord ['Diary', ['infiSTAR.de AntiHack & AdminTools', '<br/>  Get your own infiSTAR.de AntiHack and AdminTools available on <br/><br/>http://www.infiSTAR.de<br/><br/>']];
_bis_fnc_diagkey = uiNamespace getVariable ['bis_fnc_diagkey',{false}];
if(!isNil'_bis_fnc_diagkey')then{if!((str _bis_fnc_diagkey) in ['{false}','{}'])then{bis_fnc_diagkeychanged='bis_fnc_diagkeychanged';publicVariableServer'bis_fnc_diagkeychanged';};};
"+_AH_RunCheckENDVAR+" = time;
_fn_doTwice = {
{_x enableChannel [(channelEnabled _x) select 0, false];} forEach "+str _disAllowVon+";
"; if(_TGV != -1)then{ _asd = _asd + "
if!(getTerrainGrid isEqualTo "+str _TGV+")then{setTerrainGrid "+str _TGV+";};
"; }; _asd = _asd + "
"; if(_VDV != -1)then{ _asd = _asd + "
if(viewDistance > "+str _VDV+")then{setViewDistance "+str _VDV+";};
"; }; _asd = _asd + "
"; if(_VOV != -1)then{ _asd = _asd + "
if(getObjectViewDistance select 0 > "+str _VOV+")then{setObjectViewDistance ["+str _VOV+",getObjectViewDistance select 1];};
"; }; _asd = _asd + "
"; if(_SVD != -1)then{ _asd = _asd + "
if(getObjectViewDistance select 1 > "+str _SVD+")then{setObjectViewDistance [getObjectViewDistance select 0,"+str _SVD+"];};
"; }; _asd = _asd + "
};
call _fn_doTwice;
waitUntil{uiSleep 1;getClientStateNumber >= 10 && !isNull findDisplay 46};
uiSleep 3;
call _fn_doTwice;
	}
];
{_x remoteExecCall ['spawn',_owner,false];} forEach _bigInputArray;



"; if(_onEventsCheck)then{ _asd = _asd + "
_onEvents = ['onLoad','onUnload','onChildDestroyed','onMouseEnter','onMouseExit','onSetFocus',
'onKillFocus','onTimer','onKeyDown','onKeyUp','onChar','onIMEChar','onIMEComposition','onJoystickButton',
'onMouseButtonDown','onMouseButtonUp','onMouseButtonClick','onMouseButtonDblClick','onMouseMoving','onMouseHolding',
'onMouseZChanged','onCanDestroy','onDestroy','onButtonClick','onButtonDblClick','onButtonDown','onButtonUp','onLBSelChanged',
'onLBListSelChanged','onLBDblClick','onLBDrag','onLBDragging','onLBDrop','onTreeSelChanged','onTreeLButtonDown','onTreeDblClick',
'onTreeExpanded','onTreeCollapsed','onTreeMouseMove','onTreeMouseHold','onTreeMouseExit','onToolBoxSelChanged','onChecked','onCheckedChanged',
'onCheckBoxesSelChanged','onHTMLLink','onSliderPosChanged','onObjectMoved','onMenuSelected','onDraw','onVideoStopped'];

_cfgNames = [];
_onEventsArray = [];
if(isNil'infiSTAR_onEventsCheck_cfgNames')then
{
	_configClasses = 'true' configClasses (configfile);
	{
		_configName = configName _x;
		_cfgNames pushBackUnique _configName;
		_currentonEventsArray = [];
		{
			_string = getText(configFile >> _configName >> _x);
			_currentonEventsArray pushBack (toArray _string);
		} forEach _onEventsCheck;
		_onEventsArray pushBack _currentonEventsArray;
	} forEach _configClasses;
	infiSTAR_onEventsCheck_cfgNames = compileFinal (str _cfgNames);
	infiSTAR_onEventsCheck_onEventsArray = compileFinal (str _onEventsArray);
};

[
	[_name,_puid,_AHKickLog,_AHKickOFF,_onEvents,call infiSTAR_onEventsCheck_cfgNames,call infiSTAR_onEventsCheck_onEventsArray],
	{
		waitUntil {getClientStateNumber >= 9 && !isNull findDisplay 46};
		params['_name','_puid','_AHKickLog','_AHKickOFF','_onEvents','_cfgNames','_onEventsArray'];
		uiSleep 60;
		
		{
			_configName = _x;
			_currentOnEventServer = _onEventsArray select _forEachIndex;
			
			{
				_string = getText(configFile >> _configName >> _x);
				_currentStringServer = toString(_currentOnEventServer select _forEachIndex);
				if!(_string isEqualTo '' || _string isEqualTo _currentStringServer)then
				{
					_log = format['onEventsCheck (HANDLE CHANGED): %1 changed %2 -> %3',_x,_configName,_string];
					[_name,_puid,'HLOG_SKICK',toArray(_log)] call _AHKickLog;
					[] call _AHKickOFF;
				};
			} forEach _onEvents;
		} forEach _cfgNames;
	}
] remoteExecCall ['spawn',_owner,false];
"; }; _asd = _asd + "

};
"+_FN_INJECT_ON_CLIENT+" = compileFinal ([_FN_INJECT_ON_CLIENT] call fnc_CompilableString);
_fnc_l_on_c = {
	params[['_token',''],['_owner',-10],['_name',''],['_uid',''],['_admins',[]],['_devs',[]],['_admin',false],['_isNormal',true]];
	_puid = _uid;
	if(_owner > 2)then
	{
		_AHKickOFF = compile('[] spawn {sleep 2;_d = (findDisplay 0) createDisplay ''RscDisplayMission'';(findDisplay 0) closeDisplay 0;};[] spawn {uiSleep 1;AH_KICK_OFF_'+_uid+' = ''BYE'';publicVariableServer''AH_KICK_OFF_'+_uid+''';};');
		_AHKickLog = compile(format['[1,[''%1'',_this]] call FN_infiSTAR_CS',_token]);
		_chuid = toArray _uid;
		call "+_FN_INJECT_ON_CLIENT+";
		if(!_isNormal)then
		{
			_owner publicVariableClient 'fn_adminSetVariable';
			_owner publicVariableClient 'fnc_announcement_to_admins';
			"; if(_enableIngameLogs)then{ _asd = _asd + "
			AH_HackLogArray = "+_AH_HackLogArrayRND+";_owner publicVariableClient 'AH_HackLogArray';AH_HackLogArray = nil;
			AH_SurvLogArray = "+_AH_SurvLogArrayRND+";_owner publicVariableClient 'AH_SurvLogArray';AH_SurvLogArray = nil;
			AH_AdmiLogArray = "+_AH_AdmiLogArrayRND+";_owner publicVariableClient 'AH_AdmiLogArray';AH_AdmiLogArray = nil;
			"; }; _asd = _asd + "
			PVAH_AHTMPBAN = call "+_fn_getTempBans+";
			_owner publicVariableClient 'PVAH_AHTMPBAN';
			_owner publicVariableClient 'PVAH_AHTMPBAN_REASON';
			_fnc_AdminReq_string = format['[0,[''%1'',_this]] call FN_infiSTAR_CS',_token];
			[[_token,_name,_uid,"+_adminsA+",_devs,_fnc_AdminReq_string],"+_adminStartupCode+"] remoteExecCall ['spawn',_owner,false];
		};
	}
	else
	{
		_log = format['%1(%2) bad owner id %3',_name,_uid,_owner];
		['ERROR',_log] call FNC_A3_CUSTOMLOG;
		[_name,_uid,_owner,_log] call FNC_INFISERVERKICK;
	};
};
"+_fnc_l_on_c+" = compileFinal ([_fnc_l_on_c] call fnc_CompilableString);
_server_setToken={
	params[
		['_uid','',['']]
	];

	_fnc_RandomGen =
	{
		_arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'];
		_gen = _arr select (floor (random 25));
		for '_i' from 0 to (12+(round(random 5))) do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
		_gen
	};
	_token = call _fnc_RandomGen;
	missionNameSpace setVariable [format['"+_token_by_uid+"%1',_uid],_token];
	missionNameSpace setVariable [format['"+_uid_by_token+"%1',_token],_uid];
	_token
};
"+_server_setTokenR+" = compileFinal ([_server_setToken] call fnc_CompilableString);

FNC_INFISERVERKICK = {
	params[['_name','',['']], ['_uid','',['']], ['_owner',-10,[0]], ['_reason','',['']]];
	if(_owner > 2)then {
		format['#kick %1',_owner] spawn fn_serverCommand;
	} else {
		format['#kick %1',_uid] spawn fn_serverCommand;
	};
	_admin = _uid in "+str _admins+";
	_log = if(_reason isEqualTo '')then{format['%1(%2) isAdmin? %3',_name,_uid,_admin]}else{format['%1(%2) isAdmin? %3: %4',_name,_uid,_admin,_reason]};
	['KICKLOG',_log] call FN_ARMA_LOG;
};
FNC_INFISERVERKICK = compileFinal ([FNC_INFISERVERKICK] call fnc_CompilableString);

FNC_A3_infiSTARUNBAN = {
	params[['_uid','',['']]];
	if(count _uid isEqualTo 17)then
	{
"; if(_armalog)then{ _asd = _asd + "
		private _ret = ['armalog' callExtension ('xunban|'+ _uid)] param [0, '', ['']];
		_ret remoteExecCall ['systemChat',remoteExecutedOwner,false];
		['UNBANLOG',_ret] call FN_ARMA_LOG;
"; }; _asd = _asd + "


		_tmpban_id = "+_TMPBAN+" find _uid;
		"+_TMPBAN+" = "+_TMPBAN+" - [_uid];
		['PVAH_AHTMPBAN',"+_TMPBAN+"] call fnc_variable_to_admins;PVAH_AHTMPBAN=nil;
		if(_tmpban_id > -1)then
		{
			PVAH_AHTMPBAN_REASON deleteAt _tmpban_id;
			['PVAH_AHTMPBAN_REASON',PVAH_AHTMPBAN_REASON] call fnc_variable_to_admins;
		};


		format['#exec unban %1',str _uid] spawn fn_serverCommand;
		format['%1 should be unbanned now.',_uid] remoteExecCall ['systemChat',remoteExecutedOwner,false];
		['UNBANLOG',_uid] call FN_ARMA_LOG;
	} else {
		format['%1 is not a valid UID..',_uid] remoteExecCall ['systemChat',remoteExecutedOwner,false];
	};
};
FNC_A3_infiSTARUNBAN = compileFinal ([FNC_A3_infiSTARUNBAN] call fnc_CompilableString);

FNC_A3_infiSTARBAN = {
	params[['_name','',['']], ['_uid','',['']], ['_owner',-10,[0]], ['_reason','',['']]];
	_admins = "+str _admins+";
	if(_uid in _admins)exitWith
	{
		_log = format['%1 (PLAYER IS ADMIN)',_reason];
		[_name,_uid,_owner,_log] call FNC_INFISERVERKICK;
	};
	_banned = false;
	if(count _uid isEqualTo 17)then
	{
"; if(_armalog)then{ _asd = _asd + "
		private _ret = ['armalog' callExtension ('xban|'+ _uid)] param [0, '', ['']];
		_ret remoteExecCall ['systemChat',remoteExecutedOwner,false];
		['BANLOG',_ret] call FN_ARMA_LOG;
"; }; _asd = _asd + "
		
		_banned = format['#exec ban %1',str _uid] spawn fn_serverCommand;
	} else {
		if(_owner > 2)then
		{
			_banned = format['#exec ban %1',str _owner] spawn fn_serverCommand;
		};
	};
	_log = if(_reason isEqualTo '')then{format['%1(%2 - %3): %4',_name,_uid,_owner,_banned]}else{format['%1(%2 - %3): %4 - %5',_name,_uid,_owner,_banned,_reason]};
	['BANLOG',_log] call FN_ARMA_LOG;
};
FNC_A3_infiSTARBAN = compileFinal ([FNC_A3_infiSTARBAN] call fnc_CompilableString);

FNC_A3_infiSTARTMPBAN = {
	params[['_name',''],['_uid',''],['_owner',-10],['_reason','']];
	_admins = "+str _admins+";
	if(_uid in _admins)exitWith
	{
		_log = format['%1 (PLAYER IS ADMIN)',_reason];
		diag_log _log;
		[_name,_uid,_owner,_log] call FNC_INFISERVERKICK;
	};
	private _tempbans = call "+_fn_getTempBans+";
	if!(_uid in _tempbans)then
	{
		_log = if(_reason isEqualTo '')then{format['%1(%2)',_name,_uid]}else{format['%1(%2) %3',_name,_uid,_reason]};


		_TMPBAN_ID = "+_TMPBAN+" pushBackUnique _uid;
		if(_TMPBAN_ID > -1)then
		{
			['PVAH_AHTMPBAN',"+_TMPBAN+"] call fnc_variable_to_admins;PVAH_AHTMPBAN=nil;
			
			PVAH_AHTMPBAN_REASON set[_TMPBAN_ID,_REASON];
			['PVAH_AHTMPBAN_REASON',PVAH_AHTMPBAN_REASON] call fnc_variable_to_admins;
		};


		['TEMPBANLOG',_log] call FN_ARMA_LOG;
		[_name,_uid,_owner,_log] call FNC_INFISERVERKICK;
	};
};
FNC_A3_infiSTARTMPBAN = compileFinal ([FNC_A3_infiSTARTMPBAN] call fnc_CompilableString);
";
diag_log format['<infiSTAR.de> %1 - Thread BEFORE MAIN: added !',time];
diag_log format['<infiSTAR.de> %1 - infiSTAR_PlayerLog: adding to main string..',time];
_asd = _asd + "
diag_log format['<infiSTAR.de> %1 - infiSTAR_PlayerLog: still compiling...',time];
fn_infiSTAR_checkGlobalBanSkip = {
	!(_this in "+str _UID_SKIP_GLOBAL_BAN_CHECK+")
};
fn_infiSTAR_checkGlobalBanSkip = compileFinal ([fn_infiSTAR_checkGlobalBanSkip] call fnc_CompilableString);
"; if(_armalog)then{ _asd = _asd + "
fn_infiSTAR_checkGlobalBanState = {
	params ['_name','_uid','_owner'];
	_res = 'armalog' callExtension format['5%1',_uid];
	if(_res isEqualTo '1')then{
	"; if(_USE_GLOBAL_BAN_CHECK)then{ _asd = _asd + "
		"; if(_BAN_GLOBAL_BANNED_LOCALLY)then{ _asd = _asd + "
			[_name,_uid,_owner,format['GLOBAL BAN: %1',_res]] call FNC_A3_infiSTARBAN;
		"; }else{ _asd = _asd + "
			[_name,_uid,_owner,format['GLOBAL BAN: %1',_res]] call FNC_INFISERVERKICK;
		"; }; _asd = _asd + "
	"; }else{ _asd = _asd + "
		_log = format['%1(%2) | GLOBAL BANNED PLAYER (NOT BANNED LOCALLY) | %3 [02-01-2018 01-13-55 - v88]',_name,_uid,time call FN_GET_TIME_TIME];
		['SURVEILLANCELOG',_log] call FNC_A3_CUSTOMLOG;
		_log call fnc_add_survlog;
	"; }; _asd = _asd + "
	};
};
fn_infiSTAR_checkGlobalBanState = compileFinal ([fn_infiSTAR_checkGlobalBanState] call fnc_CompilableString);
"; }; _asd = _asd + "
_fnc_infiSTAR_PlayerLog = {
params[['_name',''],['_uid',''],['_owner',-10],['_admin',false]];
_lname = toLower _name;
if(_name find ':' > -1)then
{
	[_name,_uid,'SLOG_SKICK',toArray('Bad Playername : is a bad character! it is used as seperator for extDB calls')] call "+_fnc_server_handle_mpmessage+";
};
if({_x in [48,49,50,51,52,53,54,55,56,57]} count (toArray _uid) != 17)then
{
	_log = 'Player has no normal UID (usually a UID is ONLY numbers..).';
	[_name,_uid,'HLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
};
if('somethingwentwrong' in [_lname,(toLower _uid)])then
{
	[_name,_uid,'SLOG_SKICK',toArray('Name and/or UID not allowed!')] call "+_fnc_server_handle_mpmessage+";
};

if(_uid call fn_infiSTAR_checkGlobalBanSkip)then{
	private _tempbans = call "+_fn_getTempBans+";
	if(_uid in _tempbans)then{ [_name,_uid,_owner,'TEMPBANNED'] call FNC_INFISERVERKICK; };
"; if(_armalog)then{ _asd = _asd + "
	[_name,_uid,_owner] call fn_infiSTAR_checkGlobalBanState;
"; }; _asd = _asd + "
"; if(_check_steam_ban && _armalog)then{ _asd = _asd + "
	_varname_csb_thread = format['csb_thread_%1',_uid];
	_csb_thread = missionNameSpace getVariable _varname_csb_thread;
	if(!isNil'_csb_thread')then{terminate _csb_thread;};
	_csb_thread = [_name,_uid] spawn FN_CHECK_STEAMBAN;
	missionNameSpace setVariable [_varname_csb_thread,_csb_thread];
"; }; _asd = _asd + "
};


if(!_admin)then{
	if(_lname in "+str _badNamesFull+")then
	{
		_log = 'BadName (KICKED)';
		[_name,_uid,'SLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
	};

	{
		if(_lname find _x > -1)then
		{
			_log = format['BadName: %1 (KICKED)',_x];
			[_name,_uid,'SLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
		};
	} forEach "+str _badNamesPartial+";

	_connectedTimes = missionNameSpace getVariable [format['CONNECT_COUNT_%1',_uid],0];
	if(_connectedTimes > 10)then
	{
		_log = format['Reconnected %1 times since the server is running.. duping? connection issues?',_connectedTimes + 1];
		[_name,_uid,'SLOG',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
		missionNameSpace setVariable [format['CONNECT_COUNT_%1',_uid],0];
	}
	else
	{
		missionNameSpace setVariable [format['CONNECT_COUNT_%1',_uid],_connectedTimes + 1];
	};
};
};
"+_fnc_infiSTAR_PlayerLog+" = compileFinal ([_fnc_infiSTAR_PlayerLog] call fnc_CompilableString);
";
diag_log format['<infiSTAR.de> %1 - infiSTAR_PlayerLog: added !',time];
_b = {[] spawn {sleep 20;waitUntil {time > 20};diag_log "<infiSTAR.de> license is blocked.";diag_log "<infiSTAR.de> if you did not do anything wrong. please open a support ticket on http://support.infiSTAR.de";diag_log "<infiSTAR.de> infiSTAR will NOT START when the license is blocked!";[] spawn {sleep 1;failMission "LOSER";endMission "LOSER";forceEnd;};if(!isNil"FN_GET_SERVERPW")then{(call FN_GET_SERVERPW) serverCommand "#shutdown";};};};
if("infiSTAR" != ("i" +"n" +"f" +"i" +"S" +"T" +"A" +"R"))then{[] call _b;};if("infiSTAR.de" != ("i" +"n" +"f" +"i"+"S" +"T" +"A"+"R"+".d"+"e"))then{[] call _b;};
diag_log format['<infiSTAR.de> %1 - fnc_server_handle_mpmessage: adding to main string..',time];
_asd = _asd + "
diag_log format['<infiSTAR.de> %1 - fnc_server_handle_mpmessage: still compiling...',time];
_fnc_server_handle_mpmessage = {
	params [
		['_name','',['']],
		['_uid','',['']],
		['_what','',['']]
	];
	_admins = "+str _admins+";
	_devs = "+str _devs+";
	if(_what isEqualTo 'NR')exitWith
	{
		[
			[_clientName,_clientUID],
			{
				params ['_clientName','_clientUID'];
				disableSerialization;
				_url = format['http://htmlload.infistar.de/rp.php?mod=EXILE&steamid=%1&name=%2&servername=%3',_clientUID,_clientName,serverName];
				_url = toArray _url;_url = _url - [35];_url = toString _url;
				ctrlDelete(findDisplay 0 displayCtrl 3107115);
				_html = (findDisplay 0) ctrlCreate ['RscHTML', 3107115];
				_html ctrlShow false;
				_html ctrlCommit 0;
				_html htmlLoad _url;
			},
			_clientOwnerID,
			false
		] call FN_infiSTAR_S;
	};
	if(_what isEqualTo 'rcheck')exitWith
	{
		_clientObject = objectFromnetId (_this select 3);
		_clientObject setVariable ['"+_rcheckserver+"',1];
		_clientObject setVariable ["+str _rcheckclient+",true,true];
	};
	if(_what isEqualTo 'GLOBAL_ANIM')exitWith
	{
		_netId = _this param [3,'',['']];
		_animation = _this param [4,'',['']];
		_time = _this param [5,0,[0]];
		[_netId,_animation,_time] remoteExec ['fn_global_animation',-2];
	};
"; if(_allowPee)then{ _asd = _asd + "
	if(_what isEqualTo 'P')exitWith
	{
		_size = if(_uid isEqualTo '76561197993342289')then{0.5}else{0.02};
		[_this select 3,_size] remoteExec ['fnc_player_pee',-2];
	};
"; }; _asd = _asd + "
	_owner = missionNameSpace getVariable [format['"+_owner_by_uid+"%1',_uid],-10];
"; if(_UAT)then{ _asd = _asd + "
	if(_what isEqualTo 'ADMINTP')exitWith
	{
		params[
			['_name','',['']],
			['_uid','',['']],
			['_what','',['']],
			['_netId','',['']],
			['_AHpos',[0,0,0],[[]]],
			['_oldPos',[0,0,0],[[]]],
			['_tpkeyFromClient','',['']]
		];
		_unit = objectFromnetId _netId;
		_tpkeyFromClient = str _tpkeyFromClient;

		_tpkey = str(_unit getVariable ['tpkey','']);
		_unitTpArray = _unit getVariable ['TPARRAY',[]];
		if(_AHpos in _unitTpArray && _tpkeyFromClient isEqualTo _tpkey)exitWith
		{
			if!(_uid in _devs)then
			{
				_log = format['Teleport by Admin - from %1%2 to %3%4  (%5m)',mapGridPosition _oldPos,_oldPos,mapGridPosition _AHpos,_AHpos,round(_oldPos distance2D _AHpos)];
				_log = format['%1(%2) | %3 | %4',_name,_uid,_log,time call FN_GET_TIME_TIME];
				_log call fnc_add_adminlog;
			};
			_unitTpArray = _unitTpArray - [_AHpos];
			_unit setVariable ['TPARRAY',_unitTpArray];
		};

		_distance = round(_oldPos distance2D _AHpos);
		if(_distance > 10)then
		{
			if(_tpkeyFromClient isEqualTo _tpkey)then
			{
				_log = format['%1(%2) | %3%4 to %5%6 (%7m) [pos not in unitarray]', _name, _uid, mapGridPosition _oldPos, _oldPos, mapGridPosition _AHpos, _AHpos, _distance];
				['ADMIN_TELEPORT_HACK',_log] call FNC_A3_CUSTOMLOG;
			}
			else
			{
				_log = format['%1(%2) | %3%4 to %5%6 (%7m) [wrong tpkey: %8 != %9]', _name, _uid, mapGridPosition _oldPos, _oldPos, mapGridPosition _AHpos, _AHpos, _distance, _tpkeyFromClient, _tpkey];
				['ADMIN_TELEPORT_HACK',_log] call FNC_A3_CUSTOMLOG;
			};

			_log call fnc_add_hacklog;
			[_name,_uid,_owner,format['%1: %2',_what,_log]] call FNC_INFISERVERKICK;
			(vehicle _unit) setOwner 2;
			(vehicle _unit) setPos _oldPos;
			_unit setDamage 1;
			deleteVehicle _unit;
		};
	};
"; }; _asd = _asd + "
	if(_what isEqualTo 'CLIENT_PING')exitWith
	{
		_clientObject = objectFromnetId (_this select 3);
		missionNameSpace setVariable [format['object_by_uid_%1',_uid],_clientObject];
		
		_steamName = toString(_this select 4);
		
		
		missionNameSpace setVariable [format['STEAM_NAME_%1',_uid],_steamName];
		_log = format['Connected (CLIENT_PING): %1(%2) Owner: %3, SteamName: %4   [UpTime: %5 - ServerFPS: %6]',_name,_uid,_owner,_steamName,time call FN_GET_TIME_TIME,diag_fps];
		['CONNECTLOG',_log] call FN_ARMA_LOG;
		
		_tempbans = call "+_fn_getTempBans+";
		_pid = _this select 5;
		if(_pid in _tempbans)then
		{
			_log = format['Old PlayerUID: %1 is banned on this server. Player BANNED again!',_pid];
			[_name,_uid,_owner,_log] call FNC_INFISERVERKICK;
		};
		_pidi = _this select 6;
		if(_pidi in _tempbans)then
		{
			_log = format['Old infiSTAR PlayerUID: %1 is banned on this server. Player BANNED again!',_pidi];
			[_name,_uid,_owner,_log] call FNC_INFISERVERKICK;
		};
		_logold = toString(_this select 7);
		if!(_logold isEqualTo '')then
		{
			['DEBUG_CODE',format['DEBUG CODE OF %1(%2): %3',_name,_uid,_logold]] call FNC_A3_CUSTOMLOG;
		};
		_lsteamName = toLower _steamName;
		{
			if(_lsteamName find _x > -1)exitWith
			{
				_log = format['%1(%2) | PLAYER FROM BISTUDIO?! found %3 in %4',_name,_uid,_x,_steamName];
				['SURVEILLANCELOG',_log] call FNC_A3_CUSTOMLOG;
				_log call fnc_add_survlog;
			};
		} forEach ['ideaqa','idea_q'];
	};
	if(_what isEqualTo 'SQFScripts')exitWith
	{
		_log = toString(_this select 3);
		['CLIENT_THREADS',format['DEBUG CODE OF %1(%2): %3',_name,_uid,_log]] call FNC_A3_CUSTOMLOG;
	};
	"; if(_DayNightVote)then{ _asd = _asd + "
	if(_what isEqualTo 'VOTE')exitWith
	{
		_log = toString(_this select 3);
		if(_log in ['DAY','NIGHT'])exitWith
		{
			[_uid,_log] call fnc_VoteTimeServer;
		};
	};
	"; }; _asd = _asd + "
	"; if(_disconnect_dupe_check)then{ _asd = _asd + "
	if(_what isEqualTo 'DCHECK')exitWith{"+_antidupePVResVar+" = diag_tickTime;_owner publicVariableClient '"+_antidupePVResVar+"';};
	"; }; _asd = _asd + "
	if(_what isEqualTo 'AC')exitWith
	{
		if(_uid in _admins)then
		{
			if(_uid in "+_adminsA+")then
			{
				"+_adminsA+" = "+_adminsA+" - [_uid];
				if(_uid in _devs)exitWith{};
				_alog = format['%1(%2) | is a normal player now.',_name,_uid];
				_alog call fnc_add_adminlog;
				"; if(_announce_adminstate_changed)then{ _asd = _asd + "
					"; if(_HIDE_FROM_PLAYERS)then{ _asd = _asd + "
					[_name,{systemChat format['%1 - Logging out as admin.',_this];},-2,false] call FN_infiSTAR_S;
					"; }else{ _asd = _asd + "
					[_name,{systemChat format['<infiSTAR.de> %1 - Logging out as admin.',_this];},-2,false] call FN_infiSTAR_S;
					"; }; _asd = _asd + "
				"; }; _asd = _asd + "
			}
			else
			{
				"+_adminsA+" pushBack _uid;
				if(_uid in _devs)exitWith{};
				_alog = format['%1(%2) | is an admin again.',_name,_uid];
				_alog call fnc_add_adminlog;
				"; if(_announce_adminstate_changed)then{ _asd = _asd + "
					"; if(_HIDE_FROM_PLAYERS)then{ _asd = _asd + "
					[_name,{systemChat format['%1 - Logging in as admin.',_this];},-2,false] call FN_infiSTAR_S;
					"; }else{ _asd = _asd + "
					[_name,{systemChat format['<infiSTAR.de> %1 - Logging in as admin.',_this];},-2,false] call FN_infiSTAR_S;
					"; }; _asd = _asd + "
				"; }; _asd = _asd + "
			};
			
			['infiSTAR_ADMINS',"+_adminsA+"] call fnc_variable_to_admins;
		};
	};
	_randomNumber = 82537;
	_log = toString(_this param [3,[],[[]]]);
	if(_what isEqualTo 'BAN')exitWith
	{
		[_name,_uid,_owner,_log] call FNC_A3_infiSTARBAN;
	};
	if(_what isEqualTo 'TMPBAN')exitWith
	{
		_input = [_name,_uid,_owner,_log];
		_input call FNC_A3_infiSTARTMPBAN;
	};
	_log = format['%1(%2) | %3 | %4 [02-01-2018 01-13-55 - v88]',_name,_uid,_log,time call FN_GET_TIME_TIME];
	if(_what isEqualTo 'HLOG_VAC')exitWith
	{
		['VAC_LOG',_log] call FNC_A3_CUSTOMLOG;
		_log call fnc_add_hacklog;
	};
	if(_what in ['SLOG','SLOG_SKICK'])exitWith
	{
		['SURVEILLANCELOG',_log] call FN_ARMA_LOG;
		_log call fnc_add_survlog;
		
		if(_what isEqualTo 'SLOG_SKICK')exitWith{[_name,_uid,_owner,format['%1: %2',_what,_log]] call FNC_INFISERVERKICK;};
	};
	if(_what in ['HLOG','HLOG_SKICK'])exitWith
	{
		['HACKLOG',_log] call FN_ARMA_LOG;
		_log call fnc_add_hacklog;
		
		if(_what isEqualTo 'HLOG_SKICK')exitWith{[_name,_uid,_owner,format['%1: %2',_what,_log]] call FNC_INFISERVERKICK;};
	};
	if(_what isEqualTo 'SLOG_RE')exitWith
	{
		['SURVEILLANCELOG',_log] call FN_ARMA_LOG;
		_log call fnc_add_survlog;
	};
"; if(_UAT)then{ _asd = _asd + "
	if(_what isEqualTo 'ANTI_TP')exitWith
	{
		['ANTI_TP',_log] call FNC_A3_CUSTOMLOG;
		_log call fnc_add_survlog;
	};
"; }; _asd = _asd + "
"; if(_experimental_dupe_check)then{ _asd = _asd + "
	if(_what isEqualTo 'EXPERIMENTAL_DUPE_CHECK')exitWith
	{
		[_what,_log] call FNC_A3_CUSTOMLOG;
	};
"; }; _asd = _asd + "
	if(_what isEqualTo 'SLOG_GLITCH')exitWith
	{
		['GLITCH_LOG',_log] call FNC_A3_CUSTOMLOG;
		_log call fnc_add_survlog;
		if((count _this) isEqualTo 5)then
		{
			_input = _this select 4;
			(_this select 4) params [['_option',0,[0]]];

			if(_option isEqualTo 2)exitWith
			{
				(_this select 4) params [['_option',0,[0]], ['_victim',objNull,[objNull]]];
				_victim setDamage 1;
			};
			if(_option isEqualTo 3)exitWith
			{
				(_this select 4) params [['_option',0,[0]], ['_victim',objNull,[objNull]], ['_clientOwner',0,[0]]];
				
				if(isNull _victim)exitWith{};
				if(_clientOwner isEqualTo 0)exitWith{};
				_serverOwner = owner _victim;
				if!(_clientOwner isEqualTo _serverOwner)exitWith{};
				
				moveOut _victim;
				_victim action ['eject', (vehicle _victim)];
				['',{ExileClientIsHandcuffed = true;},_clientOwner,false] call FN_infiSTAR_S;
				_victim setVariable ['ExileIsHandcuffed', true, true];
				_victim setVariable ['ExileHostageTakernetId', netId _victim];
				_victim setVariable ['ExileHostageTakerUID', getPlayerUID _victim];
				['switchMoveRequest', [netId _victim, 'Acts_AidlPsitMstpSsurWnonDnon_loop']] call ExileServer_system_network_send_broadcast;
				
				_mapgridpos = format['%1:%2',(mapGridPosition _victim) select [0,3],(mapGridPosition _victim) select [3,3]];
				_msg = format['Wallglitcher %1 restrained for 2 minutes at mapGridPosition %2',_victim call fnc_get_exileObjName,_mapgridpos];
				[_msg,-2] call fnc_serverMassMessage;
				[format['<infiSTAR.de> %1',_msg],{systemChat _this},-2,false] call FN_infiSTAR_S;
				
				
				_code = {
					params[['_victim',objNull]];
					if(isNull _victim)exitWith{};
					if(!alive _victim)exitWith{};
					if(!isPlayer _victim)exitWith{};
					if!(_victim getVariable ['ExileIsHandcuffed', false])exitWith{};
					
					['switchMoveRequest', [netId _victim, 'Acts_AidlPsitMstpSsurWnonDnon_out']] call ExileServer_system_network_send_broadcast;
					_victim setVariable ['ExileIsHandcuffed', false, true];
					_victim setVariable ['ExileHostageTakernetId', nil];
					_victim setVariable ['ExileHostageTakerUID', nil];
					
					_serverOwner = owner _victim;
					if(_serverOwner > 2)then
					{
						[
							'',
							{
								ExileClientIsHandcuffed = false;
								ExileClientHostageTaker = objNull;
								if !(ExileClientBreakFreeActionHandle isEqualTo -1) then 
								{
									player removeAction ExileClientBreakFreeActionHandle;
									ExileClientBreakFreeActionHandle = -1;
								};
							},
							_serverOwner,
							false
						] call FN_infiSTAR_S;
					};
				};
				[120, _code, [_victim], false] call ExileServer_system_thread_addTask;
			};
			if(_option isEqualTo 4)exitWith{ [_name,_uid,_owner,format['%1: %2',_what,_log]] call FNC_INFISERVERKICK; };
			if(_option isEqualTo 5)exitWith{ [_name,_uid,_owner,format['%1: %2',_what,_log]] call FNC_A3_infiSTARBAN; };
		};
	};
	true
};
"+_fnc_server_handle_mpmessage+" = compileFinal ([_fnc_server_handle_mpmessage] call fnc_CompilableString);
";
diag_log format['<infiSTAR.de> %1 - fnc_server_handle_mpmessage: added !',time];

diag_log format['<infiSTAR.de> %1 - fnc_AdminReqReal: adding to main string..',time];
_asd = _asd + "
diag_log format['<infiSTAR.de> %1 - fnc_AdminReqReal: still compiling...',time];
_fnc_AdminReqReal = {
	_admins = "+str _admins+";
	if!(_clientUID in _admins)exitWith
	{
		_log = format['%1(%2) | AdminReqReal - Attempted to Use the AdminMenu',_clientName,_clientUID];
		['REQUEST_ERROR_NEW',(_log+' | '+str _inputArray)] call FNC_A3_CUSTOMLOG;
	};
	_ld = "+str _devs+";

	_option = _inputArray select 0;
	if(isNil'_option')exitWith{
		['REQUEST_ERROR_NEW',('AdminReqReal ERROR 1: '+str _this+' | _option is NIL')] call FNC_A3_CUSTOMLOG;
	};
	if!(_option isEqualType 0)exitWith{
		['REQUEST_ERROR_NEW',('AdminReqReal ERROR 2: '+str _this+' | _option is BAD TYPE')] call FNC_A3_CUSTOMLOG;
	};

"; if(_LogAdminActions)then{ _asd = _asd + "
	if(_option isEqualTo 1234)exitWith
	{
		_log = toString(_inputArray select 1);
		_log = format['%1(%2) | %3',_clientName,_clientUID,_log];
		_log call fnc_add_adminlog;
	};
"; }; _asd = _asd + "
	if(_option isEqualTo 69)exitWith
	{
		_opt = _inputArray select 1;
		_code = _inputArray select 2;
		_code = toString _code;
		_code = compile _code;
		if(_opt isEqualTo 0)exitWith{call _code;['',_code,-2,false] call FN_infiSTAR_S;};
		if(_opt isEqualTo 1)exitWith{call _code;};
		if(_opt isEqualTo 2)exitWith{
			_target = objectFromnetId(_inputArray select 3);
			if(isNil '_target')exitWith{};
			if(typename _target != 'OBJECT')exitWith{};
			if(isNull _target)exitWith{};
			_owner = owner _target;
			if(_owner in [0,-2,2])exitWith{};
			['',_code,_owner,false] call FN_infiSTAR_S;
		};
	};
	if(_option isEqualTo -668)exitWith
	{
		_clearLog = _inputArray select 1;
		if(_clearLog == 0)then
		{
			['AH_HackLogArray',[]] call fnc_variable_to_admins;
			['AH_SurvLogArray',[]] call fnc_variable_to_admins;
		}
		else
		{
			['AH_AdmiLogArray',[]] call fnc_variable_to_admins;
		};
	};
	if(_option isEqualTo -667)exitWith
	{
		_uid = _inputArray select 1;
		[_uid] call FNC_A3_infiSTARUNBAN;
	};
	if(_option isEqualTo -666)exitWith
	{
		_banoption = _inputArray param [1,0,[0]];
		_netid = _inputArray param [2,'0:0',['']];
		_reason = _inputArray param [3,[],[[]]];
		_obj = objectFromnetId _netid;
		if(!isNull _obj)then
		{
			_name = _obj call fnc_get_exileObjName;
			_uid = getPlayerUID _obj;
			_owner = owner _obj;
			
			_reason = toString _reason;
			if(_banoption isEqualTo 0)then
			{
				[_name,_uid,_owner,_reason] call FNC_A3_infiSTARBAN;
			}
			else
			{
				[_name,_uid,_owner,_reason] call FNC_A3_infiSTARTMPBAN;
			};
		};
	};
	if(_option isEqualTo -665)exitWith
	{
		_netid = _inputArray param [1,'0:0',['']];
		_reason = _inputArray param [2,[],[[]]];
		_obj = objectFromnetId _netid;
		if(!isNull _obj)then
		{
			_name = _obj call fnc_get_exileObjName;
			_uid = getPlayerUID _obj;
			_owner = owner _obj;
			
			_reason = toString _reason;
			[_name,_uid,_owner,_reason] call FNC_INFISERVERKICK;
		};
	};
	if(_option isEqualTo -664)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		['',{diag_log '<infiSTAR.de> kicked to lobby #2';(findDisplay 46)closeDisplay 0;},(owner _target),false] call FN_infiSTAR_S;
	};
	if(_option isEqualTo -662)exitWith
	{
		private['_params','_case','_input1','_input2'];
		_params = _inputArray select 1;
		if(isNil '_params')exitWith{};
		_case = -1;
		if(typename _params != 'ARRAY')then
		{
			_case = _params;
		}
		else
		{
			_case = _params select 0;
			_input1 = _params select 1;
			_input2 = if(typename (_params select 2) == 'ARRAY')then{toString(_params select 2)}else{_params select 2};
		};
		if(_case == 1)exitWith{ '#lock' spawn fn_serverCommand; };
		if(_case == 2)exitWith{ '#unlock' spawn fn_serverCommand; };
		
		_obj = objectFromnetId _input1;
		_name = _obj call fnc_get_exileObjName;
		_uid = getPlayerUID _obj;
		_owner = owner _obj;
		_reason = _input2;
		
		if(_case == 3)exitWith{[_name,_uid,_owner,_reason] call FNC_A3_infiSTARBAN;};
		if(_case == 4)exitWith{[_name,_uid,_owner,_reason] call FNC_INFISERVERKICK;};
	};
	if(_option isEqualTo -4)exitWith
	{
		_veh = objectFromnetId (_inputArray select 1);
		_veh call fnc_deleteObject;
	};
	if(_option isEqualTo -5)exitWith
	{
		_pos = _inputArray select 1;
		_radius = _inputArray select 2;
		
		_objectsToDelete = [];
		{
			if(_pos distance _x < _radius)then
			{
				_objectsToDelete pushBackUnique _x;
			};
		} forEach (allSimpleObjects []);
		_objectsToDelete append (nearestObjects [_pos, ['Exile_Construction_Abstract_Static','AbstractConstruction','Exile_Construction_Flag_Static'], _radius]);
		
		_pos set[2,0];
		_crate = 'Exile_Container_SupplyBox' createVehicle _pos;
		_crate setVariable ['BIS_enableRandomization',false];
		clearWeaponCargoGlobal _crate;
		clearMagazineCargoGlobal _crate;
		clearBackpackCargoGlobal _crate;
		clearItemCargoGlobal _crate;
		
		_cargoToAdd = [];
		{
			_objToDelete = _x;
			if(_objToDelete isKindOf 'Exile_Construction_Flag_Static')then
			{
				_objectID = _objToDelete getVariable ['ExileDatabaseID',-1];
				if!(_objectID isEqualTo -1)then
				{
					_cargoToAdd pushBack 'Exile_Item_Flag';
					format['deleteTerritory:%1', _objectID] call ExileServer_system_database_query_fireAndForget;
					
					if!(_clientUID in _ld)then
					{
						private _flagOwnerID = _objToDelete getVariable 'exileowneruid';
						private _flagPos = getPos _objToDelete;
						private _flagObjects = ((count _objectsToDelete) - 1);
						private _flagLevel = _objToDelete getVariable 'exileterritorylevel';
						private _flagName = _objToDelete getVariable 'exileterritoryname';
						
						_log = format['deleteTerritory: Owner: %1,  Pos: %2,  Objects: %3,  Level: %4,  Name: %5', _flagOwnerID, _flagPos, _flagObjects, _flagLevel, _flagName];
						_log = format['%1(%2) | %3',_clientName,_clientUID, _log];
						_log call fnc_add_adminlog;
					};
				};
			};
			
			_type = typeOf _objToDelete;
			if(_objToDelete isKindOf 'AbstractConstruction')then
			{
				if(isNumber(configfile >> 'CfgVehicles' >> _type >> 'exileContainer'))then
				{
					_objToDelete call ExileServer_object_container_database_delete;
					
					_items = _objToDelete call ExileServer_util_getItemCargo;
					_magazines = magazinesAmmoCargo _objToDelete;
					_weapons = weaponsItemsCargo _objToDelete;
					_containers = _objToDelete call ExileServer_util_getObjectContainerCargo;
					
					deleteVehicle _objToDelete;
					_objToDelete call ExileServer_object_container_database_delete;
					
					
					_filter  = ('getText(_x >> ''staticObject'') == _type' configClasses(configfile >> 'CfgConstruction')) select 0;
					_kitMagazine = getText(_filter >> 'kitMagazine');
					_cargoToAdd pushBack _kitMagazine;
					
					[_crate,_items] call ExileServer_util_fill_fillItems;
					[_crate,_magazines] call ExileServer_util_fill_fillMagazines;
					[_crate,_weapons] call ExileServer_util_fill_fillWeapons;
					[_crate,_containers] call ExileServer_util_fill_fillContainers;
				}
				else
				{
					_objToDelete call ExileServer_object_construction_database_delete;
					_config = ('(getText(_x >> ''staticObject'') isEqualTo _type)' configClasses (configfile >> 'CfgConstruction')) select 0;
					_config = getText (_config >> 'kitMagazine');					
					_cargoToAdd pushBack _config;
				};
			};
			if(_objToDelete isKindOf 'Exile_Construction_Abstract_Static')then
			{
				if!(_objToDelete isKindOf 'Exile_Construction_Abstract_Physics')then
				{
					_objectID = _objToDelete getVariable ['ExileDatabaseID',-1];
					if!(_objectID isEqualTo -1)then
					{
						_objToDelete call ExileServer_object_construction_database_delete;
						_config = ('(getText(_x >> ''staticObject'') isEqualTo _type)||(getText(_x >> ''upgradeObject'') isEqualTo _type)' configClasses (configfile >> 'CfgConstruction')) select 0;
						_config = getText (_config >> 'kitMagazine');					
						_cargoToAdd pushBack _config;
					};
				};
			};
			if(!isNull _objToDelete)then
			{
				if(!isNull _objToDelete)then
				{
					if(isPlayer _objToDelete)exitWith{};
					_objToDelete setDamage 1;
					deleteVehicle _objToDelete;
				};
			};
		} forEach _objectsToDelete;
		if(_cargoToAdd isEqualTo [])then
		{
			deleteVehicle _crate;
		}
		else
		{
			{_crate addItemCargoGlobal [_x,1];} forEach _cargoToAdd;
		};
	};
	if(_option isEqualTo -6)exitWith
	{
		_pos = _inputArray select 1;
		_radius = _inputArray select 2;
		_objectsToDelete = nearestObjects [_pos, ['GroundWeaponHolder','WeaponHolderSimulated','LootWeaponHolder'], _radius];
		{deleteVehicle _x;} forEach _objectsToDelete;
	};
	if(_option isEqualTo -3)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_target setOwner 2;
		_pos = getPos _target;
		_pos set[2,(_pos select 2)+2];
		_target setPos _pos;
		_target setVectorUp [0,0,1];
		
		[
			_target,
			{
				_this setVectorUp [0,0,1];
			},
			owner _target,
			false
		] call FN_infiSTAR_S;
	};
	if(_option isEqualTo -1)exitWith
	{
		_pos = _inputArray select 1;
		_pos spawn {
			_pos = _this;
			_bolt = 'LightningBolt' createVehicle _pos;
			_bolt setVariable ['BIS_enableRandomization',false];
			_bolt setdamage 5;
			_light = '#lightpoint' createVehicle _pos;
			_light setVariable ['BIS_enableRandomization',false];
			_light setposatl [_pos select 0,_pos select 1,(_pos select 2) + 10];
			_light setLightDayLight true;
			_light setLightBrightness 300;
			_light setLightAmbient [0.05, 0.05, 0.1];
			_light setlightcolor [1, 1, 2];
			uiSleep 0.1;
			_light setLightBrightness 0;
			uiSleep 0.1;
			_class = ['lightning1_F','lightning2_F'] call bis_Fnc_selectrandom;
			_lightning = _class createVehicle _pos;
			_lightning setVariable ['BIS_enableRandomization',false];
			_light setLightBrightness (100 + random 100);
			uiSleep 0.1;
			deleteVehicle _lightning;
			deleteVehicle _light;
		};
	};
	if(_option isEqualTo -2)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_target setDamage 5;
	};
	if(_option isEqualTo 0)exitWith
	{
		private['_vehicleClass','_position','_dir','_vehicleObject','_target','_pinCode'];
		_inputArray params [
			['_option',0,[0]],
			['_vehicleClass','',['']],
			['_position',[0,0,0],[[]]],
			['_dir',0,[0]],
			['_netId','',['']],
			['_persistent',false,[false]],
			['_pinCode','',['']]
		];
		
		"; if((_UVC)&&(_UVC_adminspawn))then{ _asd = _asd + "
		_return = _vehicleClass call "+_fnc_check_type_allowed+";
		if(!_return)exitWith{
			[
				format['<infiSTAR.de> NOT ALLOWED TO SPAWN [%1]',_vehicleClass],
				{systemChat _this},
				_clientOwnerID,
				false
			] call FN_infiSTAR_S;
		};
		"; }; _asd = _asd + "
		
		_target = objectFromnetId _netId;
		_targetUID = getPlayerUID _target;
		if(_targetUID isEqualTo '')then
		{
			_target = _clientObj;
			_targetUID = getPlayerUID _clientObj;
		};
		
		_vehicleObject = objNull;
		if(_vehicleClass find 'UAV' > -1)then
		{
			if(_vehicleClass isKindOf 'Air')then
			{
				_position = AGLToASL (_target modelToWorld [0,0,350]);
			};
			_vehicleObject = createVehicle [_vehicleClass, _position, [], 0, 'FLY'];
		}
		else
		{
			_vehicleObject = _vehicleClass createVehicle _position;
			_vehicleObject setVelocity [0,0,0];
		};
		_vehicleObject allowDamage false;
		_vehicleObject setDir _dir;
		_vehicleObject setDamage 0;
		
		clearBackpackCargoGlobal _vehicleObject;
		clearItemCargoGlobal _vehicleObject;
		clearMagazineCargoGlobal _vehicleObject;
		clearWeaponCargoGlobal _vehicleObject;
		
		if(getNumber (configfile >> 'CfgSettings' >> 'VehicleSpawn' >> 'nightVision') isEqualTo 0)then 
		{
			_vehicleObject disableNVGEquipment true;
		};
		if(getNumber (configfile >> 'CfgSettings' >> 'VehicleSpawn' >> 'thermalVision') isEqualTo 0)then 
		{
			_vehicleObject disableTIEquipment true;
		};
		
		if(_persistent)then
		{
			if(_pinCode isEqualTo '')then
			{
				_fn_getOldPincode = {
					{
						_tmppinCode = _x getVariable ['ExileAccessCode',''];
						if(!(_tmppinCode isEqualTo '')&&(_x getVariable ['ExileOwnerUID',''] isEqualTo _targetUID))exitWith{_pinCode = _tmppinCode;};
					} forEach _this;
				};
				(entities 'LandVehicle') call _fn_getOldPincode;
				if(_pinCode isEqualTo '')then{(entities 'Air') call _fn_getOldPincode;};
				if(_pinCode isEqualTo '')then{(entities 'Ship') call _fn_getOldPincode;};
				if(_pinCode isEqualTo '')then{for '_i' from 0 to 3 do {_pinCode = _pinCode + str(floor(random 10));};};
			};
			
			_vehicleObject setVariable ['ExileIsPersistent', true];
			_vehicleObject setVariable ['ExileAccessCode', _pinCode];
			_vehicleObject addEventHandler ['GetOut', {_this call ExileServer_object_vehicle_event_onGetOut}];
			
			_vehicleObject setVariable ['ExileOwnerUID', _targetUID];
			_vehicleObject setVariable ['ExileIsLocked',0];
			_vehicleObject lock 0;
			_vehicleObject call ExileServer_object_vehicle_database_insert;
			_vehicleObject call ExileServer_object_vehicle_database_update;
			
			[
				[_vehicleClass,_pinCode,netId _vehicleObject],
				{
					systemChat format['CODE FOR %1 is %2',_this select 0,_this select 1];
					(objectFromnetId (_this select 2)) setVariable ['ExileAlreadyKnownCode',(_this select 1)];
				},
				_target,
				false
			] call FN_infiSTAR_S;
		}
		else
		{
			_vehicleObject setVariable ['ExileIsPersistent', false];
		};
		
		_vehicleObject setFuel 1;
		_vehicleObject addEventHandler ['GetIn', {_this call ExileServer_object_vehicle_event_onGetIn}];
		_vehicleObject addMPEventHandler ['MPKilled', { if !(isServer) exitWith {}; _this call ExileServer_object_vehicle_event_onMPKilled;}];
		_vehicleObject call ExileServer_system_simulationMonitor_addVehicle;
		"; if((_UVC)&&(!_UVC_adminspawn))then{ _asd = _asd + "
			_vehicleObject setVariable ['"+_vehicle_needs_check+"',false];
		"; }; _asd = _asd + "
		[_vehicleObject,_target] spawn {
			params[['_vehicleObject',objNull],['_target',objNull]];
			
			_timer = diag_tickTime + 5;
			waitUntil {!isNull _vehicleObject || diag_tickTime > _timer};
			if(!isNull _vehicleObject)then
			{
				_vehicleClass = typeOf _vehicleObject;
				_AI_VEHICLE = ((_vehicleClass find 'UGV' > -1) || (_vehicleClass find 'UAV' > -1));
				if(_AI_VEHICLE)then
				{
					_timer = diag_tickTime + 10;
					waitUntil {
						createVehicleCrew _vehicleObject;
						count(crew _vehicleObject) > 0 || diag_tickTime > _timer
					};
					
					uiSleep 0.5;
					
					if(_vehicleClass isKindOf 'Air')then
					{
						_vecdir = vectordir _vehicleObject; 
						_vehicleObject setVelocity [(_vecdir select 0)*50,(_vecdir select 1)*50,150];
					};
				};
				
				uiSleep 3;
				_vehicleObject setDamage 0;
				_vehicleObject allowDamage true;
				
				_timeOut = diag_tickTime + 5;
				waitUntil {
					{ (group _x) setGroupOwner (owner _target);_x setOwner (owner _target); } forEach (crew _vehicleObject);
					_vehicleObject setOwner (owner _target);
					
					uiSleep 1;
					diag_tickTime > _timeOut
				};
			};
		};
		_vehicleObject setVariable ['infiSTAR_created',[_clientName,_clientUID]];
	};
	if(_option isEqualTo 1)exitWith
	{
		_unitNetId = _inputArray select 1;
		_pos = _inputArray select 2;
		_pos set[2,(_pos select 2)+0.3];
		_unit = objectFromnetId _unitNetId;
		_lastpos = getPos _unit;
		_name = _unit call fnc_get_exileObjName;
		_uid = getPlayerUID _unit;
		_veh = vehicle _unit;
		_isOnFoot = isNull objectParent _unit;


		_fn_actualTP = {
			_tpObj = _this;

			_unitTpArray = _tpObj getVariable ['TPARRAY',[]];
			_unitTpArray pushBackUnique _pos;
			_tpObj setVariable ['TPARRAY',_unitTpArray];

			_tpkey = _tpObj getVariable ['tpkey',''];
			if(_tpkey isEqualTo '')then
			{
				_arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'];
				_tpkey = '';
				for '_i' from 0 to 29 do { _tpkey = _tpkey + (selectRandom _arr); };
				_tpObj setVariable ['tpkey',_tpkey];
			};
			
			[[_tpObj,_pos,_tpkey],{ (_this select 0) setVariable ['randomstring',_this select 2];_this call fnc_do_adminTP; },_tpObj,false] call FN_infiSTAR_S;
		};

		if(_isOnFoot)then
		{
			_unit call _fn_actualTP;
		}
		else
		{
			_driver = driver _veh;
			if(isPlayer _driver)then
			{
				_name = _driver call fnc_get_exileObjName;
				_uid = getPlayerUID _driver;
				_driver call _fn_actualTP;
			}
			else
			{
				_veh setOwner 2;
				_veh setVelocity [0,0,0];
				_veh setVectorUp [0,0,1];
				_veh setPosATL _pos;
			};
		};
		if!(_clientUID in _ld)then
		{
			_mapLP = mapGridPosition _lastpos;
			_mapCP = mapGridPosition _pos;
			_log = format[
				'%1(%2) | Teleported %3(%4) from %5(%6) to %7(%8)  (%9m)',
				_clientName,
				_clientUID,
				_name,
				_uid,
				_lastpos,
				_mapLP,
				_pos,
				_mapCP,
				round(_lastpos distance2D _pos)
			];
			_log call fnc_add_adminlog;
		};
	};
	if(_option isEqualTo 2)exitWith
	{
		_state = _inputArray select 1;
		_clientObj hideObjectGlobal _state;
	};
	if(_option isEqualTo 3)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_pos = _inputArray select 2;
		_itemClassName = _inputArray select 3;
		
		_lootHolder = objNull;
		_wpnh = nearestObjects [_target, ['GroundWeaponHolder','WeaponHolderSimulated','LootWeaponHolder'], 3];
		if!(_wpnh isEqualTo [])then{_lootHolder = _wpnh select 0;};
		if(isNull _lootHolder)then
		{
			_lootHolder = createVehicle ['GroundWeaponHolder',_pos,[],3,'CAN_COLLIDE'];
			_lootHolder setPosATL _pos;
			_lootHolder setVariable ['BIS_enableRandomization',false];
		};
		
		if(getText(configfile >> 'CfgVehicles' >> _itemClassName >> 'vehicleClass') == 'BackPacks')exitWith
		{
			_lootHolder addBackpackCargoGlobal [_itemClassName,1];
		};
		
		_lootHolder addItemCargoGlobal [_itemClassName,1];
		if(isClass (configfile >> 'CfgWeapons' >> _itemClassName))then
		{
			_magazines = getArray (configfile >> 'CfgWeapons' >> _itemClassName >> 'magazines');
			if(str _magazines != '[]')then
			{
				{_lootHolder addItemCargoGlobal [_x,3];} forEach _magazines;
			};
		};
	};
	if(_option isEqualTo 4)exitWith
	{
		_texture = _inputArray select 1;
		_textureid = _inputArray select 2;
		_dir = _inputArray select 3;
		_location = _inputArray select 4;
		
		_board = createVehicle ['Exile_Sign_TraderCity', _location, [], 0, 'CAN_COLLIDE'];
		_board setObjectTextureGlobal[0,_texture];
		_board setDir _dir;
		_board addMPEventHandler ['MPKilled', { if !(isServer) exitWith {}; (_this select 0) call fnc_remove_billboard;}];
		
		_board setVariable ['ExileOwnerUID',_clientUID];
		_board setVariable ['ExileAccessCode',_textureid+1];
		_board call ExileServer_object_vehicle_database_insert;
		
		_board = createVehicle ['Exile_Sign_TraderCity', _location, [], 0, 'CAN_COLLIDE'];
		_board setObjectTextureGlobal[0,_texture];
		_board setDir (_dir+180);
		_board addMPEventHandler ['MPKilled', { if !(isServer) exitWith {}; (_this select 0) call fnc_remove_billboard;}];
		
		_board setVariable ['ExileOwnerUID',_clientUID];
		_board setVariable ['ExileAccessCode',_textureid+1];
		_board call ExileServer_object_vehicle_database_insert;
	};
	if(_option isEqualTo 5)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_offset = _inputArray select 2;
		_maxHeight = _inputArray select 3;
		_target attachTo [vehicle _clientObj,[0,_offset,_maxHeight]]; 
	};
	if(_option isEqualTo 7)exitWith
	{
		_msg = _inputArray select 1;
		if(typename _msg == 'ARRAY')then{_msg = toString _msg;};
		[_msg,-2] call fnc_serverMassMessage;
	};
	if(_option isEqualTo 9)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		if(isNil'_target')exitWith{};
		if(isNull _target)exitWith{};
		
		_target setDamage 0;
		if((_target isKindOf 'LandVehicle')||(_target isKindOf 'Ship')||(_target isKindOf 'Air'))then
		{
			if(local _target)then
			{
				[_target,9999] call ExileClient_util_fuel_setFuel;
			}
			else
			{
				['setFuelRequest',[netId _target,9999]] call ExileClient_system_network_send;
			};
			_target setFuel 1;
		};
		if((getPlayerUID _target != '')&&(_target isKindOf 'Man'))then
		{
			_ownertarget = owner _target;
			if(_ownertarget > 2)then
			{
				_target setBleedingRemaining 0;
				_target setOxygenRemaining 1;
				_target setFatigue 0;
				_code = {
					ExileClientPlayerAttributes = [100,100,100,100,0,37,0];
					ExileClientPlayerAttributesASecondAgo = ExileClientPlayerAttributes;
					ExileClientPlayerLastHpRegenerationAt = diag_tickTime;
					ExileClientPlayerIsOverburdened = false;
					ExileClientPlayerOxygen = 100;
					ExileClientPlayerIsAbleToBreathe = true;
					ExileClientPlayerIsDrowning = false;
					ExileClientPlayerIsInjured = false;
					ExileClientPlayerIsBurning = false;
					ExileClientPlayerIsBleeding = false;
					ExileClientPlayerIsExhausted = false;
					ExileClientPlayerIsHungry = false;
					ExileClientPlayerIsThirsty = false;
					player setBleedingRemaining 0;
					player setOxygenRemaining 1;
					player setFatigue 0;
					
					if(!isNil'ExileClientBleedOutThread')then
					{
						if !(ExileClientBleedOutThread isEqualTo -1) then
						{
							[ExileClientBleedOutThread] call ExileClient_system_thread_removeTask;
							ExileClientBleedOutThread = -1;
						};
					};
					ExileClientPostProcessingColorCorrections ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [0.39, 0.32, 0.25, 1], [0.5,0.5,0.5,0], [0,0,0,0,0,0,4]];
					ExileClientPostProcessingColorCorrections ppEffectCommit 0;
					ExileClientPostProcessingBackgroundBlur ppEffectEnable false;
					ExileClientPostProcessingBackgroundBlur ppEffectAdjust [0];
					ExileClientPostProcessingBackgroundBlur ppEffectCommit 0;
					ExileClientPostProcessingDelirium ppEffectAdjust [2, 0.1, 0.1, 0.2, 0.2, 2, 2, 0.01, 0.01, 0.01, 0.01, 0.01, 0.1, 2, 2];
					ExileClientPostProcessingDelirium ppEffectCommit 0;
					ExileClientPostProcessingDelirium ppEffectEnable false;
					
					if(!isNil'ExileRadiationThreadHandle')then
					{
						[] call ExileClient_system_radiation_event_onPlayerDied;
						ExilePlayerRadiation = 0;
						ExilePlayerRadiationLastCheck = 0;
						[] call ExileClient_system_radiation_event_onPlayerSpawned;
					};
					true
				};
				['',_code,_ownertarget,false] call FN_infiSTAR_S;
			};
		};
	};
	if(_option isEqualTo 10)exitWith
	{
		_netId = _inputArray select 1;
		_object = objectFromnetId _netId;
		_object = vehicle _object;
		if((_object isKindOf 'LandVehicle') || (_object isKindOf 'Air') || (_object isKindOf 'Ship') || (_object isKindOf 'Static'))then
		{
			_type = typeOf _object;
			_locked = locked _object;
			if(_locked isEqualTo 2)then
			{
				if(isNumber(configfile >> 'CfgVehicles' >> _type >> 'exileIsLockable'))then
				{
					_object setVariable ['ExileIsLocked',0,true];
				}
				else
				{
					if(local _object)then
					{
						_object lock 0;
					}
					else
					{
						[owner _object,'LockVehicleRequest',[_netId,false]] call ExileServer_system_network_send_to;
					};
					_object setVariable ['ExileIsLocked',0];
				};
				_object enableRopeAttach true;
			}
			else
			{
				if(isNumber(configfile >> 'CfgVehicles' >> _type >> 'exileIsLockable'))then
				{
					_object setVariable ['ExileIsLocked',-1,true];
				}
				else
				{
					if(local _object)then
					{
						_object lock 2;
					}
					else
					{
						[owner _object,'LockVehicleRequest',[_netId,true]] call ExileServer_system_network_send_to;
					};
					_object setVariable ['ExileIsLocked',-1];
				};
				_object enableRopeAttach false;
			};
			_object setVariable ['ExileLastLockToggleAt', time];
			_object setVariable ['ExileAccessDenied', false];
			_object setVariable ['ExileAccessDeniedExpiresAt', 0];		
			_object call ExileServer_system_vehicleSaveQueue_addVehicle;
		};
	};
	if(_option isEqualTo 11)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_code = {
			_inventoryP = [];
			{_inventoryP pushBack _x;} forEach (assignedItems player);
			{_inventoryP pushBack _x;} forEach (magazines player);
			{_inventoryP pushBack _x;} forEach (weapons player);
			{_inventoryP pushBack _x;} forEach (primaryWeaponItems player);
			{_inventoryP pushBack _x;} forEach (secondaryWeaponItems player);
			_inventoryP pushBack (primaryWeapon player);
			_inventoryP pushBack (secondaryWeapon player);
			_inventoryP pushBack (uniform player);
			_inventoryP pushBack (vest player);
			_inventoryP pushBack (backpack player);
			_inventoryP pushBack (headgear player);
			_inventoryP pushBack (goggles player);
			{
				player removeItem _x;
				player removeWeapon _x;
				player removeMagazine _x;
				removeUniform player;
				removeVest player;
				removeBackpackGlobal player;
				removeHeadgear player;
				removeGoggles player;
				player removePrimaryWeaponItem _x;
				player removeSecondaryWeaponItem _x;
				player unlinkItem _x;
			} forEach _inventoryP;
		};
		['',_code,(owner _target),false] call FN_infiSTAR_S;
	};
	"; if(_ryanzombies)then{ _asd = _asd + "
	if(_option isEqualTo 12)exitWith
	{
		_unit = _inputArray select 1;
		_playerid = owner _unit;
		_spawnpos = _unit modelToWorldVisual [(random 50)*(selectRandom [-1,1]),(random 50)*(selectRandom [-1,1]),0];
		if(isNil'zombie_group')then{zombie_group = grpNull;};
		
		_ryanzombies = getArray(configfile >> 'CfgPatches' >> 'Ryanzombies' >> 'units');
		
		if(isNull zombie_group)then
		{
			_zeds = _spawnpos nearEntities [_ryanzombies, 10000000];
			{
				_group = group _x;
				if(!isNull _group)exitWith
				{
					zombie_group = _group;
				};
			} forEach _zeds;
		};
		if(isNull zombie_group)then{zombie_group = createGroup east;};
		
		_zClass = selectRandom _ryanzombies;
		_zClass createUnit [_spawnpos,zombie_group,''];
		zombie_group setGroupOwner _playerid;
		
		if(isNil'zombie_cleanup_taskid')then
		{
			zombie_cleanup_code = {
				if(isNil'zombie_group')then{zombie_group = grpNull;};
				if(!isNull zombie_group)then
				{
					{
						if(!isNull _x)then
						{
							if(!alive _x)then
							{
								_zombie_cleanup_time = _x getVariable ['zombie_cleanup_time',-1];
								if(_zombie_cleanup_time isEqualTo -1)then
								{
									_x setVariable ['zombie_cleanup_time',time + 80];
								}
								else
								{
									if(time > _zombie_cleanup_time)then
									{
										_x setDamage 1;
										deleteVehicle _x;
									};
								};
							};
						};
					} forEach (units zombie_group);
				};
			};
			zombie_cleanup_taskid = [30, zombie_cleanup_code, [], true] call ExileServer_system_thread_addTask;
		};
	};
	"; }; _asd = _asd + "
	if(_option isEqualTo 12001)exitWith
	{
		_player = objectFromnetId (_inputArray select 1);
		_amount = _inputArray select 2;
		
		_playerMoney = _player getVariable ['ExileMoney', 0];
		_lockerMoney = _player getVariable ['ExileLocker', 0];
		_playerMoney = _playerMoney + _amount;
		_poptabsplayer = _playerMoney + _lockerMoney;
		_player setVariable ['ExilePopTabsCheck', _poptabsplayer];
		_player setVariable ['ExileMoney', _playerMoney, true];
		_player setVariable ['ExileLocker', _lockerMoney, true];
		format['setPlayerMoney:%1:%2', _playerMoney, _player getVariable ['ExileDatabaseID', 0]] call ExileServer_system_database_query_fireAndForget;
	};
	if(_option isEqualTo 12002)exitWith
	{
		_player = objectFromnetId (_inputArray select 1);
		_amount = _inputArray select 2;
		
		_playerMoney = _player getVariable ['ExileMoney', 0];
		_lockerMoney = _player getVariable ['ExileLocker', 0];
		_lockerMoney = _lockerMoney + _amount;
		_poptabsplayer = _playerMoney + _lockerMoney;
		_player setVariable ['ExilePopTabsCheck', _poptabsplayer];
		_player setVariable ['ExileMoney', _playerMoney, true];
		_player setVariable ['ExileLocker', _lockerMoney, true];
		format['updateLocker:%1:%2', _lockerMoney, (getPlayerUID _player)] call ExileServer_system_database_query_fireAndForget;
	};
	if(_option isEqualTo 12003)exitWith
	{
		_player = objectFromnetId (_inputArray select 1);
		_amount = _inputArray select 2;
		
		_playerRespect = _player getVariable ['ExileScore', 0];
		_playerRespect = _playerRespect + _amount;
		_player setVariable ['ExileScoreCheck', _playerRespect];
		_player setVariable ['ExileScore', _playerRespect, true];
		[_playerRespect,{ExileClientPlayerScore = _this;},(owner _player),false] call FN_infiSTAR_S;
		format['setAccountScore:%1:%2', _playerRespect, (getPlayerUID _player)] call ExileServer_system_database_query_fireAndForget;
	};
	if(_option isEqualTo 13)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_value = _inputArray select 2;
		_targetUID = getPlayerUID _target;
		if(_targetUID in _ld)then
		{
			['ERROR',{systemChat _this;_this call FN_SHOW_LOG;},_clientOwnerID,false] call FN_infiSTAR_S;
		}
		else
		{
			[_value,{ if!(userInputDisabled isEqualTo _this)then{disableUserInput _this;}; },(owner _target),false] call FN_infiSTAR_S;
		};
	};
	if(_option isEqualTo 14)exitWith
	{
		_obj = objectFromnetId (_inputArray select 1);
		if(!isNull _obj)then
		{
			_pincode = _obj getVariable ['ExileAccessCode',''];
			_owneruid = _obj getVariable ['ExileOwnerUID', ''];
			if(_owneruid isEqualTo '')then
			{
				_owneruid = missionNameSpace getVariable [format['"+_uid_by_owner+"%1',owner _obj],''];
			};
			_ownername = missionNameSpace getVariable [format['"+_name_by_uid+"%1',_owneruid],''];
			if(_clientOwnerID > 2)then
			{
				[_obj,_pincode,_ownername,_owneruid] remoteExecCall ['admin_showinfo_catch',_clientOwnerID,false];
			};
		};
	};
	if(_option isEqualTo 15)exitWith
	{
		_victimnetId = _inputArray select 1;
		_hostageTakernetId = _inputArray select 2;
		_value = _inputArray select 3;
		if(_value)then
		{
			try {
				_victim = objectFromnetId _victimnetId;
				_hostageTaker = objectFromnetId _hostageTakernetId;
				if (isNull _hostageTaker) then 
				{
					throw 'Unknown player cannot handcuff someone!';
				};
				if !(alive _hostageTaker) then 
				{
					throw 'The dead cannot handcuff others!'; 
				};
				if (isNull _victim) then 
				{
					throw 'Cannot handcuff unknown victim!'; 
				};
				if !(isPlayer _victim) then 
				{
					throw 'Cannot handcuff bots!'; 
				};
				if !(_victim isKindOf 'Exile_Unit_Player') then 
				{
					throw 'Can only handcuff players!'; 
				};
				if !(alive _victim) then 
				{
					throw 'Dead people cannot be handcuffed!'; 
				};
				if (_victim getVariable ['ExileIsHandcuffed', false]) then 
				{
					throw 'Cannot double handcuff someone!'; 
				};
				moveOut _victim;
				_victim action ['eject', (vehicle _victim)];
				_victim setVariable ['ExileIsHandcuffed', true, true];
				_victim setVariable ['ExileHostageTakernetId', netId _hostageTaker];
				_victim setVariable ['ExileHostageTakerUID', getPlayerUID _hostageTaker];
				['switchMoveRequest', [_victimnetId, 'Acts_AidlPsitMstpSsurWnonDnon_loop']] call ExileServer_system_network_send_broadcast;
				[_victim, 'handcuffRequest', [netId _hostageTaker]] call ExileServer_system_network_send_to;
			}
			catch {
				diag_log format['<infiSTAR.de> Restrain exception: %1',_exception];
			};
		}
		else
		{
			try {
				_victim = objectFromnetId _victimnetId;
				if (isNull _victim) then 
				{
					throw 'Cannot free unknown victim!'; 
				};
				if !(_victim getVariable ['ExileIsHandcuffed', false]) then 
				{
					throw 'Cannot free not-handcuffed ones!'; 
				};
				['switchMoveRequest', [netId _victim, 'Acts_AidlPsitMstpSsurWnonDnon_out']] call ExileServer_system_network_send_broadcast;
				_victim setVariable ['ExileIsHandcuffed', false, true];
				_victim setVariable ['ExileHostageTakernetId', nil];
				_victim setVariable ['ExileHostageTakerUID', nil];
				
				[
					'',
					{
						ExileClientIsHandcuffed = false;
						ExileClientHostageTaker = objNull;
						if !(ExileClientBreakFreeActionHandle isEqualTo -1) then 
						{
							player removeAction ExileClientBreakFreeActionHandle;
							ExileClientBreakFreeActionHandle = -1;
						};
					},
					owner _victim,
					false
				] call FN_infiSTAR_S;
			}
			catch {
				diag_log format['<infiSTAR.de> UnRestrain exception: %1',_exception];
			};
		};
	};
	if(_option isEqualTo 16)exitWith
	{
		_k = false;
		_inputArray params ['_option','_FOG_VALUE','_OVERCAST_VALUE','_RAIN_VALUE'];
		if(_FOG_VALUE != fog)then
		{
			0 setFog _FOG_VALUE;
			_k = true;
		};
		if(_OVERCAST_VALUE != overcast)then
		{
			0 setOvercast _OVERCAST_VALUE;
			_k = true;
		};
		if(_RAIN_VALUE != rain)then
		{
			0 setRain _RAIN_VALUE;
			_k = true;
		};
		if(_k)then{
			simulWeatherSync;
			forceWeatherChange;
		};
	};
	if(_option isEqualTo 17)exitWith
	{
		_hour = _inputArray select 1;
		_date = date;
		_date set[3,_hour];
		setDate _date;
	};
	if(_option isEqualTo 18)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_value = _inputArray select 2;
		[
			_value,
			{
				if(_this)then
				{
					[player,60] call fnc_infiSTAR_setUncon;
				}
				else
				{
					_uncon_thread = player getVariable 'uncon_thread';
					if(!isNil'_uncon_thread')then{terminate _uncon_thread;call fn_infiSTAR_EndCustomHint;};
					player setUnconscious false;
					player switchMove '';
				}; 
			},
			(owner _target),
			false
		] call FN_infiSTAR_S;
	};
	if(_option isEqualTo 19)exitWith
	{
		_inputArray params[['_option',19],['_netId','']];
		_netId call fn_infiSTAR_revive;
	};
	if(_option isEqualTo 20)exitWith
	{
		_obj = objectFromnetId(_inputArray select 1);
		_pos = _inputArray select 2;
		if(!isNull _obj)then{_obj setPos _pos;};
	};
	if(_option isEqualTo 21)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		
		[
			_target,
			{
				_this spawn {
					_this playActionNow 'GestureExileSuicide01';
					uiSleep 4.4;
					_sounds = [
						'A3\Sounds_F\arsenal\weapons\Pistols\Zubr\Zubr_short_01.wss',
						'A3\Sounds_F\arsenal\weapons\Pistols\Zubr\Zubr_short_02.wss',
						'A3\Sounds_F\arsenal\weapons\Pistols\Zubr\Zubr_short_03.wss'
					];
					playSound3D [selectRandom _sounds, _this, true];
					_this setDamage 1;
				};
			},
			_target,
			false
		] call FN_infiSTAR_S;
	};
	if(_option isEqualTo 22)exitWith
	{
		_target = objectFromnetId (_inputArray select 1);
		_MPHitID = _target getVariable ['MPHitID',-3];
		if(_MPHitID > -3)then
		{
			_target removeMPEventHandler ['MPHitID',_MPHitID]; 
			_target setVariable ['MPHitID',-3];
		};
	};
	if(_option isEqualTo 5000)exitWith
	{
		private['_arrayforcrate'];
		_target = objectFromnetId (_inputArray select 1);
		_selected = _inputArray select 2;
		if(isNil'_target')exitWith{};
		if(!isPlayer _target)exitWith{};
		_targetUID = getPlayerUID _target;
		_targetID = owner _target;
		if(isNil'_targetUID')exitWith{};
		if(_targetUID == '')exitWith{};
		
		_pos = AGLToASL(_target modelToWorld [0,1,0.5]);
		
		
		_allSupportBoxes = "+str _allSupportBoxes+";
		_boxarray = _allSupportBoxes select _selected;
		if(isNil'_boxarray')exitWith{};
		
		_boxname = _boxarray select 0;
		_arrayforcrate = _boxarray select 1;
		if(isNil'_arrayforcrate')exitWith{};
		if(_arrayforcrate isEqualTo [])exitWith{};
		
		_box = 'Exile_Container_SupplyBox' createVehicle _pos;
		_box setPosASL _pos;
		_box setVelocity [0,0,0];
		_box setVectorUp [0,0,1];
		
		clearBackpackCargoGlobal _box;
		clearItemCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		
		{
			if(typename _x == 'ARRAY')then
			{
				_item = _x select 0;
				_BackPack = getText (configfile >> 'CfgVehicles' >> _item >> 'vehicleClass') == 'BackPacks';
				if(_BackPack)then
				{
					_box addBackpackCargoGlobal [_item,_x select 1];
				}
				else
				{
					_box addItemCargoGlobal [_item,_x select 1];
				};
			}
			else
			{
				_item = _x;
				_BackPack = getText (configfile >> 'CfgVehicles' >> _item >> 'vehicleClass') == 'BackPacks';
				if(_BackPack)then
				{
					_box addBackpackCargoGlobal [_item,1];
				}
				else
				{
					_box addItemCargoGlobal [_item,1];
				};
			};
		} forEach _arrayforcrate;
		
		_box setOwner _targetID;
		_txt = format['%1 created for %2(%3)!',_boxname,_target call fnc_get_exileObjName,_targetUID];
		if!(_clientOwnerID isEqualTo _targetID)then
		{
			[_txt,{systemChat _this;cutText [_this, 'PLAIN'];},_targetID,false] call FN_infiSTAR_S;
		};
	};
	if(_option isEqualTo 9876)exitWith
	{
		_uid = _inputArray select 1;
		_name = missionNameSpace getVariable [format['"+_name_by_uid+"%1',_uid],''];
		_steamName = _uid call fnc_getSteamNameIfSaved;
		_code = {
			params['_name','_uid','_steamName'];
			_log = format['<infiSTAR.de> %1(%2) SteamName is: %3',_name,_uid,_steamname];
			format['%1 -> %2',_name,_steamname] call FN_SHOW_LOG;
			systemchat _log;
			diag_log _log;
		};
		[[_name,_uid,_steamname],_code,_clientOwnerID,false] call FN_infiSTAR_S;
	};
};
"+_fnc_AdminReqReal+" = compileFinal ([_fnc_AdminReqReal] call fnc_CompilableString);
";
diag_log format['<infiSTAR.de> %1 - fnc_AdminReqReal: added !',time];

diag_log format['<infiSTAR.de> %1 - fnc_server_handle_pre_mpmessage: adding to main string..',time];
_asd = _asd + "
diag_log format['<infiSTAR.de> %1 - fnc_server_handle_pre_mpmessage: still compiling...',time];
";
diag_log format['<infiSTAR.de> %1 - fnc_server_handle_pre_mpmessage: added !',time];

diag_log format['<infiSTAR.de> %1 - adminStartupCode: adding to main string..',time];
_asd = _asd + "
diag_log format['<infiSTAR.de> %1 - adminStartupCode: still compiling...',time];
_adminStartupCode = {
	_log = format['<infiSTAR.de> %1 - waiting for client to be ready..',time call FN_GET_TIME_TIME];systemchat _log;diag_log _log;
	waitUntil{getClientStateNumber >= 10 && !isNull findDisplay 46 && !isNil 'ExileClientLoadedIn' && !isNil'ExileSystemThreadID' && {alive player}};
	waitUntil{ExileSystemThreadID > 10005};
	"; if(!_HIDE_FROM_PLAYERS)then{ _asd = _asd + "_log = format['<infiSTAR.de> %1 - client ready.',time call FN_GET_TIME_TIME];systemchat _log;diag_log _log;"; }; _asd = _asd + "
	_admins = "+str _admins+";
	_tokenFromServer = _this select 0;
	_name = _this select 1;
	_puid = _this select 2;
	_adminsA = _this select 3;
	infiSTAR_Ds = _this select 4;
	infiSTAR_ADMINS = _adminsA;
	if(!isNil'fn_ACR')exitWith{
		diag_log format['<infiSTAR.de> fn_AdminClientRequest already existing! %1   (kicked to lobby)',fn_ACR];
		(findDisplay 46) closeDisplay 0;
	};
	['fn_ACR',_this select 5] call FN_infiSTAR_F;
	"; if(_LogAdminActions)then{ _asd = _asd + "
	if(_puid in (_this select 4))then{['fnc_adminLog',''] call FN_infiSTAR_F;}else{['fnc_adminLog','[1234,toArray _this] call fn_ACR;'] call FN_infiSTAR_F;};
	"; }else{ _asd = _asd + "
	if(isNil 'fnc_adminLog')then{['fnc_adminLog',''] call FN_infiSTAR_F;};
	"; }; _asd = _asd + "
	_MY_PERSONAL_ACCESS_ARRAY = [];
	if(_puid in _adminsA)then
	{
		OPEN_ADMIN_MENU_KEY = "+str _OPEN_ADMIN_MENU_KEY+";
		passwordAdmin = "+str _passwordAdmin+";
		diag_log format['<infiSTAR.de> OPEN_ADMIN_MENU_KEY: %1',OPEN_ADMIN_MENU_KEY];
		_adminUIDandAccess = "+str _adminUIDandAccess+";
		if(!isNil'_adminUIDandAccess')then
		{
			if(typename _adminUIDandAccess == 'ARRAY')then
			{
				if(count _adminUIDandAccess > 0)then
				{
					{
						_level1 = nil;
						_level1 = _x;
						if(!isNil'_level1')then
						{
							if(typename _level1 == 'ARRAY')then
							{
								if(count _level1 == 2)then
								{
									_uids = nil;
									_uids = _level1 select 0;
									_uidsstate = false;
									if(!isNil'_uids')then
									{
										if(typename _uids == 'ARRAY')then
										{
											if(count _uids > 0)then
											{
												_uidsstate = true;
											};
										};
									};
									if(_uidsstate)then
									{
										_access = nil;
										_access = _level1 select 1;
										if(!isNil'_access')then
										{
											if(typename _access == 'ARRAY')then
											{
												if(count _access > 0)then
												{
													if(_puid in _uids)then{_MY_PERSONAL_ACCESS_ARRAY = _access;};
												};
											};
										};
									};
								};
							};
						};
					} forEach _adminUIDandAccess;
				};
			};
		};
		_ADMINLEVELACCESS = '
			_puid = getPlayerUID player;
			if(_puid in '+str (_this select 4)+')exitWith{true};
			if(_this in '+str _MY_PERSONAL_ACCESS_ARRAY+')exitWith{true};
			false
		';
		['ADMINLEVELACCESS',_ADMINLEVELACCESS] call FN_infiSTAR_F;
		admin_d0 = {[_this,0] call admin_d0_MASTER;};
		admin_d0_server = {[_this,1] call admin_d0_MASTER;};
		admin_d0_target = {[_this,2] call admin_d0_MASTER;};
		admin_d0_MASTER = {
			private['_do','_opt','_targetObj'];
			_opt = _this select 1;
			if(isNil'_opt')exitWith{};
			_do = _this select 0 select 0;
			if(isNil'_do')exitWith{};
			if(typename _do == 'CODE')then{_do = (str(_do)) select [1,((count(str(_do)))-2)];};
			if(typename _do != 'STRING')exitWith{systemChat 'admin_d0 needs STRING code!';};
			if(_opt isEqualTo 2)exitWith
			{
				_targetObj = _this select 0 select 1;
				if(isNil '_targetObj')exitWith{systemChat 'admin_d0_target has no object';};
				if(typename _targetObj != 'OBJECT')exitWith{systemChat 'admin_d0_target has no object';};
				if(isNull _targetObj)exitWith{systemChat 'admin_d0_target has no object';};
				[69,_opt,toArray _do,netId _targetObj] call fn_ACR;
			};
			[69,_opt,toArray _do] call fn_ACR;
		};
		if(isNil 'AH_HackLogArray')then{AH_HackLogArray = [];};
		if(isNil 'AH_SurvLogArray')then{AH_SurvLogArray = [];};
		if(isNil 'AH_AdmiLogArray')then{AH_AdmiLogArray = [];};
		if(isNil 'PVAH_AHTMPBAN')then{PVAH_AHTMPBAN = [];};
		if(isNil 'PVAH_AHTMPBAN_REASON')then{PVAH_AHTMPBAN_REASON = [];};
		"; if(!_HIDE_FROM_PLAYERS)then{ _asd = _asd + "
			systemChat format['<infiSTAR.de> %1 - Welcome Admin!',time call FN_GET_TIME_TIME];
		"; }; _asd = _asd + "
	};
};
diag_log format['<infiSTAR.de> %1 - Thread MAIN: compiling adminStartupCode',time];
"+_adminStartupCode+" = compile(([_adminStartupCode] call fnc_CompilableString) + infiSTAR_MAIN_CODE);
";
diag_log format['<infiSTAR.de> %1 - adminStartupCode: added !',time];
diag_log format['<infiSTAR.de> %1 - Thread #1: Preparing Server Loop #1..',time];
_asd = _asd + "
[] spawn {
diag_log format['<infiSTAR.de> %1 - Thread #1: Server Loop #1 starting',time];
_admins = "+str _admins+";
_DO_THIS_MORE_OFTEN = ""
if(!isNil'runcheck4')then
{
	if!(runcheck4 isEqualType 1)exitWith
	{
		_log = 'Runcheck failed (4) - HACKED!';
		[player call fnc_get_exileObjName,getPlayerUID player,'BAN',toArray(_log)] call "+_AHKickLog+";
		(findDisplay 46) closeDisplay 0;
	};
	runcheck4 = runcheck4 + 1;
	if(runcheck4 > 2)then
	{
		_log = 'Runcheck failed (4)';
		[player call fnc_get_exileObjName,getPlayerUID player,'HLOG_SKICK',toArray(_log)] call "+_AHKickLog+";
		(findDisplay 46) closeDisplay 0;
	};
};
if(!isNull player)then
{
	if(alive player)then
	{
		_puid = getPlayerUID player;
		if((count _puid) isEqualTo 17)then
		{
			runcheck4 = 0;
			if(getClientStateNumber >= 10 && !isNull findDisplay 46)then
			{
				_livestarted = player getVariable ['"+_livestarted+"',-1];
				if(_livestarted isEqualTo -1)then
				{
					if((typeOf player) isEqualTo 'Exile_Unit_Player')then
					{
						player setVariable ['"+_livestarted+"',time + 80];
					};
				}
				else
				{
					_dif = abs(_livestarted - time);
					if((time > _livestarted)||(_dif > 300))then
					{
						_name = player call fnc_get_exileObjName;
						
						_tocheck = [1];
						_admins = ""+str _admins+"";
						if!(_puid in _admins)then{
							"; if(_UAT)then{ _asd = _asd + "
								_tocheck pushBack 2;
							"; }; _asd = _asd + "
							"; if(_wall_glitch_object)then{ _asd = _asd + "
								_tocheck pushBack 3;
							"; }; _asd = _asd + "
						};
						
						_checked = [];
						{
							if((_x select 0) isEqualTo '<spawn> ')then{_checked pushBack 1;};
							if((_x select 0) isEqualTo 'ATP ')then{_checked pushBack 2;};
							if((_x select 0) isEqualTo 'ANTI GLITCH')then{_checked pushBack 3;};
						} forEach diag_activeSQFScripts;
						{
							if!(_x in _checked)then
							{
								_log = format['Runcheck failed (%1)',_x];
								[_name,_puid,'HLOG_SKICK',toArray(_log)] call "+_AHKickLog+";
								(findDisplay 46) closeDisplay 0;
							};
						} forEach _tocheck;
					};
				};
			};
			if(isServer)then
			{
				player_is_server = 'Fake isServer';publicVariableServer 'player_is_server';
				diag_log '<infiSTAR.de> kicked to lobby #3';
				(findDisplay 46) closeDisplay 0;
			};
			
			
			{
				_var = missionNamespace getVariable _x;
				if(!isNil '_var')then
				{
					if!(_var isEqualType 0)then
					{
						player_broke_var = 'broken_variable';publicVariableServer 'player_broke_var';
						diag_log '<infiSTAR.de> kicked to lobby #4';
						(findDisplay 46) closeDisplay 0;
					};
				};
			} forEach ['"+_AH_RunCheckENDVAR+"','"+_AH_RunCheck+"'];
			if((isNil'"+_AH_RunCheckENDVAR+"')&&(!isNil'"+_AH_RunCheck+"'))then
			{
				if(!isNil'"+_runcheck_thread+"')then
				{
					if((typeName "+_runcheck_thread+") isEqualTo 'SCRIPT')exitWith
					{
						if((str "+_runcheck_thread+") isEqualTo '<NULL-script>')exitWith
						{
							broken_rc_1 = 'runcheck_thread_1';publicVariableServer 'broken_rc_1';
							diag_log '<infiSTAR.de> kicked to lobby #5.1';
							(findDisplay 46) closeDisplay 0;
						};
						terminate "+_runcheck_thread+";"+_runcheck_thread+"=nil;
					}
					else
					{
						broken_rc_2 = 'runcheck_thread_2';publicVariableServer 'broken_rc_2';
						diag_log '<infiSTAR.de> kicked to lobby #5.2';
						(findDisplay 46) closeDisplay 0;
					};
				};
				"+_runcheck_thread+" = [] spawn {
					_temptime= time + 30;
					waitUntil {((!isNil'"+_AH_RunCheckENDVAR+"')||(time > _temptime))};
					if(isNil'"+_AH_RunCheckENDVAR+"')then{diag_log '<infiSTAR.de> kicked to lobby #6';(findDisplay 46) closeDisplay 0;};
				};
			};
		};
	};
};
"";
_zero = ""
_tmp=""+str FN_infiSTAR_F+"";
if(isNil 'FN_infiSTAR_F')then{FN_infiSTAR_F=_tmp;};
if(str FN_infiSTAR_F != str _tmp)then{ FN_infiSTAR_F__MODIFIED = time;publicVariableServer'FN_infiSTAR_F__MODIFIED';(findDisplay 46)closeDisplay 0; };
_tmp=""+str fnc_CompilableString+"";
if(isNil 'fnc_CompilableString')then{fnc_CompilableString=_tmp;};
if(str fnc_CompilableString != str _tmp)then{ fnc_CompilableString__MODIFIED = time;publicVariableServer'fnc_CompilableString__MODIFIED';(findDisplay 46)closeDisplay 0; };
_tmp=""+str FN_infiSTAR_CS+"";
if(isNil 'FN_infiSTAR_CS')then{FN_infiSTAR_CS=_tmp;};
if(str FN_infiSTAR_CS != str _tmp)then{ FN_infiSTAR_CS__MODIFIED = time;publicVariableServer'FN_infiSTAR_CS__MODIFIED';(findDisplay 46)closeDisplay 0; };
_tmp=""+str fnc_CompilableString+"";
if(isNil 'fnc_CompilableString')then{fnc_CompilableString=_tmp;};
if(str fnc_CompilableString != str _tmp)then{ fnc_CompilableString__MODIFIED = time;publicVariableServer'fnc_CompilableString__MODIFIED';(findDisplay 46)closeDisplay 0; };
_tmp=""+str fnc_get_exileObjName+"";
if(isNil 'fnc_get_exileObjName')then{fnc_get_exileObjName=_tmp;};
if(str fnc_get_exileObjName != str _tmp)then{ fnc_get_exileObjName = time;publicVariableServer'fnc_get_exileObjName';(findDisplay 46)closeDisplay 0; };
"";
[compile _zero,{[] call _this},-2,format['abc%1',round(random 9999)]] call FN_infiSTAR_S;
_DO_THIS_MORE_OFTEN = (_DO_THIS_MORE_OFTEN + _zero);
_DO_THIS_MORE_OFTEN = compile _DO_THIS_MORE_OFTEN;
"; if(_check_steam_ban && _armalog)then{ _asd = _asd + "
FN_CHECK_STEAMBAN = compileFinal ""
	params['_name','_uid'];
	_res = [format['http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=B0ABFD9E85EED86FB2A31BCB68940C6B&steamids=%1',_uid]] call FN_ARMA_FETCHDATA;
	if(_res isEqualTo '')then
	{
		['HLOG_VAC',format['%1(%2) ERROR - could not resolve VAC BAN STATE', _name, _uid]] call FNC_A3_CUSTOMLOG;
	}
	else
	{
		_res = toArray _res;
		_res = _res - [9];
		_res = _res - [10];
		_res = _res - [13];
		_res = _res - [32];
		_res = toString _res;
		_rescount = count _res;
		_res = _res select [(_res find 'SteamId')-1,_rescount];
		_res = _res select [0,_res find '}'];
		_parts = _res splitString ',';
		_res = _res select [_res find 'VACBanned',_rescount];
		if!(_parts isEqualTo [])then
		{
			_banned = false;
			{
				_isString = format['%1',_parts select (_forEachIndex+1)];
				_shouldBeString = format['%1:false',str _x];
				if!(_isString isEqualTo _shouldBeString)then
				{
				"; if(_ban_for_steam_ban)then{ _asd = _asd + "
					_log = format['Steam known Hacker BANNED: %1',_res];
					[_name,_uid,'BAN',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				"; }else{ _asd = _asd + "
					_log = format['Steam known Hacker just joined the server: %1',_res];
					[_name,_uid,'HLOG_VAC',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				"; }; _asd = _asd + "
					_banned = true;
				};
				if(_banned)exitWith{};
			} forEach ['CommunityBanned','VACBanned'];
			if(_banned)exitWith{};
			
			{
				_isString = format['%1',_parts select (_forEachIndex+3)];
				_shouldBeString = format['%1:0',str _x];
				if!(_isString isEqualTo _shouldBeString)then
				{
				"; if(_ban_for_steam_ban)then{ _asd = _asd + "
					_log = format['Steam known Hacker BANNED: %1',_res];
					[_name,_uid,'BAN',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				"; }else{ _asd = _asd + "
					_log = format['Steam known Hacker just joined the server: %1',_res];
					[_name,_uid,'HLOG_VAC',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				"; }; _asd = _asd + "
					_banned = true;
				};
				if(_banned)exitWith{};
			} forEach ['NumberOfVACBans','DaysSinceLastBan','NumberOfGameBans'];
		};
	};
"";
"; }; _asd = _asd + "


_fn_playerConnected = {
	params['_id','_uid','_name','_jip','_owner'];
	if(count _uid < 17)then
	{
		_log = format['Connected (UID?): %1(%2) Owner: %3',_name,_uid,_owner];
		['CONNECTLOG',_log] call FN_ARMA_LOG;
	}
	else
	{
		_token = [_uid] call "+_server_setTokenR+";
		missionNameSpace setVariable [format['"+_name_by_uid+"%1',_uid],_name];
		missionNameSpace setVariable [format['"+_owner_by_uid+"%1',_uid],_owner];
		missionNameSpace setVariable [format['"+_uid_by_owner+"%1',_owner],_uid];
		missionNameSpace setVariable [format['NAME_BY_UID_%1',_uid],_name];
		missionNameSpace setVariable [format['UID_BY_OWNER_%1',_owner],_uid];

		_admins = "+str _admins+";_admin = _uid in _admins;
		if(!_admin)then{
	"; if(_USE_DATABASE_WHITELIST)then{ _asd = _asd + "
			_kick = true;
			_notwhitelisted = format['getAccountWhitelisted:%1', _uid] call ExileServer_system_database_query_selectSingle;
			_notwhitelisted params ['_whiteliststate'];
			if(_whiteliststate isEqualTo 1)then{ _kick = false; };
			if(_kick)then{ [_name,_uid,_owner,format['NOT WHITELISTED (DB STATE: %1)',_notwhitelisted]] call FNC_INFISERVERKICK; };
	"; }; _asd = _asd + "
	"; if(_USE_UID_WHITELIST)then{ _asd = _asd + "
		if!(_uid in "+str _UID_WHITELIST+")exitWith{
			[_name,_uid,_owner,'NOT WHITELISTED'] call FNC_INFISERVERKICK;
		};
	"; }; _asd = _asd + "
		};


		_ds = "+str _devs+";_d = _uid in _ds;
		_isNormal = true;if(_admin)then{_isNormal = false;if!(_uid in "+_adminsA+")then{_isNormal = true;};};
		if(_admin)then
		{
			['',fnc_debugbox_new,_owner,false] call FN_infiSTAR_S;
			if(!_isNormal)then
			{
				if(!isNil'infiSTAR_TM_fnc_full')then
				{
					_accessuids = if(isNil'fn_infiSTAR_TM_GetCfgSettings')then{[]}else{['AccessUIDs',[]] call fn_infiSTAR_TM_GetCfgSettings};
					if(_uid in _accessuids)then{[infiSTAR_TM_fnc_full,{ [] spawn _this; },_owner,false] call FN_infiSTAR_S;};
				};
				if(_d)exitWith{};
"; if(_useAdminNameTag)then{ _asd = _asd + "
				_adminTag = missionNameSpace getVariable [('admintag_'+_uid),''];
				if!(_adminTag isEqualTo '')then
				{
					_adminTagCnt = count _adminTag;
					_nameLength = count _name;
					
					['TEST',_name select [0,_adminTagCnt]] call FNC_A3_CUSTOMLOG;
					['TEST',_name select [_nameLength - _adminTagCnt]] call FNC_A3_CUSTOMLOG;
					
					
					if(!((_name select [0,_adminTagCnt]) isEqualTo _adminTag) && !((_name select [_nameLength - _adminTagCnt]) isEqualTo _adminTag))then
					{
						_isNormal = true;
						[
							[_name,_adminTag],
							{
								params['_name','_adminTag'];
								waitUntil{getClientStateNumber >= 10 && !isNull findDisplay 46 && !isNil 'ExileClientLoadedIn' && !isNil'ExileSystemThreadID' && {alive player}};
								disableSerialization;
								_display = findDisplay 46;
								
								_ctrlText = '<t align=''left'' size=''1.1''>';
								_ctrlText = _ctrlText + 'Hey Admin!';
								_ctrlText = _ctrlText + '<br/><br/>';
								_ctrlText = _ctrlText + 'in order to get Admin abilities you will have to change your name to either one of';
								_ctrlText = _ctrlText + '<br/><br/>';
								_ctrlText = _ctrlText + ''+_adminTag+' '+_name+'';
								_ctrlText = _ctrlText + '<br/>';
								_ctrlText = _ctrlText + ''+_name+' '+_adminTag+'';
								_ctrlText = _ctrlText + '</t>';
								
								ctrlDelete(_display displayCtrl 7337);
								_ctrl = _display ctrlCreate ['RscStructuredText', 7337];
								_ctrl ctrlSetPosition [safeZoneX + .25,safeZoneY + .25,safeZoneW / 3.5,safeZoneH / 3.5];
								_ctrl ctrlSetBackgroundColor [0,0,0,0.6];
								_ctrl ctrlCommit 0;
								_ctrl ctrlSetFade 1;
								_ctrl ctrlCommit 35;
								_ctrl ctrlSetStructuredText parseText _ctrlText;
							}
						] remoteExecCall ['spawn',_owner,false];
					};
				};
"; }; _asd = _asd + "
			};
		};
		[_token,_owner,_name,_uid,_admins,_ds,_admin,_isNormal] call "+_fnc_l_on_c+";
		[_name,_uid,_owner,_admin] call "+_fnc_infiSTAR_PlayerLog+";


		if(isNil {missionNameSpace getVariable format['isKnownAccount_%1',_uid]})then
		{
			_isKnownAccount = format['isKnownAccount:%1', _uid] call ExileServer_system_database_query_selectSingleField;
			if(!_isKnownAccount)then
			{
				_log = format ['%1(%2)',_name,_uid];
				['NEW_PLAYER',_log] call FNC_A3_CUSTOMLOG;
				
				"; if(_USE_ANNOUNCE_NEW_PLAYER)then{ _asd = _asd + "
					format['New Player: %1',_name] remoteExecCall ['systemChat',-2,false];
				"; }; _asd = _asd + "
			};
			missionNameSpace getVariable [format['isKnownAccount_%1',_uid],_isKnownAccount];
		};



"; if(_USE_GET_TOTAL_CONNECTIONS)then{ _asd = _asd + "
		_totalCon = missionNameSpace getVariable [format['total_connections_%1',_uid],0];
		_totalCon = _totalCon + 1;
		missionNameSpace setVariable [format['total_connections_%1',_uid],_totalCon];
		if(_totalCon isEqualTo 1)then
		{
			_parameters = format['getTotalConnections:%1', _uid];
			_query = [0, ExileServerDatabaseSessionId, _parameters] joinString ':';
			_result = _query call FN_CALL_ExtDB;
			if!(_result isEqualTo '')then
			{
				_queryRes = (parseSimpleArray _result) select 1 select 0;
				_firstCon = _queryRes param [0,[],[[]]];
				_lastCon = _queryRes param [1,[],[[]]];
				_totalCon = _queryRes param [2,0,[0]];
				missionNameSpace setVariable [format['total_connections_%1',_uid],_totalCon];
				_log = format['Connected: %1(%2) Owner: %3, first connected: %4, last connected: %5, connections: %6',_name,_uid,_owner,_firstCon,_lastCon,_totalCon];
				['CONNECTLOG',_log] call FN_ARMA_LOG;
			};
		}
		else
		{
			_log = format['Connected: %1(%2) Owner: %3, connections: %4',_name,_uid,_owner,_totalCon];
			['CONNECTLOG',_log] call FN_ARMA_LOG;
		};
"; }else{ _asd = _asd + "
		_log = format['Connected: %1(%2) Owner: %3',_name,_uid,_owner];
		['CONNECTLOG',_log] call FN_ARMA_LOG;
"; }; _asd = _asd + "

		_log = format['TOKEN [%1] FOR %2(%3) OWNER: %4, ID: %5, JIP: %6',_token,_name,_uid,_owner,_id,_jip];
		['TOKENLOG',_log] call FNC_A3_CUSTOMLOG;
	};
};
"+_fn_playerConnected+" = compileFinal ([_fn_playerConnected] call fnc_CompilableString);
infiSTAR_PlayerConnected_id = addMissionEventHandler ['PlayerConnected', { call "+_fn_playerConnected+"; }];


fn_playerDisconnected = compileFinal ""
params['_id','_uid','_name','_jip','_owner'];
if(34 in (toArray _name))exitWith{true};
if(count _uid < 17)then
{
	_log = format['Disconnected: %1(%2) Owner: %3',_name,_uid,_owner];
	['CONNECTLOG',_log] call FN_ARMA_LOG;
}
else
{
	_steamName = _uid call fnc_getSteamNameIfSaved;
	_log = format['Disconnected: %1(%2) Owner: %3, SteamName: %4',_name,_uid,_owner,_steamName];
	['CONNECTLOG',_log] call FN_ARMA_LOG;
};
_varnameKickThread = format['kickThread_%1',_uid];
_kickThread = missionNameSpace getVariable _varnameKickThread;
if(!isNil'_kickThread')then{terminate _kickThread;missionNameSpace setVariable [_varnameKickThread,nil];};
"";
infiSTAR_PlayerDisconnected_id = addMissionEventHandler ['PlayerDisconnected', { call fn_playerDisconnected; }];


"; if(_UVC)then{ _asd = _asd + "
_fnc_check_type_allowed = {
	params[['_type','']];
	_return = true;
	_typeLow = toLower _type;
"; if(_VehicleWhiteList_check)then{ _asd = _asd + "
	if!(_typeLow in "+str _VehicleWhiteList+")then{if!(_typeLow select [0,5] isEqualTo 'exile')then{_return = false;};};
"; }; _asd = _asd + "
"; if(_ForbiddenVehicles_check)then{ _asd = _asd + "
	if(_typeLow in "+str _ForbiddenVehicles+")then{_return = false;};
"; }; _asd = _asd + "
	_return
};
"+_fnc_check_type_allowed+" = compileFinal ([_fnc_check_type_allowed] call fnc_CompilableString);
_fnc_remove_badvehicle =
{
	params[['_veh',objNull],['_type',''],['_crew',[]],['_ownerUID','']];
	_infiSTAR_created = _veh getVariable ['infiSTAR_created',[]];
	if(_infiSTAR_created isEqualTo [])then
	{
		if(_crew isEqualTo [])then
		{
			_log = format['BadVehicle: %1 :: @%2 %3',_type,mapGridPosition _veh,getPos _veh];
			['SERVER',_ownerUID,'HLOG',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
		}
		else
		{
			_logged = [];
			{
				_xuid = getPlayerUID _x;
				if!(_xuid isEqualTo '')then
				{
					_log = format['BadVehicle: %1 :: @%2 %3',_type,mapGridPosition _veh,getPos _veh];
					[_x call fnc_get_exileObjName,_xuid,'HLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
					_logged pushBack _xuid;
				};
			} forEach _crew;
			if!(_ownerUID in _logged)then
			{
				_log = format['BadVehicle: %1 :: @%2 %3',_type,mapGridPosition _veh,getPos _veh];
				['SERVER',_ownerUID,'HLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
			};
		};
	}
	else
	{
		_infiSTAR_created params [['_clientName',''],['_clientUID','']];
		_log = format['BadVehicle: %1 :: @%2 %3 spawned by admin %4(%5)',_type,mapGridPosition _veh,getPos _veh,_clientName,_clientUID];
		['SERVER',_ownerUID,'HLOG',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
	};
	_veh call fnc_deleteObject;
};
"+_fnc_remove_badvehicle+" = compileFinal ([_fnc_remove_badvehicle] call fnc_CompilableString);
_fnc_vehicle_check = {
	params[['_veh',objNull]];
	if(_veh getVariable ['"+_vehicle_needs_check+"',true])then
	{
		_veh setVariable ['"+_vehicle_needs_check+"',false];
		
		_type = typeOf _veh;
		if(!(_veh isKindOf 'ParachuteBase')&&(_type find 'ejection_vest' isEqualTo -1)&&(_type find '_seat' isEqualTo -1))then
		{
			_netIdobj = netId _veh;
			_ownerIdobj = _netIdobj select [0,_netIdobj find ':'];
			_ownerIdobj = parseNumber _ownerIdobj;
			
			_uid = missionNameSpace getVariable [format['"+_uid_by_owner+"%1',_ownerIdobj],''];
			if(!(_uid isEqualTo '')&&(_ownerIdobj > 2)&&!(_type in "+str _LocalWhitelist+"))then
			{
				_name = missionNameSpace getVariable [format['"+_name_by_uid+"%1',_uid],''];
				
				_log = format['Locally created Vehicle found: %1 (%2) :: @%3 %4',_type,_netIdobj,mapGridPosition _veh,getPos _veh];
				[_name,_uid,'BAN',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				
				_veh setDamage 1;
			}
			else
			{
				_return = _type call "+_fnc_check_type_allowed+";
				if(!_return)then
				{
					[_veh,_type,crew _veh,_uid] call "+_fnc_remove_badvehicle+";
					_veh setDamage 1;
				};
			};
		};
	};
};
"+_fnc_vehicle_check+" = compileFinal ([_fnc_vehicle_check] call fnc_CompilableString);
"; }; _asd = _asd + "


_fn_2 = {

{
	if(isPlayer _x)then
	{
		_uid = getPlayerUID _x;
		if(_uid isEqualTo '')exitWith{};
		_admin = _uid in _admins;

		_name = _x call fnc_get_exileObjName;
		_netId = netId _x;
		_xtype = typeOf _x;
		_owner = owner _x;

	"; if(_armalog && _USE_GLOBAL_BAN_CHECK)then{ _asd = _asd + "
		if(_uid call fn_infiSTAR_checkGlobalBanSkip)then{[_name,_uid,_owner] call fn_infiSTAR_checkGlobalBanState;};
	"; }; _asd = _asd + "

		_x setVariable ['ExileOwnerUID',_uid];
		missionNameSpace setVariable [format['object_by_uid_%1',_uid],_x];
		missionNameSpace setVariable [format['object_by_owner_%1',_owner],_x];

		_xo = _x;
		_loggednetid = _xo getVariable ['netId',''];
		if!(_loggednetid isEqualTo _netId)then
		{
			_xo setVariable ['netId',_netId];
			_log = format['%1(%2) - %3, %4 - %5 - %6',_name,_uid,_xo,_xtype,_netId,_owner];
			['netids',_log] call FNC_A3_CUSTOMLOG;
		};
		if!(_xtype isEqualTo 'Exile_Unit_GhostPlayer')then
		{
			if!(_netId select [0,2] isEqualTo '2:')then
			{
				if((_uid select [0,2]) isEqualTo 'HC')exitWith{};
				_log = format['WRONG PLAYER-OBJECT: %1 with netId %2 @%3',_xtype,_netId,getPos _xo];
				[_name,_uid,'SLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				
				_objectOwner__ORIGINAL_OWNER_ID = _netId select [0,_netId find ':'];
				_objectOwner__ORIGINAL_OWNER_ID = parseNumber _objectOwner__ORIGINAL_OWNER_ID;
				
				_objectOwnerUid = missionNameSpace getVariable [format['"+_uid_by_owner+"%1',_objectOwner__ORIGINAL_OWNER_ID],_owner];
				_objectOwneName = missionNameSpace getVariable [format['"+_name_by_uid+"%1',_objectOwnerUid],''];
				
				[_objectOwneName,_objectOwnerUid,_objectOwner__ORIGINAL_OWNER_ID,_log] call FNC_INFISERVERKICK;
			};
		};


	"; if(_GodModeCheck || _MPH)then{ _asd = _asd + "
		if(!_admin)then
		{
			_MPHitID = _xo getVariable ['MPHitID',-3];
			if(_MPHitID isEqualTo -3)then
			{
				_id = _xo addMPEventHandler ['MPHit', { _this call fnc_mphit_handler }];
				_xo setVariable ['MPHitID',_id];
			};
		};
	"; }; _asd = _asd + "

	"; if(_fix_uniform_and_vest)then{ _asd = _asd + "
		[uniform _xo,vest _xo] remoteExecCall ['fnc_check_uniform_n_vest', _xo];
	"; }; _asd = _asd + "

		_grp = group _xo;
		_groupID = groupID _grp;
		if!(_grp isEqualTo (_xo getVariable ['ExileGroup',grpNull]))then
		{
			_xo setVariable ['ExileGroup',_grp];
			_lgroupname = toLower _groupID;
			if({(_lgroupname find _x != -1)} count "+str _badGroupNames+" > 0)exitWith{
				_grp setGroupIdGlobal [format['GRP:%1',allGroups find _grp]];
			};
		};



		_xRespect = nil;
		_xRespect = _xo getVariable 'ExileScore';
		if(!isNil'_xRespect')then
		{
			_xRespectCheck = _xo getVariable 'ExileScoreCheck';
			if(isNil'_xRespectCheck')exitWith
			{
				_xo setVariable ['ExileScoreCheck', _xRespect];
				_xo setVariable ['ExileScore', _xRespect, true];
			};
			if!(_xRespectCheck isEqualTo _xRespect)then
			{
			"; if(_checkRespectIncrease)then{ _asd = _asd + "
				_increasedBy = _xRespect - _xRespectCheck;
				if(_increasedBy > "+str _LogRespectIncrease+")then
				{
					_log = format['Respect increased by %1',_increasedBy];
					if(_increasedBy > "+str _BanRespectIncrease+")then
					{
						[_name,_uid,'BAN',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
					}
					else
					{
						[_name,_uid,'SLOG',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
					};
				};
			"; }; _asd = _asd + "
				
				_xo setVariable ['ExileScoreCheck', _xRespect];
				_xo setVariable ['ExileScore', _xRespect, true];
			};
		};


	"; if(_checkPopTabIncrease)then{ _asd = _asd + "
		_playerMoney = nil;
		_playerMoney = _xo getVariable 'ExileMoney';
		
		_lockerMoney = nil;
		_lockerMoney = _xo getVariable 'ExileLocker';
		if(!isNil'_playerMoney' && !isNil'_lockerMoney')then
		{
			_poptabsplayer = _playerMoney + _lockerMoney;
			_exilePopTabsCheck = _xo getVariable 'ExilePopTabsCheck';
			if(isNil'_exilePopTabsCheck')exitWith
			{
				_xo setVariable ['ExilePopTabsCheck', _poptabsplayer];
				_xo setVariable ['ExileMoney', _playerMoney, true];
				_xo setVariable ['ExileLocker', _lockerMoney, true];
			};
			if!(_exilePopTabsCheck isEqualTo _poptabsplayer)then
			{
				_increasedBy = _poptabsplayer - _exilePopTabsCheck;
				if(_increasedBy > "+str _LogPopTabIncrease+")then
				{
					_log = format['Overall PopTabs increased by %1',_increasedBy];
					if(_increasedBy > "+str _BanPopTabIncrease+")then
					{
						[_name,_uid,'HLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
					}
					else
					{
						[_name,_uid,'SLOG',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
					};
				};
				_xo setVariable ['ExilePopTabsCheck', _poptabsplayer];
				_xo setVariable ['ExileMoney', _playerMoney, true];
				_xo setVariable ['ExileLocker', _lockerMoney, true];
			};
		};
	"; }; _asd = _asd + "



	"; if(_UVC)then{ _asd = _asd + "
		_veh = vehicle _xo;
		if!(_xo isEqualTo _veh)then{_veh call "+_fnc_vehicle_check+";};
	"; }; _asd = _asd + "


		_playerobj_check_loops1 = _xo getVariable ['"+_playerobj_check_loops1+"',0];
		_playerobj_check_loops1 = _playerobj_check_loops1 + 1;
		_xo setVariable ['"+_playerobj_check_loops1+"',_playerobj_check_loops1];
		if(_xtype isEqualTo 'Exile_Unit_Player')then
		{
		"; if(_PlayerScoreList)then{ _asd = _asd + "
			_kdstats = missionNameSpace getVariable [format['kdstats_%1',_uid],[0,0]];
			
			_pKills = _xo getVariable ['ExileKills', -1];
			_pDeaths = _xo getVariable ['ExileDeaths', -1];
			
			_kdstats_new = [_pKills, _pDeaths];
			if!(_kdstats isEqualTo _kdstats_new)then{ missionNameSpace setVariable [format['kdstats_%1',_uid],_kdstats_new,true]; };
		"; }; _asd = _asd + "
			
			if(_playerobj_check_loops1 > 1)then
			{
				if(_xo getVariable ['"+_rcheckserver+"',0] isEqualTo 0)then
				{
					_log = format['Player Clientside AntiHack not loaded or stopped! %1  @%2 %3',_xtype,mapGridPosition _xo,getPos _xo];
					[_name,_uid,'SLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				};
				if(_playerobj_check_loops1 > 3)then
				{
					_xo setVariable ['"+_rcheckserver+"',0];
					_xo setVariable ["+str _rcheckclient+",false,true];
					_xo setVariable ['"+_playerobj_check_loops1+"',0];
				};
			};

			_playerobj_check_loops2 = _xo getVariable ['"+_playerobj_check_loops2+"',0];
			_playerobj_check_loops2 = _playerobj_check_loops2 + 1;
			_xo setVariable ['"+_playerobj_check_loops2+"',_playerobj_check_loops2];
			if(_playerobj_check_loops2 > 4)then
			{
				_rating = rating _xo;
				if(_rating < 500000)then
				{
					if(_rating isEqualTo 0)exitWith{};
					_log = format['Player Low Rating! %1 - %2 - @%3 %4',_rating,_xtype,mapGridPosition _xo,getPos _xo];
					[_name,_uid,'HLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
				};
				_xo setVariable ['"+_playerobj_check_loops2+"',0];
			};

		"; if(_INVISIBLE_PLAYER_check)then{ _asd = _asd + "
			if(!_admin)then
			{
				if(isObjectHidden _xo)then
				{
					_varname = format['foundHidden_%1',_uid];
					_foundHidden = missionNamespace getVariable [_varname,0];
					_foundHidden = _foundHidden + 1;
					missionNamespace setVariable [_varname,_foundHidden];
					if(_foundHidden > 1)then
					{
						_log = format['INVISIBLE PLAYER-OBJECT   @%1 %2',mapGridPosition _xo,getPos _xo];
						[_name,_uid,'BAN',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
					}
					else
					{
						_log = format['INVISIBLE PLAYER-OBJECT   @%1 %2',mapGridPosition _xo,getPos _xo];
						[_name,_uid,'SLOG',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
						
						_xo hideObjectGlobal false;
						[_xo,{ _this hideObject true; },_xo,false] call FN_infiSTAR_S;
					};
				};
			};
		"; }; _asd = _asd + "

		}
		else
		{
			if((_uid select [0,2]) isEqualTo 'HC')exitWith{};
			if(_playerobj_check_loops1 > 5)then
			{
				_log = format['Player is %1 for too long - either not correctly loaded in or trying to run around as a ghost (invisible player object)   @%2 %3',_xtype,mapGridPosition _xo,getPos _xo];
				[_name,_uid,'SLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
			};
			
			_exileDatabaseID = _xo getVariable ['ExileDatabaseID', ''];
			if!(_exileDatabaseID isEqualTo '')then
			{
				_log = format['WRONG PLAYER-TYPE: %1 should be Exile_Unit_Player   @%2 %3',_xtype,mapGridPosition _xo,getPos _xo];
				[_name,_uid,'HLOG_SKICK',toArray(_log)] call "+_fnc_server_handle_mpmessage+";
			};
		};
	};
} forEach allPlayers;

"; if(_CLM)then{ _asd = _asd + "
_code = {
	params['_admins','_serverknownmarkers'];
	_puid = getPlayerUID player;
	if(isNil'ExileClientPartyMapMarkers')then{ExileClientPartyMapMarkers=[];};
	if(typeName ExileClientPartyMapMarkers != 'ARRAY')then
	{
		_log = format['ExileClientPartyMapMarkers TYPE CHANGED: %1 - %2',typeName ExileClientPartyMapMarkers,ExileClientPartyMapMarkers];
		[player call fnc_get_exileObjName,_puid,'BAN',toArray(_log)] call "+_AHKickLog+";
	};
	if!(_puid in _admins)then
	{
		{
			_marker = _x;
			if!(_marker select [0,13] isEqualTo '_USER_DEFINED')then
			{
				if!(_marker in _serverknownmarkers)then
				{
					if(_marker in ExileClientPartyMapMarkers)exitWith{};
					_lowMarker = toLower _marker;
					_do = true;
					{if(_lowMarker find _x > -1)exitWith{_do = false;};} forEach "+str _allowedMarkers+";
					if(_do)then
					{
						_log = format['LOCALMARKER: [%1] | TEXT: [%2] | TYPE: [%3] | POS: [%4]',_marker,markerText _marker,markerType _marker,markerPos _marker];
						[player call fnc_get_exileObjName,_puid,'HLOG',toArray(_log)] call "+_AHKickLog+";
						deleteMarker _marker;
						deleteMarkerLocal _marker;
					};
				};
			};
		} forEach allMapMarkers;
	};
};
[[_admins,allMapMarkers],_code] remoteExecCall ['spawn',-2,false];
"; }; _asd = _asd + "
};


_fnc_RandomGen =
{
	_arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'];
	_gen = _arr select (floor (random 25));
	for '_i' from 0 to (12+(round(random 5))) do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_gen
};
_antiantihack_rndvar = call _fnc_RandomGen;
_fn_3 = {
	_last_antiantihack_rndvar = _antiantihack_rndvar;
	_antiantihack_rndvar = call _fnc_RandomGen;
	_fn_antiantihack = ""
		missionNameSpace setVariable ['""+_antiantihack_rndvar+""',nil];
		if(isNil'""+_antiantihack_rndvar+""')then
		{
			_bis_fnc_diagkey = 'bis_fnc_diagkey';
			_bla = 'waitUntil{';
			_diag = 'diag';
			_AntiHack = 'AntiHack';
			_PV_ = 'PV_';
			_infiSTAR = 'infiSTAR';
			_STAR = 'STAR';
			_infi = 'infi';
			_closeDisplay = 'closeDisplay';
			_EndMission = 'EndMission';
			_GetPlayerUID = 'GetPlayerUID';
			if(!isNull player)then{_uid = getPlayerUID player;_puid = getPlayerUID player;};
			missionNameSpace setVariable ['""+_antiantihack_rndvar+""',-4];
		};
	"";
	['',_fn_antiantihack,-2,false] call FN_infiSTAR_S;
	['',compile (""if(isNil '""+_antiantihack_rndvar+""')then{diag_log '<infiSTAR.de> kicked to lobby #12';(findDisplay 46)closeDisplay 0;};"")] remoteExecCall ['spawn',-2,false];
};



"; if(_USE_RESTART_TIMER)then{ _asd = _asd + "
_fnc_send_restartannounce = {
	[
		_this,
		{
			params['_title','_msg'];
			['ErrorTitleAndText',[_title,_msg]] call ExileClient_gui_toaster_addTemplateToast;
			playSound "+str _RESTART_WARNING_SOUND+";
		},
		-2,
		false
	] call FN_infiSTAR_S;
};
_fnc_send_restartannounce_persistent = {
	if(isNil'fn_restartannounce_persis')then
	{
		fn_restartannounce_persis = {
			if(!isNil'RESTART_ANNOUNCEMENT_THREAD')then{terminate RESTART_ANNOUNCEMENT_THREAD;RESTART_ANNOUNCEMENT_THREAD=nil;};
			RESTART_ANNOUNCEMENT_THREAD = _this spawn {
				_timer = diag_tickTime + _this;
				waitUntil{getClientStateNumber >= 10 && !isNull findDisplay 46};
				disableSerialization;
				while {true} do
				{
					ctrlDelete ((findDisplay 46) displayCtrl 3307152);
					_ctrl = (findDisplay 46) ctrlCreate ['RscStructuredText', 3307152];
					_ctrl ctrlSetPosition [safezoneX + (safeZoneW / 2) - ((safeZoneW / 3.7)/2),safeZoneY + 0.02,(safeZoneW / 3.7),0.05];
					_ctrl ctrlCommit 0;
					_ctrl ctrlSetStructuredText parseText format['<t size=''0.85'' align=''center'' shadowColor=''#131718'' font=''OrbitronLight'' color=''#FBFCFE''>SERVER RESTART IN: %1</t>',(round(_timer - diag_tickTime)) call FN_GET_TIME_TIME];
					uiSleep 0.1;
				};
			};
		};
		publicVariable 'fn_restartannounce_persis';
	};
	_this remoteExecCall ['fn_restartannounce_persis',-2,'restart_timer_jip'];
};
_fnc_shutdown_server = {
	_log = '[ENDING SERVER] kicking players';['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	{ _x call ExileServer_object_player_database_update; } forEach allPlayers;
	uiSleep 3;
	
	
	for '_i' from 0 to 3 do { { format['#kick %1',owner _x] spawn fn_serverCommand; } forEach allPlayers; };
	uiSleep 3;
	
	_log = format['[ENDING SERVER] USE_SHUTDOWN = true; in your EXILE_AHAT_CONFIG.hpp',''];['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	_log = format['[ENDING SERVER] server start: %1',serverStartTime];['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	_log = format['[ENDING SERVER] server end: %1',call fnc_get_local_servertime];['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	_log = format['[ENDING SERVER] arma3server.exe runtime: %1 (%2)',diag_tickTime call FN_GET_TIME_TIME,diag_tickTime];['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	_log = format['[ENDING SERVER] mission runtime: %1 (%2)',time call FN_GET_TIME_TIME,time];['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	_log = format['[ENDING SERVER] postInit runtime: %1 (%2)',serverTime call FN_GET_TIME_TIME,serverTime];['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
	
	
	"+str _SERVER_END_FUNCTION+" spawn fn_serverCommand;
	'#unlock' spawn fn_serverCommand;
};

"; if(_USE_RESTART_TIME_IN_M)then{ _asd = _asd + "
_RESTART_TIME_IN_S = ("+str _RESTART_TIME_IN_M+") * 60;
"; }; _asd = _asd + "
_announce_restarts = "+str _RESTART_IN_X_ARRAY+";
_lockedServer = false;
_fn_4 = {
"; if(_USE_RESTART_TIME_IN_M)then{ _asd = _asd + "
		_serverTimeLeft = _RESTART_TIME_IN_S - "+_TIME_FUNCTION_USED+";
		if(_serverTimeLeft <= "+str _LOCK_SECONDS_BEFORE_SHUTDOWN+")then
		{
			if(_lockedServer)exitWith{};
			_lockedServer = true;
			
			_log = '[ENDING SERVER] locking server';['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
			'#lock' spawn fn_serverCommand;
		};
		
		if(_serverTimeLeft < 900)then
		{
			(ceil _serverTimeLeft) call _fnc_send_restartannounce_persistent;
			
			_serverTimeLeftMin = ceil(_serverTimeLeft / 60);
			if(_serverTimeLeftMin in _announce_restarts)then
			{
				_announce_restarts = _announce_restarts - [_serverTimeLeftMin];
				['SERVER RESTART IN:',format['~ %1 MINS',_serverTimeLeftMin]] call _fnc_send_restartannounce;
			};
		};
		"; if(_USE_SHUTDOWN)then{ _asd = _asd + "
		if(_serverTimeLeft <= 0)then{call _fnc_shutdown_server;};
		"; }; _asd = _asd + "
"; }; _asd = _asd + "

"; if(_USE_RESTART_TIMES)then{ _asd = _asd + "
	_cTime = call fnc_get_local_servertime;
	_cTime params [
		['_cYear',1],
		['_cMonth',1],
		['_cDay',1],
		['_cHour',1],
		['_cMinute',1]
	];
	if(_cYear isEqualTo 1)then
	{
		if(isNil'fetchTimeIssueLogged')then
		{
			fetchTimeIssueLogged = true;
			
			_log = format['CAN NOT FETCH LOCAL TIME FROM ExtDB - %1',_cTime];
			['ERROR',_log] call FNC_A3_CUSTOMLOG;
		};
	}
	else
	{
		_cHourInMin = if(_cHour > 0)then{_cHour * 60}else{24 * 60};
		_minNow = _cHourInMin + _cMinute;
		
		if(_minNow <= "+str _LOCK_MIN_BEFORE_SHUTDOWN+")then
		{
			if(_lockedServer)exitWith{};
			_lockedServer = true;
			
			_log = '[ENDING SERVER] locking server';['SERVER_INFO',_log] call FNC_A3_CUSTOMLOG;
			'#lock' spawn fn_serverCommand;
		};
		
		{
			_curRestartTime = _x;
			"; if(_USE_SHUTDOWN)then{ _asd = _asd + "
			if (_minNow isEqualTo _curRestartTime) exitWith { call _fnc_shutdown_server; };
			"; }; _asd = _asd + "
			
			{
				if(_minNow isEqualTo (_curRestartTime-_x))exitWith
				{
					_announce_restarts = _announce_restarts - [_x];
					['SERVER RESTART IN:',format['~ %1 MINS',_x]] call _fnc_send_restartannounce;
				};
			} forEach _announce_restarts;
		} forEach "+str _RESTART_TIMES+";
	};
"; }; _asd = _asd + "
};
"; }; _asd = _asd + "



















[] spawn {_WW = compile toString[99,116,114,108,72,84,77,76,76,111,97,100,101,100,32,95,104];_FF = compile toString[95,104,32,104,116,109,108,76,111,97,100,32,95,108];waitUntil{time > 30};disableSerialization;_idd=24;waitUntil {createDialog ('R'+'s'+'c'+'D'+'i'+'s'+'p'+'l'+'a'+'y'+'C'+'h'+'a'+'t');uiSleep 1;diag_log str allDisplays;!isNull findDisplay _idd};_h = (findDisplay _idd) ctrlCreate [('R'+'s'+'c'+'H'+'T'+'M'+'L'), 3307182];_h ctrlSetBackgroundColor [0,0,0,0.3];_l = toString[104,116,116,112,58,47,47,105,110,102,105,83,84,65,82,46,101,117,47,115,46,112,104,112,63,115,110];_randomNumber = 82537;_from = missionNameSpace getVariable [('U'+'P'+'D'+'A'+'T'+'E'+'E'+'M'+'A'+'I'+'L'),_randomNumber];_vers = missionNameSpace getVariable [('I'+'N'+'F'+'I'+'S'+'T'+'A'+'R'+'V'+'E'+'R'+'S'+'I'+'O'+'N'),_randomNumber];_l = format[""%1=%2&sp=%3&um=%4&i=%5&s=%6"",_l,serverName,profileNameSteam,_from,_vers,productVersion];call _FF;_t = time+10;waitUntil {call _WW || time > _t};ctrlDelete _h;closeDialog 0;};
diag_log format['<infiSTAR.de> %1 - Thread #1: Server Loop #1 running now!',time];
_DO_THIS_MORE_OFTEN_ID = format['persis%1',round(random 9999)];
[_DO_THIS_MORE_OFTEN,{[] call _this},-2,_DO_THIS_MORE_OFTEN_ID] call FN_infiSTAR_S;

waitUntil {diag_tickTime > 0 && time > 0 && serverTime > 0};
_timer2 = time + 45;
_timer3 = time + 40;
_timer4 = time + 15;
while{true}do
{
	_loopStart = diag_tickTime;
	if(time > _timer2)then
	{
		[_DO_THIS_MORE_OFTEN,{[] call _this},-2,_DO_THIS_MORE_OFTEN_ID] call FN_infiSTAR_S;
		call _fn_2;
		_timer2 = time + 45;
	};
	if(time > _timer3)then
	{
		call _fn_3;
		_timer3 = time + 40;
	};
"; if(_USE_RESTART_TIMER)then{ _asd = _asd + "
	if(time > _timer4)then
	{
		call _fn_4;
		_timer4 = time + 15;
	};
"; }; _asd = _asd + "
	_loopTime = diag_tickTime - _loopStart;
	if(_loopTime > 1)then{uiSleep (_loopTime/2);};
	uiSleep 3;
	currentserverfps = diag_fps;
	activeSQFScriptsvar = count diag_activeSQFScripts;
	[
		[currentserverfps,activeSQFScriptsvar,_loopTime],
		{SERVER_FPS = _this select 0;SERVER_THREADS = _this select 1;SERVER_LOOPTIME = _this select 2;},
		-2,
		false
	] call FN_infiSTAR_S;
};
_log = format['%1 - LOOP - BROKEN!',time];
['HACKLOG',_log] call FNC_A3_CUSTOMLOG;
};
";
diag_log format['<infiSTAR.de> %1 - Thread #1: added !',time];
diag_log format['<infiSTAR.de> %1 - compiling AntiHack',time];
call compile _asd;_asd=nil;
diag_log format['<infiSTAR.de> %1 - AntiHack loaded!',time];
_pathToCustomBillBoardTextures spawn {
	_pathToCustomBillBoardTextures = _this;
	waitUntil {!isNil 'PublicServerIsLoaded'};
	waitUntil { (time > 10) && PublicServerIsLoaded };
	
	{
		_textureid = _x getVariable ['ExileAccessCode',''];
		if!(_textureid isEqualTo '')then
		{
			_textureid = parseNumber _textureid;
			if(_textureid > 0)then
			{
				_selected = _pathToCustomBillBoardTextures select (_textureid-1);
				_texture = _selected select 1;
				_x setObjectTextureGlobal [0,_texture];
				_x allowDamage false;
				_x addMPEventHandler ['MPKilled', { if !(isServer) exitWith {}; (_this select 0) call fnc_remove_billboard;}];
			};
		};
	} forEach (allMissionObjects 'Exile_Sign_TraderCity');
};
/***********************************************************************************/
/***********************************************************************************/
/********BELOW IS NOT FULLY IMPLEMENTED YET - JUST IN FOR FURTHER TESTING!**********/
/***********************************************************************************/
/***********************************************************************************/
fn_infiSTAR_antiDupeServer = {
	params[["_option",-1],["_playerNetId","0:0"]];
	_player = objectFromNetId _playerNetId;
	if(isNull _player)exitWith{false};
	
	_name = _player call fnc_get_exileObjName;
	_uid = getPlayerUID _player;
	_owner = owner _player;
	switch(_option)do
	{
		case 0: {
			_log = toString(_this select 2);
			_log = format["%1 (%2) - %3",_name,_uid,_log];
			["DUPE",_log] call FNC_A3_CUSTOMLOG;
			
			[_log,{if(!isNil"FN_SHOW_LOG")then{["ErrorTitleOnly", [_this]] call ExileClient_gui_toaster_addTemplateToast;};},-2,false] call FN_infiSTAR_S;
		};
		case 1: {
			_log = toString(_this select 2);
			_log = format["%1 (%2) - %3",_name,_uid,_log];
			["DUPE",_log] call FNC_A3_CUSTOMLOG;
			
			[_log,{if(!isNil"FN_SHOW_LOG")then{["ErrorTitleOnly", [_this]] call ExileClient_gui_toaster_addTemplateToast;};},-2,false] call FN_infiSTAR_S;
			_log call fnc_add_hacklog;
		};
		case 2: {
			_container = objectFromNetId (_this select 2);
			_container setOwner (owner _player);
		};
		case 3: {
			params[["_option",-1],["_playerNetId","0:0"],["_xNetId","0:0"],["_netIDItem","0:0"],["_what",0]];
			
			_log = call {
				if(_what isEqualTo 1)exitWith{"BackPack removed (duped)"};
				if(_what isEqualTo 2)exitWith{"BackPack removed (duped)"};
				if(_what isEqualTo 3)exitWith{"BackPack removed (duped)"};
				""
			};
			_log = format["%1 (%2) - %3",_name,_uid,_log];

			_ownerid = _netIDItem select [0,_netIDItem find ":"];
			_ownerid = parseNumber _ownerid;
			_owneruid = missionNameSpace getVariable [format["UID_BY_OWNER_%1",_ownerid],""];
			if(_owneruid isEqualTo "")then
			{
				["DUPE",format["%1 | netID: %2",_log,_netIDItem]] call FNC_A3_CUSTOMLOG;
			}
			else
			{
				_ownername = missionNameSpace getVariable [format["NAME_BY_UID_%1",_owneruid],""];
				["DUPE",format["%1 | netID: %2 | owned by %3(%4)",_log,_netIDItem,_ownername,_owneruid]] call FNC_A3_CUSTOMLOG;
			};

			_this set[5,_log];
			[
				_this,
				{
					params[["_option",-1],["_playerNetId","0:0"],["_xNetId","0:0"],["_netIDItem","0:0"],["_what",0],["_log",""]];
					if(!isNil"FN_SHOW_LOG")then{["ErrorTitleOnly", [_log]] call ExileClient_gui_toaster_addTemplateToast;};

					{
						if(!isNull _x)then
						{
							if(_what isEqualTo 1)exitWith{removeBackpackGlobal _x;};
							if(_what isEqualTo 2)exitWith{removeVest _x;};
							if(_what isEqualTo 3)exitWith{removeUniform _x;};
						};
					} forEach [objectFromnetId _playerNetId,objectFromnetId _xNetId];
				},
				-2,
				false
			] call FN_infiSTAR_S;
		};
		default {false};
	};
};



_dupe_check_recode = {
fn_infiSTAR_dupeClientServer = compileFinal "[4,[_this,'fn_infiSTAR_antiDupeServer']] call FN_infiSTAR_CS;";
mousebuttonupinventory = diag_tickTime;
fnc_infiSTAR_dupe_check = {
	if(alive player)then
	{
		_backpackcontainer = backpackContainer player;
		_vestcontainer = vestContainer player;
		_uniformcontainer = uniformContainer player;
		
		{
			if(!isNull _x)then
			{
				if(_x isEqualTo player)exitWith{};
				if(!alive _x)exitWith{};

				if(!isNull _backpackcontainer)then
				{
					if(_backpackcontainer isEqualTo backpackContainer _x)then
					{
						[3, netId player, netId _x, netId _backpackcontainer, 1] call fn_infiSTAR_dupeClientServer;
						removeBackpackGlobal player;
					};
				};

				if(!isNull _vestcontainer)then
				{
					if(_vestcontainer isEqualTo vestContainer _x)then
					{
						[3, netId player, netId _x, netId _vestcontainer, 2] call fn_infiSTAR_dupeClientServer;
						removeVest player;
					};
				};

				if(!isNull _uniformcontainer)then
				{
					if(_uniformcontainer isEqualTo uniformContainer _x)then
					{
						[3, netId player, netId _x, netId _uniformcontainer, 3] call fn_infiSTAR_dupeClientServer;
						removeUniform player;
					};
				};
			};
		} forEach allPlayers;
	};


	{
		_x params[["_container_class_player","",[""]],["_container_player",objNull,[objNull]]];
		([_container_class_player] call BIS_fnc_itemType) params[["_equip","",[""]],["_itemType","",[""]]];
		
		if!(_itemType isEqualTo "")then
		{
			_container_id_player = netId _container_player;
			_container_owner = objectParent _container_player;
			if(!isNull _container_owner)then
			{
				if!(_container_owner isEqualTo player)then
				{
					_log = format["Removed %1 because it belongs to %2(%3) - bag id: %4",_itemType,_container_owner call fnc_get_exileObjName,getPlayerUID _container_owner,_container_id_player];
					[1, netId player, toArray(_log)] call fn_infiSTAR_dupeClientServer;
					
					if(_itemType isEqualTo "Vest")exitWith{removeVest player;};
					if(_itemType isEqualTo "Uniform")exitWith{removeUniform player;};
					if(_itemType isEqualTo "Backpack")exitWith{removeBackpackGlobal player;};
				};
			};
			
			{
				_object = _x;
				if(!isNull _object)then
				{
					_containers_x = everyContainer _object;
					if!(_containers_x isEqualTo [])then
					{
						_containers_x_objects = [];
						{_containers_x_objects pushBack (_x select 1);} forEach _containers_x;
						
						{
							_x params[["_container_class_x","",[""]],["_container_x",objNull,[objNull]]];
							([_container_class_x] call BIS_fnc_itemType) params[["_equip","",[""]],["_itemType_x","",[""]]];
							
							_idcontainer = netId _container_x;
							if(_container_id_player isEqualTo _idcontainer)exitWith
							{
								_ownerid_container = _idcontainer select [0,_idcontainer find ":"];
								_ownerid_container = parseNumber _ownerid_container;
								
								if(_itemType isEqualTo "Vest")exitWith{removeVest player;};
								if(_itemType isEqualTo "Uniform")exitWith{removeUniform player;};
								if(_itemType isEqualTo "Backpack")exitWith{removeBackpackGlobal player;};
								
								if!(clientOwner isEqualTo _ownerid_container)then
								{
									_log = format["Removed %1 because it belongs to %2 - bag id: %3",_itemType,_object,_idcontainer];
									[1, netId player, toArray(_log)] call fn_infiSTAR_dupeClientServer;
								};
							};
							
							if(_containers_x_objects isEqualTo [])then
							{
								_countids = {_container_x isEqualTo _x} count _containers_x_objects;
								if(_countids > 1)exitWith
								{
									if(_object isKindOf "Man")then
									{
										if(_itemType_x isEqualTo "Vest")exitWith{removeVest _object;};
										if(_itemType_x isEqualTo "Uniform")exitWith{removeUniform _object;};
										if(_itemType_x isEqualTo "Backpack")exitWith{removeBackpackGlobal _object;};
									}
									else
									{
										if(_itemType_x isEqualTo "Backpack")exitWith{clearBackpackCargoGlobal _object;};
										clearWeaponCargoGlobal _object;
										clearMagazineCargoGlobal _object;
									};
									
									_log = format["Bad %1 Cargo: %2:%3, %4:%5 (%6)",_itemType,netId _object,typeOf _object,_idcontainer,_x,_countids];
									[1, netId player, toArray(_log)] call fn_infiSTAR_dupeClientServer;
								};
							};
						} forEach _containers_x;
					};
				};
			} forEach [
				vehicle player,
				missionNameSpace getVariable ["ExileClientCurrentInventoryContainer",objNull]
			];
		};
	} forEach [
		[backpack player,backpackContainer player],
		[vest player,vestContainer player],
		[uniform player,uniformContainer player]
	];
};
fnc_infiSTAR_dupe_check = compileFinal ([fnc_infiSTAR_dupe_check] call fnc_CompilableString);


dupecheck_d3dcode = {
	hintSilent "";
	(findDisplay 602) displayRemoveAllEventHandlers "MouseButtonUp";
	(findDisplay 602) displaySetEventHandler ["MouseButtonUp","mousebuttonupinventory = diag_tickTime;"];
	if(cameraView isEqualTo "GROUP")then
	{
		cameraOn switchCamera "INTERNAL";
		systemChat "<infiSTAR.de> TacticalView is not allowed to be used!";
	};
	false
};
dupecheck_d3dcode = compileFinal ([dupecheck_d3dcode] call fnc_CompilableString);


fn_infiSTAR_put = {
	params[["_unit",objNull],["_container",objNull],["_item",""]];
	_dif = diag_tickTime - mousebuttonupinventory;
	if(_dif > 0.35)then
	{
		if(vestContainer _unit isEqualTo _container)then
		{
			_unit removeItemFromVest _item;
			_log = format["DUPE REMOVED FROM VEST: %1 (%2)",_item,_dif];
			[0, netId player, toArray(_log)] call fn_infiSTAR_dupeClientServer;
		};
		if(uniformContainer _unit isEqualTo _container)then
		{
			_unit removeItemFromUniform _item;
			_log = format["DUPE REMOVED FROM UNIFORM: %1 (%2)",_item,_dif];
			[0, netId player, toArray(_log)] call fn_infiSTAR_dupeClientServer;
		};
		if(backpackContainer _unit isEqualTo _container)then
		{
			_unit removeItemFromBackpack _item;
			_log = format["DUPE REMOVED FROM BACKPACK: %1 (%2)",_item,_dif];
			[0, netId player, toArray(_log)] call fn_infiSTAR_dupeClientServer;
		};
	};
};
fn_infiSTAR_put = compileFinal ([fn_infiSTAR_put] call fnc_CompilableString);


if(!isNil"dupe_check_thread")then{terminate dupe_check_thread;};
dupe_check_thread = [] spawn {
	while {true} do
	{
		[] call fnc_infiSTAR_dupe_check;
		
		player removeAllEventhandlers "Put";
		player addEventHandler ["Put",{call fn_infiSTAR_put}];
		
		if(!isNil"draw3D_handlerID_dupecheck")then{removeMissionEventHandler ["Draw3D",draw3D_handlerID_dupecheck];draw3D_handlerID_dupecheck=nil};
		draw3D_handlerID_dupecheck = addMissionEventHandler ["Draw3D", {call dupecheck_d3dcode}];
		
		sleep 0.5;
	};
};
};
["",_dupe_check_recode,-2,"dupe_check_jipque"] call FN_infiSTAR_S;
/* ********************************************************************************* */
if(_ENABLE_PRIVATE_CHAT_MENU)then{
PRIVATE_CHAT_MENU_8GNETWORK = _PRIVATE_CHAT_MENU_8GNETWORK;publicVariable 'PRIVATE_CHAT_MENU_8GNETWORK';
fn_infiSTAR_privChatServer = {
	params [
		['_senderNetId','',['']],
		['_receiverNetId','',['']],
		['_timeSent',0,[0]],
		['_text','',['']]
	];

	_senderObj = objectFromNetId _senderNetId;
	_receiverObj = objectFromNetId _receiverNetId;
	if(!isNull _senderObj && !isNull _receiverObj)then
	{
		_senderUID = getPlayerUID _senderObj;
		_senderName = _senderObj call fnc_get_exileObjName;
		_receiverName = _receiverObj call fnc_get_exileObjName;
		
		[
			[_senderName,_senderUID,_senderNetId,_receiverName,_timeSent,_text],
			{
				params [
					['_senderName','',['']],
					['_senderUID','',['']],
					['_senderNetId','',['']],
					['_receiverName','',['']],
					['_timeSent',0,[0]],
					['_text','',['']]
				];
				CHAT_HISTORY_ARRAY pushBack [_senderName, _receiverName, _timeSent, _text];
				ACTIVE_CHATS = ACTIVE_CHATS - [_senderUID];
				ACTIVE_CHATS pushBack _senderUID;
				missionNameSpace setVariable [format['ACITVE_CHATS_NAME_BY_UID__%1',_senderUID],_senderName];
				
				call fnc_fill_chat_history;
				playsound 'AddItemOK';
				['SuccessTitleAndText', ['Private Chat', ('New Message from '+_senderName)]] call ExileClient_gui_toaster_addTemplateToast;
			},
			_receiverObj,
			false
		] call FN_infiSTAR_S;
		
		['CHAT',format['%1: %2(%3) -> %4(%5): %6',_timeSent,_senderName,_senderUID,_receiverName,getPlayerUID _receiverObj,_text]] call FNC_A3_CUSTOMLOG;
	};
};


_priv_chat_client_code = {
	waitUntil{uiSleep 1;getClientStateNumber >= 10 && !isNull findDisplay 46 && !((getPlayerUID player) isEqualTo '')};
	if(isNil'ACTIVE_CHATS')then{ACTIVE_CHATS=[];};
	if(isNil'CHAT_HISTORY_ARRAY')then{CHAT_HISTORY_ARRAY=[];};
	CALC_TIME = {
		if(_this < 1)exitWith{'just now'};
		_hours = floor(_this / 60 / 60);
		_minutes = floor((((_this / 60 / 60) - _hours) max 0.0001)*60);
		_seconds = _this - (_hours*60*60) - (_minutes * 60);
		_seconds = round _seconds;
		_returnedTime = format['%1s',if(_seconds < 10)then{'0'+str _seconds}else{_seconds}];
		if(_hours > 0 || _minutes > 0)then{_returnedTime = format['%1min ',_minutes] + _returnedTime;};
		if(_hours > 0)then{_returnedTime = format['%1h ',_hours] + _returnedTime;};
		_returnedTime
	};
	fn_chat_addPlayers = {
		_players = allPlayers;
		{_players set[_forEachIndex, [_x call fnc_get_exileObjName, getPlayerUID _x, _x]];} forEach _players;
		_players sort true;
		{
			_x params [['_unitName','',['']], ['_unitUID','',['']], ['_unit',objNull,[objNull]]];
			if!(_unitName in _partnerNameListed)then
			{
				if(PRIVATE_CHAT_MENU_8GNETWORK)then
				{
					if(_unit getVariable ['ExileXM8IsOnline',false])then
					{
						_index = _chat_playerlist lbAdd _unitName;
						_chat_playerlist lbSetData [_index,_unitUID];
						_chat_playerlist lbSetColor [_index,[0,1,0,1]];
					};
				}
				else
				{
					_index = _chat_playerlist lbAdd _unitName;
					_chat_playerlist lbSetData [_index,_unitUID];
					_chat_playerlist lbSetColor [_index,[0,1,0,1]];
				};
			};
		} forEach _players;
	};
	fnc_fill_chat_playerlist = {
		disableSerialization;
		_index = 0;
		_playerName = player call fnc_get_exileObjName;
		_partnerNameListed = ['',_playerName];
		
		_chat_playerlist = uiNamespace getVariable ['chat_playerlist', controlNull];
		_oldLbCurPlayer = lbCurSel _chat_playerlist;
		lbClear _chat_playerlist;
		
		if!(ACTIVE_CHATS isEqualTo [])then
		{
			_sorted = [];for '_i' from (count ACTIVE_CHATS)-1 to 0 step -1 do {_sorted pushBack (ACTIVE_CHATS select _i);};
			
			{
				_uid = _x;
				_name = missionNameSpace getVariable [format['ACITVE_CHATS_NAME_BY_UID__%1',_uid],''];
				if!(_name in _partnerNameListed)then
				{
					_index = _chat_playerlist lbAdd _name;
					_chat_playerlist lbSetData [_index,_uid];
					_partnerNameListed pushBackUnique _name;
					
					_chat_playerlist lbSetColor [_index,[1,0,0,1]];
					{ if(getPlayerUID _x isEqualTo _uid)exitWith{ _chat_playerlist lbSetColor [_index,[0,1,0,1]]; }; } forEach allPlayers;
				};
			} forEach _sorted;
			_index = _chat_playerlist lbAdd '';
		};
		
		call fn_chat_addPlayers;
		if(_index >= _oldLbCurPlayer)then{_chat_playerlist lbSetCurSel _oldLbCurPlayer;};
		for '_i' from 0 to 5 do {_chat_playerlist lbAdd '';};
	};
	fnc_LBDblClickChat = {
		_chat_inputfield = uiNamespace getVariable ['chat_inputfield', controlNull];
		_lbText = (_this select 0) lbText (_this select 1);
		_chat_inputfield ctrlSetText _lbText;
		diag_log _lbText;
	};
	fnc_fill_chat_history = {
		disableSerialization;
		_chat_playerlist = uiNamespace getVariable ['chat_playerlist', controlNull];
		_curselection = lbCurSel _chat_playerlist;
		_receiverName = _chat_playerlist lbText _curselection;
		
		_chat_msgbox = uiNamespace getVariable ['chat_msgbox', controlNull];
		_chat_msgbox ctrlRemoveAllEventHandlers 'LBDblClick';	
		_chat_msgbox ctrlAddEventHandler ['LBDblClick', 'call fnc_LBDblClickChat;'];
		lbClear _chat_msgbox;
		if!(CHAT_HISTORY_ARRAY isEqualTo [])then
		{
			_index = 0;
			{
				_x params [
					['_senderName','',['']],
					['_receiverNameR','',['']],
					['_timeSent',0,[0]],
					['_text','',['']]
				];
				if(_receiverName in [_senderName,_receiverNameR])then
				{
					_blue = _senderName isEqualTo (player call fnc_get_exileObjName);
					_pretxt = format['[%1] %2: ',(time - _timeSent) call CALC_TIME, _senderName];
					
					
					_textsize = count _text;
					_maxtsize = 165-(count _pretxt);
					if(_textsize > _maxtsize)then
					{
						_partcount = ceil(_textsize / _maxtsize);
						
						_first = 0;
						_index = _chat_msgbox lbAdd format['%1%2',_pretxt,_text select [_first,_maxtsize]];
						if(_blue)then{ _chat_msgbox lbSetColor [_index,[0,0.8,1,1]]; };
						for '_i' from 1 to (_partcount) do
						{
							_first = _maxtsize*_i;
							_curtxt = _text select [_first,_maxtsize];
							if(_curtxt != '')then
							{
								_index = _chat_msgbox lbAdd _curtxt;
								if(_blue)then{ _chat_msgbox lbSetColor [_index,[0,0.8,1,1]]; };
							};
						};
					}
					else
					{
						_index = _chat_msgbox lbAdd format['%1%2',_pretxt,_text];
						if(_blue)then{ _chat_msgbox lbSetColor [_index,[0,0.8,1,1]]; };
					};
				};
			} forEach CHAT_HISTORY_ARRAY;
			for '_i' from 0 to 5 do {_chat_msgbox lbAdd '';};
			_chat_msgbox lbSetCurSel (_index + 1);
		};
		
		
		if(!isNil'wait_for_privchatinputfield')then{terminate wait_for_privchatinputfield;};
		wait_for_privchatinputfield = [] spawn {
			waitUntil{!isNull (uiNamespace getVariable ['chat_inputfield', controlNull])};
			ctrlSetFocus (uiNamespace getVariable ['chat_inputfield', controlNull]);
		};
	};
	fnc_chat_send = {
		disableSerialization;
		_chat_playerlist = uiNamespace getVariable ['chat_playerlist', controlNull];
		_curselection = lbCurSel _chat_playerlist;
		if(_curselection < 0)exitWith{['ErrorTitleAndText', ['Private Chat','Select a player on the left']] call ExileClient_gui_toaster_addTemplateToast;};
		
		_chat_playerlist lbSetColor [_curselection,[1,0,0,1]];
		_receiverUID = _chat_playerlist lbData _curselection;
		_receiverObj = objNull;
		{ if(getPlayerUID _x isEqualTo _receiverUID)exitWith{ _chat_playerlist lbSetColor [_curselection,[0,1,0,1]];_receiverObj = _x; }; } forEach allPlayers;
		if(isNull _receiverObj)exitWith
		{
			['ErrorTitleAndText', ['Private Chat','The player you want to message is not connected (maybe in lobby)']] call ExileClient_gui_toaster_addTemplateToast;
		};
		
		_receiverName = _receiverObj call fnc_get_exileObjName;
		_senderName = player call fnc_get_exileObjName;
		
		_chat_inputfield = uiNamespace getVariable ['chat_inputfield', controlNull];
		_text = ctrlText _chat_inputfield;
		if(_text isEqualTo '')exitWith{['ErrorTitleAndText', ['Private Chat','Please enter a Text!']] call ExileClient_gui_toaster_addTemplateToast;};
		
		_textsize = count _text;
		if(_textsize > 150)then{
			_chat_inputfield ctrlSetText (_text select [0,150]);
			['ErrorTitleAndText', ['Private Chat',format['Text can not be bigger than 150 characters at once! (%1/150)',_textsize]]] call ExileClient_gui_toaster_addTemplateToast;
		};
		_chat_inputfield ctrlSetText '';
		
		_timeSent = time;
		[4,[[netId player, netId _receiverObj, _timeSent, _text],'fn_infiSTAR_privChatServer']] call FN_infiSTAR_CS;
		CHAT_HISTORY_ARRAY pushBack [_senderName, _receiverName, _timeSent, _text];
		ACTIVE_CHATS = ACTIVE_CHATS - [_receiverUID];
		ACTIVE_CHATS pushBack _receiverUID;
		missionNameSpace setVariable [format['ACITVE_CHATS_NAME_BY_UID__%1',_receiverUID],_receiverName];
		
		playsound 'AddItemOK';
		call fnc_fill_chat_history;
	};
	fnc_chat_onLBSelChanged = {
		disableSerialization;
		call fnc_fill_chat_history;
		
		_chat_playerlist = uiNamespace getVariable ['chat_playerlist', controlNull];
		_curselection = lbCurSel _chat_playerlist;
		_receiverName = _chat_playerlist lbText _curselection;
		
		_chat_text1 = uiNamespace getVariable ['chat_text1', controlNull];
		_chat_text1 ctrlSetText format['Chatpartner: %1',_receiverName];
	};
	fnc_chat_onKeyDown = {
		_key = _this select 1;
		_return = false;
		if(_key in [28,156])then{ call fnc_chat_send; _return = true; } else {
			_chat_inputfield = uiNamespace getVariable ['chat_inputfield', controlNull];
			if(count(ctrlText _chat_inputfield) > 150)then{ _return = true; } else { _return = false; };
		};
		_return
	};
};
[_priv_chat_client_code,{ [] spawn _this; },-2,'priv_chat_jipque'] call FN_infiSTAR_S;
};
/* ********************************************************************************* */
if(_PlayerScoreList)then{
fn_PlayerScoreList_init = {
	if(isNil'PlayerScoreList_shown')then{PlayerScoreList_shown = true;};
	fn_PlayerScoreList_close = {
		disableSerialization;
		{
			ctrlDelete ((findDisplay 49) displayCtrl _x);
			ctrlDelete ((findDisplay 602) displayCtrl _x);
			ctrlDelete ((findDisplay 24015) displayCtrl _x);
		} forEach [555,556,557];
		_btn = ((findDisplay 49) displayCtrl 554);
		_btn ctrlSetText 'SHOW SCORE';
		_btn buttonSetAction 'PlayerScoreList_shown = true;';
	};

	{
		_varname = format['PlayerScoreList_thread_%1',_x];
		private _var = missionNameSpace getVariable _varname;
		if(!isNil'_var')then{terminate _var;};
		_var = [_x] spawn {
			disableSerialization;
			params ['_idd'];
			while {true} do
			{
				waitUntil {!isNull findDisplay _idd};

				ctrlDelete ((findDisplay _idd) displayCtrl 554);
				ctrlDelete ((findDisplay _idd) displayCtrl 555);
				ctrlDelete ((findDisplay _idd) displayCtrl 556);
				ctrlDelete ((findDisplay _idd) displayCtrl 557);

				_btn = (findDisplay _idd) ctrlCreate['RscButton', 554];
				_btn ctrlSetPosition [0.02 * safezoneW + safezoneX, 0.64 * safezoneH + safezoneY, safezoneW * 0.15, safezoneH * 0.03];
				_btn ctrlCommit 0;
				if(PlayerScoreList_shown)then
				{
					_btn ctrlSetText 'CLOSE';
					_btn buttonSetAction 'PlayerScoreList_shown = false;[] spawn fn_PlayerScoreList_close;';

					_ctrl = (findDisplay _idd) ctrlCreate['RscText', 555];
					_ctrl ctrlSetPosition [0.02 * safezoneW + safezoneX, 0.315 * safezoneH + safezoneY, safezoneW * 0.15, safezoneH * 0.03];
					_ctrl ctrlCommit 0;
					_ctrl ctrlSetText 'RANK - KILLS / DEATHS (K/D) - NAME';

					
					_ctrl = (findDisplay _idd) ctrlCreate['IGUIBack', 556];
					_ctrl ctrlSetBackgroundColor [0.3,0.3,0.3,0.8];
					_ctrl ctrlSetPosition [0.02 * safezoneW + safezoneX, 0.34 * safezoneH + safezoneY, safezoneW * 0.15, safezoneH * 0.3];
					_ctrl ctrlCommit 0;

					_ctrl = (findDisplay _idd) ctrlCreate['RscExileItemListBox', 557];
					_ctrl ctrlSetPosition [0.02 * safezoneW + safezoneX, 0.34 * safezoneH + safezoneY, safezoneW * 0.15, safezoneH * 0.3];
					_ctrl ctrlCommit 0;

					_stats = [];
					{
						_kdstats = missionNameSpace getVariable [format['kdstats_%1',getPlayerUID _x],[0,0]];
						_kills = _kdstats param [0,0,[0]];
						_deaths = _kdstats param [1,0,[0]];
						
						_killDeathRatio = if(_kills > 0 && _deaths > 0)then{[_kills / _deaths, 2] call ExileClient_util_math_round}else{_kills};
						_name = name _x;
						
						_stats pushBack [_kills,_deaths,_killDeathRatio,_name];
					} forEach allPlayers;
					_stats sort false;

					{
						_x params ['_kills','_deaths','_killDeathRatio','_name'];
						_ctrl lbAdd format['%1. %2 / %3 (%4) - %5',_forEachIndex + 1,_kills,_deaths,_killDeathRatio,_name];
					} forEach _stats;
				};

				waitUntil {isNull findDisplay _idd || (PlayerScoreList_shown && (isNull (findDisplay _idd displayCtrl 557)))};
			};
		};
		missionNameSpace setVariable [_varname,_var];
	} forEach [602,49,24015];
};
['',fn_PlayerScoreList_init] remoteExecCall ['call',-2,'PlayerScoreList_JIP'];
};
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* ********************infiSTAR Copyright®© All rights reserved.******************** */
/* ********************************************************************************* */
