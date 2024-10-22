/**
 * ExileServer_object_player_network_createPlayerRequest
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
/* 
private["_sessionID","_parameters","_requestingPlayer","_spawnLocationMarkerName","_playerUID","_accountData","_bambiPlayer","_cargoType"];
_sessionID = _this select 0;
_parameters = _this select 1;
_requestingPlayer = _sessionID call ExileServer_system_session_getPlayerObject;
try
{
	if (isNull _requestingPlayer) then 
	{
		throw format ["Session %1 requested a bambi character, but doesn't have a player object. Hacker or Monday?", _sessionID];
	};
	_spawnLocationMarkerName = _parameters select 0;
	_playerUID = getPlayerUID _requestingPlayer;
	if(_playerUID isEqualTo "")then
	{
		throw format ["Player: '%1' has no player UID. Arma/Steam sucks!.",name _requestingPlayer];
	};
	_accountData = format["getAccountStats:%1", _playerUID] call ExileServer_system_database_query_selectSingle;
	_bambiPlayer = (createGroup independent) createUnit ["Exile_Unit_Player", [0,0,0], [], 0, "CAN_COLLIDE"];
	removeHeadgear _bambiPlayer;
	{
		_cargoType = _x call ExileClient_util_cargo_getType;
		switch (_cargoType) do
		{
			case 1: 	{ _bambiPlayer addItem _x; };
			case 2: 	{ _bambiPlayer addWeaponGlobal _x; };
			case 3: 	{ _bambiPlayer addBackpackGlobal _x; };
			case 4:		{ _bambiPlayer linkItem _x; };
			default 					{ _bambiPlayer addItem _x; };
		};
	}
	forEach getArray(configFile >> "CfgSettings" >> "BambiSettings" >> "loadOut");
	[_sessionID, _requestingPlayer, _spawnLocationMarkerName, _bambiPlayer, _accountData] call ExileServer_object_player_createBambi;
}
catch
{
	_exception call ExileServer_util_log;
};
*/
private["_sessionID","_parameters","_requestingPlayer","_spawnLocationMarkerName","_playerUID","_accountData","_bambiPlayer","_cargoType"];
_sessionID = _this select 0;
_parameters = _this select 1;
_requestingPlayer = _sessionID call ExileServer_system_session_getPlayerObject;
try
{
	if (isNull _requestingPlayer) then 
	{
		throw format ["Session %1 requested a bambi character, but doesn't have a player object. Hacker or Monday?", _sessionID];
	};
	_spawnLocationMarkerName = _parameters select 0;
	_playerUID = getPlayerUID _requestingPlayer;
	if(_playerUID isEqualTo "")then
	{
		throw format ["Player: '%1' has no player UID. Arma/Steam sucks!.",name _requestingPlayer];
	};
	_accountData = format["getAccountStats:%1", _playerUID] call ExileServer_system_database_query_selectSingle;
	_bambiPlayer = (createGroup independent) createUnit ["Exile_Unit_Player", [0,0,0], [], 0, "CAN_COLLIDE"];
	
// Custom Loadout Starts Here. Uncomment the lines you want your players to have..
	removeAllAssignedItems _bambiPlayer;
	removeGoggles _bambiPlayer;
	removeHeadgear _bambiPlayer;
	removeUniform _bambiPlayer;
	_bambiPlayer forceAddUniform "TRYK_shirts_DENIM_od";
	_bambiPlayer addVest "TRYK_V_IOTV_BLK";
	_bambiPlayer addHeadgear "H_Cap_tan";
	_bambiPlayer linkItem "ItemMap";
	_bambiPlayer linkItem "ItemCompass";
	_bambiPlayer linkItem "Exile_Item_XM8";
	_bambiPlayer linkItem "ItemRadio";
	_bambiPlayer linkItem "ItemGPS";
	_bambiPlayer addItem "Exile_Item_PlasticBottleFreshWater";
	_bambiPlayer addItem "Exile_Item_BeefParts";
	_bambiPlayer addItem "Exile_Item_Bandage";
	_bambiPlayer addItemToVest "rhs_mag_9x18_8_57N181S";
	_bambiPlayer addItemToVest "Chemlight_blue";
	_bambiPlayer addItemToVest "Chemlight_blue";
	_bambiPlayer addItemToVest "Exile_Item_DuctTape";
	_bambiPlayer addItemToVest "rhs_mag_9x18_8_57N181S";
	_bambiPlayer addBackpack "rhs_sidor";
	_bambiPlayer addWeapon "rhs_weap_makarov_pm";
	_bambiPlayer addWeapon "Binocular";
// Custom Loadout Ends Here. Uncomment the lines you want your players to have..
	[_sessionID, _requestingPlayer, _spawnLocationMarkerName, _bambiPlayer, _accountData] call ExileServer_object_player_createBambi;
	
}
catch
{
	_exception call ExileServer_util_log;
};