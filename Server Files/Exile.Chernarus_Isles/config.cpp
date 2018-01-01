/**
* config
*
* Exile Mod
* www.exilemod.com
* © 2015 Exile Mod Team
* This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
*/
class CfgHints
{
 #include "MarXet\CfgMarXetHints.hpp"
 #include "ExAdClient\CfgHints.cpp"
};
class CfgNetworkMessages
{
 #include "MarXet\CfgMarXetNetworkMessages.hpp"
 #include "ExAdClient\CfgNetworkMessages.cpp"
};
class CfgClans
{
registrationFee = 40000;
clanNameAlphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ._-!:\\/";
maximumIcons = 50;
maximumIconText = 50;
maximumPolys = 10;
maximumPolyNode = 10;
};
class Exile_AbstractCraftingRecipe
{
name = "";
pictureItem = ""; 
returnedItems[] = {};
components[] = {};
tools[] = {};
requiredInteractionModelGroup = "";
requiresOcean = 0;
requiresFire = 0;
requiresConcreteMixer = 0;
};
#include "recipes.hpp"
class CfgExileArsenal
{
#include "EBM\prices.hpp"
#include "TRADERS\ARMA3V\ItemListARMA3V.hpp"
#include "TRADERS\NIA\ItemListNIA.hpp"
#include "TRADERS\RHSV\ItemListRHSV.hpp"
#include "TRADERS\RHSW\ItemListRHSW.hpp"
#include "TRADERS\TRYK\ItemListTRYK.hpp"
#include "TRADERS\SMA\ItemListSMAW.hpp"
#include "TRADERS\Exile\ItemListExile.hpp"
#include "TRADERS\BM\ItemListBM.hpp"
#include "TRADERS\CAU\ItemListCAU.hpp"
#include "TRADERS\FISH\ItemListFISH.hpp"
#include "TRADERS\HUNT\ItemListHUNT.hpp"
};
class CfgExileAnimals
{
enabled = 1;
disableVanillaAnimals = 0;
animalTypes[] = 
{
	"Exile_Animal_Rooster_Abstract",
	"Exile_Animal_Hen_Abstract",
	"Exile_Animal_Goat_Abstract",
	"Exile_Animal_Sheep_Abstract"
};
spawnDistance = 150;
spawnRadius = 50;
minimumSpawnDelay = 5 * 60;
maximumSpawnDelay = 10 * 60;
keepAliveRadius = 500;
minimumLifetime = 5 * 60;
};
class CfgExileCustomCode 
{
ExileClient_object_player_death_startBleedingOut = "CSG\EnigmaRevive\ExileClient_object_player_death_startBleedingOut.sqf";
ExileClient_object_player_event_onInventoryOpened = "CSG\EnigmaRevive\ExileClient_object_player_event_onInventoryOpened.sqf";
ExileClient_gui_inventory_event_onSlotDoubleClick = "CSG\EnigmaPersonalVehicle\ExileClient_gui_inventory_event_onSlotDoubleClick.sqf";
ExileClient_object_construction_move = "eXpochVectorBldg\ExileClient_object_construction_move.sqf";
ExileClient_gui_hud_event_onKeyDown = "eXpochVectorBldg\ExileClient_gui_hud_event_onKeyDown.sqf";
ExileClient_gui_hud_event_onKeyUp = "eXpochVectorBldg\ExileClient_gui_hud_event_onKeyUp.sqf";
ExileClient_construction_beginExistingObject = "eXpochVectorBldg\ExileClient_construction_beginExistingObject.sqf";
ExileClient_construction_beginNewObject = "eXpochVectorBldg\ExileClient_construction_beginNewObject.sqf";
ExileClient_construction_thread = "eXpochVectorBldg\ExileClient_construction_thread.sqf";
ExileClient_gui_constructionMode_update = "eXpochVectorBldg\ExileClient_gui_constructionMode_update.sqf";
ExileClient_util_world_canBuildHere = "eXpochVectorBldg\ExileClient_util_world_canBuildHere.sqf";
ExileClient_util_playerEquipment_add = "CSG\ExileClient_util_playerEquipment_add.sqf";
ExileClient_gui_selectSpawnLocation_show = "CSG\ExileClient_gui_selectSpawnLocation_show.sqf";				
ExileClient_util_gear_getCompatibleWeaponItems = "CSG\ExileClient_util_gear_getCompatibleWeaponItems.sqf";
ExileClient_util_item_getCompatibleWeaponItems = "CSG\ExileClient_util_item_getCompatibleWeaponItems.sqf";
exileclient_system_lootmanager_thread_spawn = "CSG\exileclient_system_lootmanager_thread_spawn.sqf";
};
class CfgExileEnvironment
{
class Chernarus_Isles 
{
	class FireFlies
	{
		enable = 1;
		startHour = 18;
		endHour = 4;
	};
	class Anomalies
	{
		enable = 0;
		startHour = 19;
		endHour = 6;
	};
	class Breathing
	{
		enable = 0;
	};
	class Snow
	{
		enable = 0;
		surfaces[] = {};
	};
	class Radiation 
	{
		enable = 1;
		contaminatedZones[] = 
		{
			{{12612.196,1.0371094,1582.7347},1200,1100};
		};
	};
	class Temperature
	{
		daytimeTemperature[] = {10.93,11.89,13.42,15.40,17.68,20.10,22.48,24.63,26.40,27.66,28.32,28.80,28.80,28.32,27.66,26.40,24.63,22.48,20.10,17.68,15.40,13.42,11.89,10.93,10.93};		
		overcast = -2;
		rain = -5;
		wind = -1;
		altitude = -0.2;
		water = -5;
	};
};
};
class CfgExileHUD
{
class ShortItemNames
{
	SmokeShell[] 						= {"WHITE", "SMOKE"};
	1Rnd_Smoke_Grenade_shell[] 			= {"WHITE", "SMOKE"};
	3Rnd_Smoke_Grenade_shell[] 			= {"WHITE", "SMOKE"};
	SmokeShellBlue[] 					= {"BLUE", "SMOKE"};
	1Rnd_SmokeBlue_Grenade_shell[] 		= {"BLUE", "SMOKE"};
	3Rnd_SmokeBlue_Grenade_shell[] 		= {"BLUE", "SMOKE"};
	SmokeShellGreen[] 					= {"GREEN", "SMOKE"};
	1Rnd_SmokeGreen_Grenade_shell[] 	= {"GREEN", "SMOKE"};
	3Rnd_SmokeGreen_Grenade_shell[] 	= {"GREEN", "SMOKE"};
	SmokeShellOrange[] 					= {"ORANGE", "SMOKE"};
	1Rnd_SmokeOrange_Grenade_shell[]	= {"ORANGE", "SMOKE"};
	3Rnd_SmokeOrange_Grenade_shell[] 	= {"ORANGE", "SMOKE"};
	SmokeShellPurple[] 					= {"PURPLE", "SMOKE"};
	1Rnd_SmokePurple_Grenade_shell[] 	= {"PURPLE", "SMOKE"};
	3Rnd_SmokePurple_Grenade_shell[] 	= {"PURPLE", "SMOKE"};
	SmokeShellRed[] 					= {"RED", "SMOKE"};
	1Rnd_SmokeRed_Grenade_shell[] 		= {"RED", "SMOKE"};
	3Rnd_SmokeRed_Grenade_shell[] 		= {"RED", "SMOKE"};			
	SmokeShellYellow[] 					= {"YELLOW", "SMOKE"};
	1Rnd_SmokeYellow_Grenade_shell[] 	= {"YELLOW", "SMOKE"};
	3Rnd_SmokeYellow_Grenade_shell[] 	= {"YELLOW", "SMOKE"};			
	UGL_FlareCIR_F[] 					= {"IR", "FLARE"};
	3Rnd_UGL_FlareCIR_F[] 				= {"IR", "FLARE"};
	UGL_FlareGreen_F[] 					= {"GREEN", "FLARE"};
	3Rnd_UGL_FlareGreen_F[] 			= {"GREEN", "FLARE"};
	UGL_FlareRed_F[] 					= {"RED", "FLARE"};
	3Rnd_UGL_FlareRed_F[] 				= {"RED", "FLARE"};
	UGL_FlareWhite_F[] 					= {"WHITE", "FLARE"};
	3Rnd_UGL_FlareWhite_F[] 			= {"WHITE", "FLARE"};
	UGL_FlareYellow_F[] 				= {"YELLOW", "FLARE"};
	3Rnd_UGL_FlareYellow_F[] 			= {"YELLOW", "FLARE"};
	Chemlight_blue[] 					= {"BLUE", "LIGHT"};
	Chemlight_green[] 					= {"GREEN", "LIGHT"};
	Chemlight_red[] 					= {"RED", "LIGHT"};
	Chemlight_yellow[] 					= {"YELLOW", "LIGHT"};
	1Rnd_HE_Grenade_shell[] 			= {"40MM"};
	3Rnd_HE_Grenade_shell[] 			= {"40MM"};
	O_IR_Grenade[] 						= {"IR"};
	I_IR_Grenade[] 						= {"IR"};
	B_IR_Grenade[] 						= {"IR"};
	HandGrenade[] 						= {"RGO"};
	MiniGrenade[] 						= {"RGN"};
	Exile_Item_ZipTie[]					= {"ZIP", "TIE"};
	rhs_mag_f1[] = {"F1"};
	rhs_mag_fakel[] = {"FLASHBANG"};
	rhs_mag_fakels[] = {"FLASHBANG"};
	rhs_mag_m18_green[] = {"GREEN","SMOKE"};
	rhs_mag_m18_purple[] = {"PURPLE","SMOKE"};
	rhs_mag_m18_red[] = {"RED","SMOKE"};
	rhs_mag_m18_yellow[] = {"YELLOW","SMOKE"};
	rhs_mag_m67[] = {"RGO"};
	rhs_mag_m7a3_cs[] = {"CS GAS"};
	rhs_mag_mk84[] = {"FLASHBANG"};
	rhs_mag_mk3a2[] = {"CONCUSSON"};
	rhs_mag_nspd[] = {"WHITE","SMOKE"};
	rhs_mag_nspn_green[] = {"GREEN","SMOKE"};
	rhs_mag_nspn_red[] = {"RED","SMOKE"};
	rhs_mag_nspn_yellow[] = {"YELLOW","SMOKE"};
	rhs_mag_plamyam[] = {"PLAMYAM"};
	rhs_mag_rdg2_black[] = {"BLACK","FLARE"};
	rhs_mag_rdg2_white[] = {"WHITE","FLARE"};
	rhs_mag_rgd5[] = {"RDG"};
	rhs_mag_rgn[] = {"RGN"};
	rhs_mag_rgo[] = {"RGO"};
	rhs_mag_zarya2[] = {"ZARYA"};
	rhs_mag_an_m8hc[] = {"WHITE","SMOKE"};
	rhs_mag_an_m14_th3[] = {"INCENDIARY"};
};
};
class CfgExileLootSettings
{
lifeTime = 8;
spawnInterval = 30;
maximumPositionCoverage = 50;
maximumNumberOfLootSpotsPerBuilding = 10;
maximumNumberOfItemsPerLootSpot = 3;
spawnRadius = 70;
minimumDistanceToTraderZones = 300;
minimumDistanceToTerritories = 300;
};
class CfgExileMobileXM8
{
code = "6E8Y";
};
class CfgExileMusic
{
Ambient[] = {"ExileTrack04"};
Combat[] = {};
Intro[] = {};
};
class CfgExileParty 
{
showESP = 1;
allow3DMarkers = 1;
};
class CfgExileRussianRoulette
{
buyInAmount = 4000;
};
class CfgFlags 
{
class USA
{
	name = "USA";
	texture = "\A3\Data_F\Flags\flag_us_co.paa";
	uids[] = {};
};
class NATO
{
	name = "NATO";
	texture = "\A3\Data_F\Flags\Flag_nato_CO.paa";
	uids[] = {};
};
class CSG
{
	name = "CSG";
	texture = "CSG\flags\CSG.paa";
	uids[] = {};
};
class arstotzka
{
	name = "Arstotzka";
	texture = "CSG\flags\arstotzka.paa";
	uids[] = {};
};
class OneSevenThree
{
	name = "173rd";
	texture = "CSG\flags\173rd.paa";
	uids[] = {};
};
class Duty
{
	name = "Duty";
	texture = "CSG\flags\Duty.paa";
	uids[] = {};
};
class Empire
{
	name = "Galactic Empire";
	texture = "CSG\flags\Empire.paa";
	uids[] = {};
};
class Foxhound
{
	name = "Foxhound";
	texture = "CSG\flags\Foxhound.paa";
	uids[] = {};
};
class Freedom
{
	name = "Freedom";
	texture = "CSG\flags\Freedom.paa";
	uids[] = {};
};
class Keepout
{
	name = "Keep Out";
	texture = "CSG\flags\Keepout.paa";
	uids[] = {};
};
class Mandalorian
{
	name = "Mandalorian";
	texture = "CSG\flags\Mandalorian.paa";
	uids[] = {};
};
class Monolith
{
	name = "Monolith";
	texture = "CSG\flags\Monolith.paa";
	uids[] = {};
};
class Rebel
{
	name = "Rebel";
	texture = "CSG\flags\Rebel.paa";
	uids[] = {};
};
class Stalker
{
	name = "Stalker";
	texture = "CSG\flags\Stalker.paa";
	uids[] = {};
};
class OnePug
{
	name = "1PugLife.com";
	texture = "CSG\flags\1Pug.paa";
	uids[] = {};
};
};
class ExileAbstractAction
{
title = "";
condition = "true";
action = "";
priority = 1.5;
showWindow = false;
};
class CfgInteractionMenus
{
#include "EBM\menus.hpp"
class Car 
{
	targetType = 2;
	target = "Car";
	class Actions 
	{
		class ScanLock: ExileAbstractAction
		{
			title = "Scan Lock";
			condition = "('Exile_Item_ThermalScannerPro' in (magazines player)) && !ExilePlayerInSafezone && ((locked ExileClientInteractionObject) != 1)";
			action = "_this call ExileClient_object_lock_scan";
		};
		class Lock: ExileAbstractAction
		{
			title = "Lock";
			condition = "((locked ExileClientInteractionObject) isEqualTo 0) && ((locked ExileClientInteractionObject) != 1)";
			action = "true spawn ExileClient_object_lock_toggle";
		};
		class Unlock: ExileAbstractAction
		{
			title = "Unlock";
			condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
			action = "false spawn ExileClient_object_lock_toggle";
		};
		class Repair: ExileAbstractAction
		{
			title = "Repair";
			condition = "true";
			action = "['RepairVehicle', _this select 0] call ExileClient_action_execute";
		};
		class Hotwire: ExileAbstractAction
		{
			title = "Hotwire";
			condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
			action = "['HotwireVehicle', _this select 0] call ExileClient_action_execute";
		};
		class Flip: ExileAbstractAction
		{
			title = "Flip";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_flip";
		};
		class Refuel: ExileAbstractAction
		{
			title = "Refuel";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_refuel";
		};
		class DrainFuel: ExileAbstractAction
		{
			title = "Drain Fuel";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_drain";
		};
		class PackDeployedVehicle: ExileAbstractAction
		{
			title = "Pack Vehicle";
			condition = "call ExAd_XM8_DV_fnc_canPack";
			action = "call ExAd_XM8_DV_fnc_pack";
		};
		class ClaimVehicle: ExileAbstractAction
		{
			title = "Claim Ownership";
			condition = "true";
			action = "call ExileClient_ClaimVehicles_network_claimRequestSend";
		};
	};
};
class Air
{
	target = "Air";
	targetType = 2;
	class Actions
	{
		class ScanLock: ExileAbstractAction
		{
			title = "Scan Lock";
			condition = "('Exile_Item_ThermalScannerPro' in (magazines player)) && ((locked ExileClientInteractionObject) != 1) && !ExilePlayerInSafezone";
			action = "_this call ExileClient_object_lock_scan";
		};
		class Lock: ExileAbstractAction
		{
			title = "Lock";
			condition = "((locked ExileClientInteractionObject) isEqualTo 0) && ((locked ExileClientInteractionObject) != 1)";
			action = "true spawn ExileClient_object_lock_toggle";
		};
		class Unlock: ExileAbstractAction
		{
			title = "Unlock";
			condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
			action = "false spawn ExileClient_object_lock_toggle";
		};
		class Hotwire: ExileAbstractAction
		{
			title = "Hotwire";
			condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
			action = "['HotwireVehicle', _this select 0] call ExileClient_action_execute";
		};
		class Repair: ExileAbstractAction
		{
			title = "Repair";
			condition = "true";
			action = "['RepairVehicle', _this select 0] call ExileClient_action_execute";
		};
		class Flip: ExileAbstractAction
		{
			title = "Flip";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_flip";
		};
		class Refuel: ExileAbstractAction
		{
			title = "Refuel";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_refuel";
		};
		class DrainFuel: ExileAbstractAction
		{
			title = "Drain Fuel";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_drain";
		};
		class RotateLeft: ExileAbstractAction
		{
			title = "Rotate Left";	
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "[ExileClientInteractionObject,-15] call ExileClient_object_vehicle_rotate";
		};
		class RotateRight: ExileAbstractAction
		{
			title = "Rotate Right";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "[ExileClientInteractionObject,15] call ExileClient_object_vehicle_rotate";
		};
		class ClaimVehicle: ExileAbstractAction
		{
			title = "Claim Ownership";
			condition = "true";
			action = "call ExileClient_ClaimVehicles_network_claimRequestSend";
		};
	};
};
class Safe
{
	targetType = 2;
	target = "Exile_Container_Safe";
	class Actions 
	{
		class ScanLock: ExileAbstractAction
		{
			title = "Scan Lock";
			condition = "('Exile_Item_ThermalScannerPro' in (magazines player)) && !((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 1) && !ExilePlayerInSafezone";
			action = "_this call ExileClient_object_lock_scan";
		};
		class Lock : ExileAbstractAction
		{
			title = "Lock";
			condition = "((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 0)";
			action = "true spawn ExileClient_object_lock_toggle";
		};
		class Unlock : ExileAbstractAction
		{
			title = "Unlock";
			condition = "((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo -1)";
			action = "false spawn ExileClient_object_lock_toggle";
		};
		class Pack : ExileAbstractAction
		{
			title = "Pack";
			condition = "((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 0)";
			action = "_this spawn ExileClient_object_container_pack";
		};
		class SetPinCode : ExileAbstractAction
		{
			title = "Set PIN";
			condition = "((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 0)";
			action = "_this spawn ExileClient_object_lock_setPin";
		};
		class HackSafe : ExileAbstractAction
		{
			title = "Hack Safe";
			condition = "call ExAd_fnc_canHackSafe";
			action = "_this spawn ExAd_fnc_startHack";
		};
	};
};
class Laptop
{
	targetType = 2;
	target = "Exile_Construction_Laptop_Static";
	class Actions
	{
		class CameraSystem: ExileAbstractAction
		{
			title = "CCTV Access";
			condition = "((ExileClientInteractionObject animationPhase 'LaptopLidRotation') >= 0.5)";
			action = "_this call ExileClient_gui_baseCamera_show";
		};
		class StopHack: ExileAbstractAction
		{
			title = "Interupt Hack";
			condition = "(ExileClientInteractionObject getVariable ['ExAd_HACKING_IN_PROGRESS', false])";
			action = "_this spawn ExAd_fnc_stopHack";
		};
	};
};
class SupplyBox
{
	targetType = 2;
	target = "Exile_Container_SupplyBox";
	class Actions
	{
		class Mount: ExileAbstractAction
		{
			title = "Mount";
			condition = "(isNull (attachedTo ExileClientInteractionObject)) && ((ExileClientInteractionObject getvariable ['ExileOwnerUID',1]) isEqualTo 1)";
			action = "_this call ExileClient_object_supplyBox_mount";
		};
		class Install: ExileAbstractAction
		{
			title = "Install";
			condition = "isNull (attachedTo ExileClientInteractionObject) && ((ExileClientInteractionObject getvariable ['ExileOwnerUID',1]) isEqualTo 1)";
			action = "_this call ExileClient_object_supplyBox_install";
		};
		class Unmount: ExileAbstractAction
		{
			title = "Unmount";
			condition = "!(isNull (attachedTo ExileClientInteractionObject)) && ((ExileClientInteractionObject getvariable ['ExileOwnerUID',1]) isEqualTo 1)";
			action = "_this call ExileClient_object_supplyBox_unmount";
		};
	};
};

class Drawbridge
{
	targetType = 2;
	target = "Exile_Construction_WoodDrawBridge_Abstract";
	class Actions
	{
		class Lower: ExileAbstractAction
		{
			title = "Lower";
			condition = "ExileClientInteractionObject call ExileClient_object_construction_openBridgeShow";
			action = "ExileClientInteractionObject animateSource ['DrawBridge_Source', 0];";
		};
		
		class Raise: ExileAbstractAction
		{
			title = "Raise";
			condition = "((ExileClientInteractionObject animationSourcePhase 'DrawBridge_Source') < 0.5)";
			action = "ExileClientInteractionObject animateSource ['DrawBridge_Source', 2]";
		};
	};
};
class Construction
{
	targetType = 2;
	target = "Exile_Construction_Abstract_Static";
	class Actions 
	{
		class ScanLock: ExileAbstractAction
		{
			title = "Scan Lock";
			condition = "('Exile_Item_ThermalScannerPro' in (magazines player)) && !((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 1)";
			action = "_this call ExileClient_object_lock_scan";
		};
		class Unlock : ExileAbstractAction
		{
			title = "Unlock";
			condition = "((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo -1)";
			action = "false spawn ExileClient_object_lock_toggle";
		};
		class Lock : ExileAbstractAction
		{
			title = "Lock";
			condition = "((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 0)";
			action = "true spawn ExileClient_object_lock_toggle";
		};
		class Move: ExileAbstractAction
		{
			title = "Move";
			condition = "call ExileClient_util_world_isInOwnTerritory";
			action = "_this spawn ExileClient_object_construction_move";
		};
		class Deconstruct: ExileAbstractAction
		{
			title = "Remove";
			condition = "call ExileClient_util_world_isInOwnTerritory";
			action = "_this spawn ExileClient_object_construction_deconstruct";
		};
		class AddALock : ExileAbstractAction
		{
			title = "Add a Lock";
			condition = "call ExileClient_object_construction_lockAddShow";
			action = "_this spawn ExileClient_object_construction_lockAdd";
		};
		class Upgrade : ExileAbstractAction
		{
			title = "Upgrade";
			condition = "call ExileClient_object_construction_upgradeShow";
			action = "_this call ExileClient_object_construction_upgrade";
		};
		class MakeBoom : ExileAbstractAction
		{
			title = "Plant charge";
			condition = "call ExileClient_system_breaching_condition";
			action = "_this call ExileClient_system_breaching_action";
		};
		class Repair : ExileAbstractAction
		{
			title = "Repair";
			condition = "(!((ExileClientInteractionObject getVariable ['ExileConstructionDamage',0]) isEqualTo 0)) && (call ExileClient_util_world_isInOwnTerritory)";
			action = "_this call ExileClient_object_construction_repair";
		};
	};
};
class Container
{
	targetType = 2;
	target = "Exile_Container_Abstract";
	class Actions 
	{
		class Pack 
		{
			title = "Pack";
			condition = "!((typeOf ExileClientInteractionObject) isEqualTo 'Exile_Container_SupplyBox')";
			action = "_this spawn ExileClient_object_container_pack";
		};
		class Move: ExileAbstractAction
		{
			title = "Move";
			condition = "(getNumber(configFile >> 'CfgVehicles' >> typeOf ExileClientInteractionObject >> 'exileIsLockable') isEqualTo 0) || ((ExileClientInteractionObject getvariable ['ExileIsLocked',1]) isEqualTo 0)";
			action = "_this spawn ExileClient_object_construction_move";
		};
	};
};

class Flag
{
	targetType = 2;
	target = "Exile_Construction_Flag_Static";
	class Actions
	{
		class StealFlag: ExileAbstractAction
		{
			title = "Steal Flag";
			condition = "((ExileClientInteractionObject getvariable ['ExileFlagStolen',1]) isEqualTo 0)";
			action = "['StealFlag', _this select 0] call ExileClient_action_execute";
		};
		
		class RestoreFlag: ExileAbstractAction
		{
			title = "Restore Flag";
			condition = "((ExileClientInteractionObject getvariable ['ExileFlagStolen',0]) isEqualTo 1)";
			action = "['restoreFlagRequest', [netID ExileClientInteractionObject]] call ExileClient_system_network_send";
		};
	};
};
class Boat 
{
	targetType = 2;
	target = "Ship";
	class Actions
	{
		class Lock: ExileAbstractAction
		{
			title = "Lock";
			condition = "((locked ExileClientInteractionObject) isEqualTo 0) && ((locked ExileClientInteractionObject) != 1)";
			action = "true spawn ExileClient_object_lock_toggle";
		};
		class Unlock: ExileAbstractAction
		{
			title = "Unlock";
			condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
			action = "false spawn ExileClient_object_lock_toggle";
		};
		class Hotwire: ExileAbstractAction
		{
			title = "Hotwire";
			condition = "((locked ExileClientInteractionObject) isEqualTo 2) && ((locked ExileClientInteractionObject) != 1)";
			action = "['HotwireVehicle', _this select 0] call ExileClient_action_execute";
		};
		class Repair: ExileAbstractAction
		{
			title = "Repair";
			condition = "true";
			action = "['RepairVehicle', _this select 0] call ExileClient_action_execute";
		};
		class Refuel: ExileAbstractAction
		{
			title = "Refuel";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_refuel";
		};
		class DrainFuel: ExileAbstractAction
		{
			title = "Drain Fuel";
			condition = "call ExileClient_object_vehicle_interaction_show";
			action = "_this call ExileClient_object_vehicle_drain";
		};
		class Push: ExileAbstractAction
		{
			title = "Flip Boat";
			condition = "((crew ExileClientInteractionObject) isEqualTo [])";
			action = "_this call ExileClient_object_vehicle_push";
		};
		
		class ClaimVehicle: ExileAbstractAction
		{
			title = "Claim Ownership";
			condition = "true";
			action = "call ExileClient_ClaimVehicles_network_claimRequestSend";
		};
	};
};
class Bikes
{
	targetType = 2;
	target = "Bicycle";
	class Actions
	{
		class Flip: ExileAbstractAction
		{
			title = "Flip";
			condition = "true";
			action = "_this call ExileClient_object_vehicle_flip";
		};
		class PackDeployedVehicle: ExileAbstractAction
		{
			title = "Pack Bike";
			condition = "call ExAd_XM8_DV_fnc_canPack";
			action = "call ExAd_XM8_DV_fnc_pack";
		};
	};
};
class Player 
{
	targetType = 2;
	target = "Exile_Unit_Player";
	class Actions 
	{
		class Free: ExileAbstractAction
		{
			title = "Free";
			condition = "(alive ExileClientInteractionObject) && (ExileClientInteractionObject getVariable ['ExileIsHandcuffed', false]) && !ExileClientIsHandcuffed";
			action = "_this call ExileClient_object_handcuffs_free";
		};
		class Search: ExileAbstractAction
		{
			title = "Search Gear";
			condition = "(alive ExileClientInteractionObject) && (ExileClientInteractionObject getVariable ['ExileIsHandcuffed', false]) && !ExileClientIsHandcuffed";
			action = "_this call ExileClient_object_handcuffs_searchGear";
		};
	class Identify: ExileAbstractAction
	{
		title = "Identify Body";
		condition = "!(alive ExileClientInteractionObject)";
		action = "_this call ExileClient_object_player_identifyBody";
	};
	//////////////Added by [_ZEN_]happydayz/////////////////
	class Revive: ExileAbstractAction
	{
		title = "Perform CPR";
		condition = "(!(alive ExileClientInteractionObject) && (ExileClientInteractionObject getVariable ['EnigmaRevivePermitted', true]) && (magazines player find 'Exile_Item_Defibrillator' >= 0))";
		action = "_this spawn Enigma_RevivePlyr";
	};	
};
};
class Animal
{
	targetType = 2;
	target = "Exile_Animal_Abstract";
	class Actions 
	{			
		class Gut: ExileAbstractAction
		{
			title = "Gut Animal";
			condition = "!(alive ExileClientInteractionObject) && (ExileClientInteractionObject getVariable ['CanBeGutted', false])";
			action = "['GutAnimal', ExileClientInteractionObject] call ExileClient_action_execute";
		};
	};
};
};
class CfgInteractionModels
{
class WaterSource
{
	name = "Water tanks, barrels, coolers or pumps";
	models[] = 	
	{
		"barrelwater_f", 
		"barrelwater_grey_f",
		"waterbarrel_f",
		"water_source_f",
		"Tank_rust_F",
		"Sink_F",
		"Waterpump_01_F"
	};
};
class CleanWaterSource
{
	name = "Water cooler";
	models[] = 	
	{
		"watercooler",
		"Land_Misc_Well_C_EP1",
		"watertank_f",
		"stallwater_f",
		"waterpump_01_f",
		"Land_Pumpa"
	};
};
class WorkBench
{
	name = "Work Bench";
	models[] = 
	{
		"workstand_f.p3d",
		"workbench_01_f.p3d"
	};
};
class AdvancedWorkbench
{
	name = "Advanced Workbench";
	models[] = 
	{
		"workbench_01_f.p3d"
	};
};
class ShippingContainerSource
{
	name = "Shipping Containers";
	models[] = 
	{
		"wreck_"
	};
};
class WoodSource
{
	name = "Trees";
	models[] = 
	{
		" t_",
		" bo_t_",
		" str_",
		" Smrk_",
		" les_",
		" brg_"			
	};
};
class FuelSource
{
	name = "Fuel pumps, stations or barrels";
	models[] = 
	{
		"fuelstation_feed_f.p3d",
		"metalbarrel_f.p3d",
		"flexibletank_01_f.p3d",
		"fs_feed_f.p3d",
		"Fuel_tank_stairs.p3d",
		"A_FuelStation_Feed.p3d",
		"fuel_tank_small.p3d",
		"fuel_tank_big.p3d",
		"Ind_TankSmall.p3d"
	};	
};
};
class CfgLocker 
{
numbersOnly = "0123456789";
maxDeposit = 500000;
};
class CfgPlayer 
{
hungerDecay = 90;
thirstDecay = 60;
healthDecay = 5.0;
thirstRegen = 90;
hungerRegen = 90;
recoveryPerMinute = 2;
customAimCoefficient = 0.5;
enableFatigue = 0;
enableStamina = 0;
disableMapDrawing = 1;
};
class CfgSlothMachine
{
spinCost = 100;
Jackpot = 10100;	
chances[] = 
{
	{85, ""},
	{95, "Level1"},
	{96, "Level2"},
	{97, "Level3"},
	{98, "Level4"},
	{99, "Level5"},
	{100, "Jackpot"}
};
class Prizes 
{
	class Level1
	{
		symbol = "\exile_assets\texture\item\Exile_Item_ToiletPaper.paa";
		prize = 101;
	};
	class Level2
	{
		symbol = "\exile_assets\texture\item\Exile_Item_CockONut.paa";
		prize = 110;
	};
	class Level3
	{
		symbol = "\exile_assets\texture\item\Exile_Item_Beer.paa";
		prize = 125;
	};
	class Level4
	{
		symbol = "\exile_assets\texture\item\Exile_Item_Knife.paa";
		prize = 150;
	};
	class Level5
	{
		symbol = "\exile_assets\texture\item\Exile_Item_Safe.paa";
		prize = 200;
	};
	class Jackpot
	{
		symbol = "\exile_assets\texture\item\Exile_Item_XmasPresent.paa";
	};
};
};
class CfgTerritories
{
prices[] = 
{
	{5000,15,30},
	{10000,30,40},
	{20000,45,50},
	{40000,60,70},
	{60000,75,90},
	{80000,90,110},
	{100000,105,130},
	{200000,120,150},
	{500000,135,200},
	{1000000,150,300}
};
maximumRadius = 150;
minimumDistanceToOtherTerritories = 320; 
maximumNumberOfTerritoriesPerPlayer = 1;
minimumDistanceToTraderZones = 1000;
minimumDistanceToSpawnZones = 1000;
popTabAmountPerObject = 150;
};
class CfgTraderCategories 
{
#include "EBM\traders.hpp"
#include "TRADERS\NIA\TraderCategoriesNIA.hpp"
#include "TRADERS\ARMA3V\TraderCategoriesARMA3V.hpp"
#include "TRADERS\BM\TraderCategoriesBM.hpp"
#include "TRADERS\RHSV\TraderCategoriesRHSV.hpp"
#include "TRADERS\RHSW\TraderCategoriesRHSW.hpp"
#include "TRADERS\TRYK\TraderCategoriesTRYK.hpp"
#include "TRADERS\SMA\TraderCategoriesSMAW.hpp"
#include "TRADERS\Exile\TraderCategoriesExile.hpp"
#include "TRADERS\CAU\TraderCategoriesCAU.hpp"
#include "TRADERS\FISH\TraderCategoriesFISH.hpp"
#include "TRADERS\HUNT\TraderCategoriesHUNT.hpp"
};
class CfgTraders
{
#include "TRADERS\CfgTraders.hpp"
};
class CfgTrading 
{
sellPriceFactor = 0.3;

rekeyPriceFactor = 0.3;
class requiredRespect 
{
	Level1 = 0;
	Level2 = 5000;
	Level3 = 10000;
	Level4 = 20000;
	Level5 = 40000;
	Level6 = 50000;
};
};
class CfgVehicleCustoms
{
class Exile_Bike_QuadBike_Abstract
{
	skins[] =
	{
		{"Exile_Bike_QuadBike_Blue",		100, "Blue",		{"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_BLUE_CO.paa","\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVBLUE_CO.paa"}},
		{"Exile_Bike_QuadBike_Red",			100, "Red",			{"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_RED_CO.paa","\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVRED_CO.paa"}},
		{"Exile_Bike_QuadBike_White",		100, "White",		{"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_WHITE_CO.paa","\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVWHITE_CO.paa"}},
		{"Exile_Bike_QuadBike_Nato",		150, "NATO",		{"\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","\A3\Soft_F\Quadbike_01\Data\Quadbike_01_wheel_co.paa"}},
		{"Exile_Bike_QuadBike_Csat",		150, "CSAT",		{"\A3\Soft_F\Quadbike_01\Data\Quadbike_01_OPFOR_CO.paa","\A3\Soft_F\Quadbike_01\Data\Quadbike_01_wheel_OPFOR_CO.paa"}},
		{"Exile_Bike_QuadBike_Fia",			150, "FIA",			{"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_INDP_CO.paa","\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_INDP_CO.paa"}},
		{"Exile_Bike_QuadBike_Guerilla01",	150, "Guerilla 01",	{"\A3\Soft_F_Bootcamp\Quadbike_01\Data\Quadbike_01_IG_CO.paa","\A3\soft_f_gamma\Quadbike_01\Data\Quadbike_01_wheel_IG_CO.paa"}},
		{"Exile_Bike_QuadBike_Guerilla02",	150, "Guerilla 02",	{"\A3\Soft_F_Bootcamp\Quadbike_01\Data\Quadbike_01_INDP_Hunter_CO.paa","\A3\soft_f_gamma\Quadbike_01\Data\Quadbike_01_wheel_INDP_Hunter_CO.paa"}},
		{"Exile_Bike_QuadBike_Black",		100, "Black",		{"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_BLACK_CO.paa","\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVBLACK_CO.paa"}},
		{"Exile_Bike_QuadBike_Black",		100, "Hex",		{"\A3\Soft_f_Exp\Quadbike_01\data\Quadbike_01_ghex_CO.paa","\A3\Soft_f_Exp\Quadbike_01\data\Quadbike_01_wheel_ghex_CO.paa"}}
	};
};
class Exile_Boat_MotorBoat_Abstract
{
	skins[] =
	{
		{"Exile_Boat_MotorBoat_Police",		350, "Police", {"\a3\boat_f_gamma\Boat_Civil_01\data\Boat_Civil_01_ext_police_co.paa","\a3\boat_f_gamma\Boat_Civil_01\data\Boat_Civil_01_int_police_co.paa"}},
		{"Exile_Boat_MotorBoat_Orange",		300, "Orange", {"\a3\boat_f_gamma\Boat_Civil_01\data\Boat_Civil_01_ext_rescue_co.paa","\a3\boat_f_gamma\Boat_Civil_01\data\Boat_Civil_01_int_rescue_co.paa"}},
		{"Exile_Boat_MotorBoat_White",		300, "White",  {"\a3\boat_f_gamma\Boat_Civil_01\data\Boat_Civil_01_ext_co.paa","\a3\boat_f_gamma\Boat_Civil_01\data\Boat_Civil_01_int_co.paa"}}
	};
};
class Exile_Boat_RubberDuck_Abstract
{
	skins[] =
	{
		{"Exile_Boat_RubberDuck_CSAT",		200, "CSAT", {"\A3\boat_F\Boat_Transport_01\data\Boat_Transport_01_OPFOR_CO.paa"}},
		{"Exile_Boat_RubberDuck_Digital",	200, "Digital",{"\A3\boat_F\Boat_Transport_01\data\Boat_Transport_01_INDP_CO.paa"}},
		{"Exile_Boat_RubberDuck_Orange",	150, "Orange", {"\A3\boat_F\Boat_Transport_01\data\Boat_Transport_01_rescue_CO.paa"}},
		{"Exile_Boat_RubberDuck_Blue",		150, "Blue", {"\A3\boat_F\Boat_Transport_01\data\Boat_Transport_01_civilian_CO.paa"}},
		{"Exile_Boat_RubberDuck_Black",		150, "Black", {"\A3\boat_F\Boat_Transport_01\data\boat_transport_01_co.paa"}}
	};
};
class Exile_Boat_SDV_Abstract
{
	skins[] =
	{
		{"Exile_Boat_SDV_CSAT",		200, "CSAT", {"\A3\boat_f_beta\SDV_01\data\SDV_ext_opfor_CO.paa"}},
		{"Exile_Boat_SDV_Digital",	200, "Digital", {"\A3\boat_f_beta\SDV_01\data\SDV_ext_INDP_CO.paa"}},
		{"Exile_Boat_SDV_Grey",		100, "Grey", {"\A3\boat_f_beta\SDV_01\data\SDV_ext_CO.paa"}}
	};
};
class Exile_Chopper_Hellcat_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Hellcat_Green", 350, "Green", 	{"\A3\Air_F_EPB\Heli_Light_03\data\Heli_Light_03_base_CO.paa"}},
		{"Exile_Chopper_Hellcat_FIA", 	500, "FIA", 	{"\A3\Air_F_EPB\Heli_Light_03\data\heli_light_03_base_indp_co.paa"}}
	};
};
class Exile_Car_Kart_Abstract
{
	skins[] =
	{
		{"Exile_Car_Kart_BluKing", 				100, "Bluking", 	{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_blu_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_blu_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_RedStone", 			100, "RedStone", 	{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_black_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_black_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_Vrana", 				100, "Vrana", 		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_vrana_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_vrana_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_Green", 				100, "Green", 		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_base_green_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_blu_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_Blue", 				100, "Blue", 		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_base_blue_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_blu_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_Orange", 				100, "Orange",		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_base_orange_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_blu_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_White", 				100, "White", 		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_base_white_CO.paa","","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_Yellow", 				100, "Yellow", 		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_base_yellow_CO.paa","","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}},
		{"Exile_Car_Kart_Black", 				100, "Black", 		{"\a3\Soft_F_Kart\Kart_01\Data\Kart_01_base_black_CO.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_01_logos_black_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_1_CA.paa","\a3\Soft_F_Kart\Kart_01\Data\Kart_num_3_CA.paa"}}
	};
};
class Exile_Chopper_Hummingbird_Civillian_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Hummingbird_Civillian_Blue", 		350, "Blue", 		{"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Red", 		350, "Red", 		{"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_ION", 		350, "ION", 		{"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_BlueLine", 	350, "BlueLine", 	{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueLine_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Digital", 	350, "Digital", 	{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Elliptical", 	350, "Elliptical", 	{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Furious", 	350, "Furious", 	{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_GrayWatcher", 350, "GrayWatcher",	{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Jeans", 		350, "Jeans", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Light", 		350, "Light", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_light_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Shadow", 		350, "Shadow", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Sheriff", 	350, "Sheriff", 	{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Speedy", 		350, "Speedy", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Sunset", 		350, "Sunset", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Vrana", 		350, "Vrana", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Wasp", 		350, "Wasp", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa"}},
		{"Exile_Chopper_Hummingbird_Civillian_Wave", 		350, "Wave", 		{"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"}}
	};
};
class Exile_Chopper_Huron_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Huron_Black", 	450, "Black", {"\A3\Air_F_Heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_black_CO.paa","\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa"}},
		{"Exile_Chopper_Huron_Green", 	450, "Green", {"\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_co.paa","\a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_co.paa"}}
	};
};
class Exile_Chopper_Orca_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Orca_CSAT", 		350, "CSAT", 			{"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_OPFOR_CO.paa"}},
		{"Exile_Chopper_Orca_Black", 		350, "Black", 			{"\A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"}},
		{"Exile_Chopper_Orca_BlackCustom", 	350, "Black Custom", 	{"\A3\Air_F_Heli\Heli_Light_02\Data\Heli_Light_02_ext_OPFOR_V2_CO.paa"}}
	};
};
class Exile_Chopper_Taru_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Taru_CSAT",		500, "CSAT", 	{"A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_01_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_02_co.paa"}},
		{"Exile_Chopper_Taru_Black",	500, "BLACK", 	{"A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_01_black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_02_black_CO.paa"}}
	};
};
class Exile_Chopper_Taru_Transport_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Taru_Transport_CSAT",	500, "CSAT", 	{"A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_01_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_02_co.paa"}},
		{"Exile_Chopper_Taru_Transport_Black",	500, "Black", 	{"A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_01_black_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_02_black_CO.paa"}}
	};
};
class Exile_Chopper_Taru_Covered_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Taru_Covered_CSAT",		500, "CSAT",	{"A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_01_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_base_02_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext01_CO.paa","A3\Air_F_Heli\Heli_Transport_04\Data\Heli_Transport_04_Pod_Ext02_CO.paa"}},
		{"Exile_Chopper_Taru_Covered_Black",	500, "Black",	{"A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_01_black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_base_02_black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_pod_ext01_black_co.paa","A3\Air_F_Heli\Heli_Transport_04\Data\heli_transport_04_pod_ext02_black_co.paa"}}
	};
};
class Exile_Car_Hatchback_Abstract
{
	skins[] =
	{
		{"Exile_Car_Hatchback_Rusty1", 			50, "Rusty White",		{"\exile_assets\model\RTV\Exile_Car_Hatchback_01_co.paa"}},
		{"Exile_Car_Hatchback_Rusty2", 			50, "Rusty Red",		{"\exile_assets\model\RTV\Exile_Car_Hatchback_02_co.paa"}},
		{"Exile_Car_Hatchback_Rusty3", 			50, "Rusty Yellow",		{"\exile_assets\model\RTV\Exile_Car_Hatchback_03_co.paa"}},
		{"Exile_Car_Hatchback_Beige", 			100, "Beige",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE01_CO.paa"}},
		{"Exile_Car_Hatchback_Green", 			100, "Green",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE02_CO.paa"}},
		{"Exile_Car_Hatchback_Blue", 			100, "Blue",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE03_CO.paa"}},
		{"Exile_Car_Hatchback_BlueCustom", 		100, "Blue Custom",		{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE04_CO.paa"}},
		{"Exile_Car_Hatchback_BeigeCustom", 	100, "Beige Custom",	{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE05_CO.paa"}},
		{"Exile_Car_Hatchback_Yellow", 			100, "Yellow",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE06_CO.paa"}},
		{"Exile_Car_Hatchback_Grey", 			100, "Grey",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE07_CO.paa"}},
		{"Exile_Car_Hatchback_Black", 			100, "Black",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE08_CO.paa"}},
		{"Exile_Car_Hatchback_Dark", 			100, "Dark",			{"\A3\Soft_F_Gamma\Hatchback_01\data\Hatchback_01_ext_BASE09_CO.paa"}}
	};
};
class Exile_Car_Hatchback_Sport_Abstract
{
	skins[] =
	{
		{"Exile_Car_Hatchback_Sport_Red", 		100, "Red",		{"\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT01_CO.paa"}},
		{"Exile_Car_Hatchback_Sport_Blue", 		100, "Blue",	{"\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT02_CO.paa"}},
		{"Exile_Car_Hatchback_Sport_Orange", 	100, "Orange",	{"\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT03_CO.paa"}},
		{"Exile_Car_Hatchback_Sport_White", 	100, "White",	{"\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT04_CO.paa"}},
		{"Exile_Car_Hatchback_Sport_Beige", 	100, "Beige",	{"\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT05_CO.paa"}},
		{"Exile_Car_Hatchback_Sport_Green", 	100, "Green",	{"\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT06_CO.paa"}}
	};
};
class Exile_Car_Offroad_Abstract
{
	skins[] =
	{
		{"Exile_Car_Offroad_Rusty1", 		50, "Rusty White",	{"\exile_assets\model\RTV\Exile_offroad_03_co.paa","\exile_assets\model\RTV\Exile_offroad_03_co.paa"}},
		{"Exile_Car_Offroad_Rusty2", 		50, "Rusty Red",	{"\exile_assets\model\RTV\Exile_offroad_01_co.paa","\exile_assets\model\RTV\Exile_offroad_01_co.paa"}},
		{"Exile_Car_Offroad_Rusty3", 		50, "Rusty Blue",	{"\exile_assets\model\RTV\Exile_offroad_02_co.paa","\exile_assets\model\RTV\Exile_offroad_02_co.paa"}},
		{"Exile_Car_Offroad_Red", 			500, "Red",			{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_CO.paa"}},
		{"Exile_Car_Offroad_Beige", 		500, "Beige",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE01_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE01_CO.paa"}},
		{"Exile_Car_Offroad_White", 		500, "White",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE02_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE02_CO.paa"}},
		{"Exile_Car_Offroad_Blue", 			500, "Blue",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE03_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE03_CO.paa"}},
		{"Exile_Car_Offroad_DarkRed", 		500, "Dark Red",	{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE04_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE04_CO.paa"}},
		{"Exile_Car_Offroad_BlueCustom", 	500, "Blue Custom",	{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE05_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE05_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla01", 	700, "Guerilla 01",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla02", 	700, "Guerilla 02",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla03", 	700, "Guerilla 03",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla04", 	700, "Guerilla 04",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla05", 	700, "Guerilla 05",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla06", 	700, "Guerilla 06",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla07", 	700, "Guerilla 07",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla08", 	700, "Guerilla 08",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla09", 	700, "Guerilla 09",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla10", 	700, "Guerilla 10",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla11", 	700, "Guerilla 11",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa"}},
		{"Exile_Car_Offroad_Guerilla12", 	700, "Guerilla 12",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa"}},
		{"Exile_Car_Offroad_DarkRed",		700, "Exile Black", {"exile_assets\texture\vehicle\Exile_Offroad_Black_co.paa"}},
		{"Exile_Car_Offroad_DarkRed",		700, "Exile Light Blue", {"exile_assets\texture\vehicle\Exile_Offroad_LightBlue_co.paa"}},
		{"Exile_Car_Offroad_DarkRed",		700, "Exile Orange",{"exile_assets\texture\vehicle\Exile_Offroad_Orange_co.paa"}},
		{"Exile_Car_Offroad_DarkRed",		700, "Exile Pink",	{"exile_assets\texture\vehicle\Exile_Offroad_Pink_co.paa"}},
		{"Exile_Car_Offroad_DarkRed",		700, "Exile White",	{"exile_assets\texture\vehicle\Exile_Offroad_White_co.paa"}},
		{"Exile_Car_Offroad_DarkRed",		700, "Exile Yellow",{"exile_assets\texture\vehicle\Exile_Offroad_Yellow_co.paa"}}
	};
};
class Exile_Car_LandRover_Abstract
{
	skins[] =
	{
		{"Exile_Car_LandRover_Red", 250, "Red", {"Exile_psycho_LRC\data\r_lr_base_co.paa","Exile_psycho_LRC\data\r_lr_special_co.paa"}},
		{"Exile_Car_LandRover_Urban", 250, "Urban", {"Exile_psycho_LRC\data\textures\lr_base_urbancamo_co.paa","Exile_psycho_LRC\data\textures\lr_special_urbancamo_co.paa"}},
		{"Exile_Car_LandRover_Green", 250, "Green", {"Exile_psycho_LRC\data\lr_acr_base_co.paa","Exile_psycho_LRC\data\lr_acr_spec_co.paa"}},
		{"Exile_Car_LandRover_Sand", 250, "Sand", {"Exile_psycho_LRC\data\lr_acr_sand_base_co.paa","Exile_psycho_LRC\data\lr_special_acr_co.paa"}},
		{"Exile_Car_LandRover_Desert", 250, "Desert", {"Exile_psycho_LRC\data\lr_acrs_base_co.paa","Exile_psycho_LRC\data\lr_special_acr_co.paa"}}
	};
};
class Exile_Car_LandRover_Ambulance_Abstract
{
	skins[] =
	{
		{"Exile_Car_LandRover_Ambulance_Green", 250, "Green", {"Exile_psycho_LRC\data\lr_acr_base_co.paa","Exile_psycho_LRC\data\lr_amb_ext_co.paa","Exile_psycho_LRC\data\lr_acr_spec_co.paa"}},
		{"Exile_Car_LandRover_Ambulance_Desert", 250, "Desert", {"Exile_psycho_LRC\data\lr_acrs_base_co.paa","Exile_psycho_LRC\data\lr_amb_ext_co.paa","Exile_psycho_LRC\data\lr_special_acr_co.paa"}},
		{"Exile_Car_LandRover_Ambulance_Sand", 250, "Sand", {"Exile_psycho_LRC\data\lr_acr_sand_base_co.paa","Exile_psycho_LRC\data\lr_amb_ext_co.paa","Exile_psycho_LRC\data\lr_special_acr_co.paa"}}
	};
};
class Exile_Car_Octavius_Abstract
{
	skins[] =
	{
		{"Exile_Car_Octavius_White", 250, "White", {"exile_psycho_Octavia\Data\car_body_co.paa"}},
		{"Exile_Car_Octavius_Black", 250, "Black", {"exile_psycho_Octavia\Data\car_body_bl_co.paa"}}
	};
};
class Exile_Chopper_Huey_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Huey_Green", 700, "Green", {"Exile_psycho_UH1H\data\uh1h_co.paa","Exile_psycho_UH1H\data\uh1h_in_co.paa","Exile_psycho_UH1H\data\default_co.paa","Exile_psycho_UH1H\data\alpha_ca.paa"}},
		{"Exile_Chopper_Huey_Desert", 700, "Desert", {"Exile_psycho_UH1H\data\uh1d_tka_co.paa","Exile_psycho_UH1H\data\uh1d_in_tka_co.paa","Exile_psycho_UH1H\data\default_co.paa","Exile_psycho_UH1H\data\alpha_ca.paa"}}
	};
};
class Exile_Chopper_Huey_Armed_Abstract
{
	skins[] =
	{
		{"Exile_Chopper_Huey_Armed_Green", 700, "Green", {"Exile_psycho_UH1H\data\uh1h_co.paa","Exile_psycho_UH1H\data\uh1h_in_co.paa","Exile_psycho_UH1H\data\default_co.paa","Exile_psycho_UH1H\data\alpha_ca.paa"}},
		{"Exile_Chopper_Huey_Armed_Desert", 700, "Desert", {"Exile_psycho_UH1H\data\uh1d_tka_co.paa","Exile_psycho_UH1H\data\uh1d_in_tka_co.paa","Exile_psycho_UH1H\data\default_co.paa","Exile_psycho_UH1H\data\alpha_ca.paa"}}
	};
};
class Exile_Car_Offroad_Armed_Abstract
{
	skins[] =
	{
		{"Exile_Car_Offroad_Armed_Guerilla01",	250, "Guerilla 01", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla02",	250, "Guerilla 02", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla03",	250, "Guerilla 03", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla04",	250, "Guerilla 04", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla05",	250, "Guerilla 05", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla06",	250, "Guerilla 06", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla07",	250, "Guerilla 07", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla08",	250, "Guerilla 08", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla09",	250, "Guerilla 09", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla10",	250, "Guerilla 10", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla11",	250, "Guerilla 11", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa"}},
		{"Exile_Car_Offroad_Armed_Guerilla12",	250, "Guerilla 12", {"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa"}}
	};
};
class Exile_Car_Offroad_Repair_Abstract
{
	skins[] =
	{
		{"Exile_Car_Offroad_Repair_Civillian",		150, "Civillian",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\Offroad_01_ext_repair_CIV_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\Offroad_01_ext_repair_CIV_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Red",			150, "Red",			{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Beige",			150, "Beige",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE01_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE01_CO.paa"}},
		{"Exile_Car_Offroad_Repair_White",			150, "White",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE02_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE02_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Blue",			150, "Blue",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE03_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE03_CO.paa"}},
		{"Exile_Car_Offroad_Repair_DarkRed",		150, "DarkRed",		{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE04_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE04_CO.paa"}},
		{"Exile_Car_Offroad_Repair_BlueCustom",		150, "BlueCustom",	{"\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE05_CO.paa","\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE05_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla01",		250, "Guerilla 01",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla02",		250, "Guerilla 02",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla03",		250, "Guerilla 03",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla04",		250, "Guerilla 04",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla05",		250, "Guerilla 05",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla06",		250, "Guerilla 06",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla07",		250, "Guerilla 07",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla08",		250, "Guerilla 08",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla09",		250, "Guerilla 09",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla10",		250, "Guerilla 10",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla11",		250, "Guerilla 11",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa"}},
		{"Exile_Car_Offroad_Repair_Guerilla12",		250, "Guerilla 12",	{"\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa","\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa"}}
	};
};
class Exile_Car_SUV_Abstract
{
	skins[] =
	{
		{"Exile_Car_SUV_Red", 		100, "Red",					{"\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_CO.paa"}},
		{"Exile_Car_SUV_Black", 	150, "Black",				{"\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_02_CO.paa"}},
		{"Exile_Car_SUV_Grey", 		100, "Grey",				{"\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_03_CO.paa"}},
		{"Exile_Car_SUV_Orange", 	100, "Orange",				{"\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_04_CO.paa"}},
		{"Exile_Car_SUV_Black", 	150, "Snow Camo",			{"exile_assets\texture\vehicle\Exile_SUV_Snow_co.paa"}},
		{"Exile_Car_SUV_Black", 	150, "Leaf Camo",			{"exile_assets\texture\vehicle\Exile_SUV_Leaf_Light_co.paa"}},
		{"Exile_Car_SUV_Black", 	150, "Leaf Camo (Dark)",	{"exile_assets\texture\vehicle\Exile_SUV_Leaf_Dark_co.paa"}}
	};
};
class Exile_Car_SUVXL_Abstract
{
	skins[] = 
	{
		{"Exile_Car_SUVXL_Black", 100, "Black", {"\Exile_psycho_SUV_a3\Data\suv_body_co.paa"}},
		{"Exile_Car_SUVXL_Black", 150, "Blue White", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_bluewhite.paa"}},
		{"Exile_Car_SUVXL_Black", 150, "Charcoal", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_charcoal_co.paa"}},
		{"Exile_Car_SUVXL_Black", 150, "Orange", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_orange_co.paa"}},
		{"Exile_Car_SUVXL_Black", 200, "Hello Kitty", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_Pink_hello_co.paa"}},
		{"Exile_Car_SUVXL_Black", 150, "Red", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_red_co.paa"}},
		{"Exile_Car_SUVXL_Black", 150, "Silver", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_silver_co.paa"}},
		{"Exile_Car_SUVXL_Black", 100, "White", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_white_co.paa"}},
		{"Exile_Car_SUVXL_Black", 150, "Yellow", {"\Exile_psycho_SUV_a3\Data\textures\suv_body_yellow_co.paa"}}
	};
};
class Exile_Car_Van_Abstract
{
	skins[] =
	{
		{"Exile_Car_Van_Black",			100, "Black",		{"\A3\soft_f_gamma\van_01\Data\Van_01_ext_black_CO.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa"}},
		{"Exile_Car_Van_White",			100, "White",		{"\A3\soft_f_gamma\van_01\Data\van_01_ext_CO.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa"}},
		{"Exile_Car_Van_Red",			100, "Red",			{"\A3\soft_f_gamma\van_01\Data\Van_01_ext_red_CO.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa"}},
		{"Exile_Car_Van_Guerilla01",	150, "Guerilla 01",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_01_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_01_CO.paa"}},
		{"Exile_Car_Van_Guerilla02",	150, "Guerilla 02",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_02_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_02_CO.paa"}},
		{"Exile_Car_Van_Guerilla03",	150, "Guerilla 03",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_03_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_03_CO.paa"}},
		{"Exile_Car_Van_Guerilla04",	150, "Guerilla 04",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_04_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_04_CO.paa"}},
		{"Exile_Car_Van_Guerilla05",	150, "Guerilla 05",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_05_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_05_CO.paa"}},
		{"Exile_Car_Van_Guerilla06",	150, "Guerilla 06",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_06_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_06_CO.paa"}},
		{"Exile_Car_Van_Guerilla07",	150, "Guerilla 07",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_07_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_07_CO.paa"}},
		{"Exile_Car_Van_Guerilla08",	150, "Guerilla 08",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_08_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_08_CO.paa"}},
		{"Exile_Car_Van_Black",	150, "Brown",	{"\A3\Soft_F_Exp\Van_01\Data\Van_01_ext_brn_co.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa","\A3\Soft_F_Exp\Van_01\Data\Van_01_int_base_2_CO.paa"}},
		{"Exile_Car_Van_Black",	150, "Olive",	{"\A3\Soft_F_Exp\Van_01\Data\Van_01_ext_oli_co.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa","\A3\Soft_F_Exp\Van_01\Data\Van_01_int_base_3_CO.paa"}}
	};
};
class Exile_Car_Van_Box_Abstract
{
	skins[] =
	{
		{"Exile_Car_Van_Box_Black",				100, "Black",		{"\A3\soft_f_gamma\van_01\Data\Van_01_ext_black_CO.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa"}},
		{"Exile_Car_Van_Box_White",				100, "White",		{"\A3\soft_f_gamma\van_01\Data\van_01_ext_CO.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa"}},
		{"Exile_Car_Van_Box_Red",				100, "Red",			{"\A3\soft_f_gamma\van_01\Data\Van_01_ext_red_CO.paa","\A3\soft_f_gamma\van_01\Data\van_01_adds_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla01",		150, "Guerilla 01",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_01_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_01_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla02",		150, "Guerilla 02",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_02_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_02_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla03",		150, "Guerilla 03",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_03_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_03_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla04",		150, "Guerilla 04",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_04_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_04_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla05",		150, "Guerilla 05",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_05_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_05_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla06",		150, "Guerilla 06",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_06_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_06_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla07",		150, "Guerilla 07",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_07_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_07_CO.paa"}},
		{"Exile_Car_Van_Box_Guerilla08",		150, "Guerilla 08",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_08_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_adds_IG_08_CO.paa"}}
	};
};
class Exile_Car_Van_Fuel_Abstract
{
	skins[] =
	{
		{"Exile_Car_Van_Fuel_Black",			100, "Black",		{"\A3\soft_f_gamma\van_01\Data\Van_01_ext_black_CO.paa","\A3\soft_f_gamma\Van_01\Data\Van_01_tank_CO.paa"}},
		{"Exile_Car_Van_Fuel_White",			100, "White",		{"\A3\soft_f_gamma\van_01\Data\van_01_ext_CO.paa","\A3\soft_f_gamma\Van_01\Data\Van_01_tank_CO.paa"}},
		{"Exile_Car_Van_Fuel_Red",				100, "Red",			{"\A3\soft_f_gamma\van_01\Data\Van_01_ext_red_CO.paa","\A3\soft_f_gamma\Van_01\Data\Van_01_tank_CO.paa"}},
		{"Exile_Car_Van_Fuel_Guerilla01",		150, "Guerilla 01",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_01_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_tank_IG_01_CO.paa"}},
		{"Exile_Car_Van_Fuel_Guerilla02",		150, "Guerilla 02",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_02_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_tank_IG_02_CO.paa"}},
		{"Exile_Car_Van_Fuel_Guerilla03",		150, "Guerilla 03",	{"\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_ext_IG_03_CO.paa","\A3\Soft_F_Bootcamp\Van_01\Data\Van_01_tank_IG_03_CO.paa"}}
	};
};
class Exile_Car_Tempest_Abstract
{
	skins[] =
	{
		{"Exile_Car_Tempest", 		200, "Green Hex",	{"\A3\Soft_F_Exp\Truck_03\Data\Truck_03_ext01_ghex_CO.paa","\A3\Soft_F_Exp\Truck_03\Data\Truck_03_ext02_ghex_CO.paa","\A3\Soft_F_Exp\Truck_03\Data\Truck_03_cargo_ghex_CO.paa"}}
	};
};
class Exile_Car_Ikarus_Abstract
{
	skins[] =
	{
		{"Exile_Car_Ikarus_Blue", 		200, "Blue",	{"Exile_psycho_Ikarus\Data\bus_exterior_co.paa"}},
		{"Exile_Car_Ikarus_Red", 		200, "Red",		{"Exile_psycho_Ikarus\Data\bus_exterior_eciv_co.paa"}},
		{"Exile_Car_Ikarus_Party", 		500, "Party",	{"Exile_psycho_Ikarus\Data\bus_exterior_eciv_co.paa"}}
	};
};
class Exile_Car_Ural_Open_Abstract
{
	skins[] =
	{
		{"Exile_Car_Ural_Open_Blue",			300, "Blue",		{"Exile_psycho_Ural\data\Ural_kabina_civil_co.paa","Exile_psycho_Ural\data\ural_plachta_civil_co.paa"}},
		{"Exile_Car_Ural_Open_Yellow",			300, "Yellow",		{"Exile_psycho_Ural\data\ural_kabina_civ1_co.paa","Exile_psycho_Ural\data\ural_plachta_civ1_co.paa"}},
		{"Exile_Car_Ural_Open_Worker",			300, "Worker",		{"Exile_psycho_Ural\data\ural_kabina_civ2_co.paa","Exile_psycho_Ural\data\Ural_plachta_civil_co.paa"}},
		{"Exile_Car_Ural_Open_Military",		300, "Military",	{"Exile_psycho_Ural\data\ural_kabina_khk_co.paa","Exile_psycho_Ural\data\ural_plachta_co.paa"}}
	};
};
class Exile_Car_Ural_Covered_Abstract
{
	skins[] =
	{
		{"Exile_Car_Ural_Covered_Blue",			300, "Blue",		{"Exile_psycho_Ural\data\ural_kabina_civil_co.paa","Exile_psycho_Ural\data\ural_plachta_civil_co.paa"}},
		{"Exile_Car_Ural_Covered_Yellow",		300, "Yellow",		{"Exile_psycho_Ural\data\ural_kabina_civ1_co.paa","Exile_psycho_Ural\data\ural_plachta_civ1_co.paa"}},
		{"Exile_Car_Ural_Covered_Worker",		300, "Worker",		{"Exile_psycho_Ural\data\ural_kabina_civ2_co.paa","Exile_psycho_Ural\data\Ural_plachta_civil_co.paa"}},
		{"Exile_Car_Ural_Covered_Military",		300, "Military",	{"Exile_psycho_Ural\data\ural_kabina_khk_co.paa","Exile_psycho_Ural\data\ural_plachta_co.paa"}}
	};
};
class Exile_Car_Lada_Abstract
{
	skins[] =
	{
		{"Exile_Car_Lada_Green", 		100, "Green",	{"exile_psycho_lada\data\lada_eciv1_co.paa","exile_psycho_lada\data\Lada_glass_ECIV1_CA.paa"}},
		{"Exile_Car_Lada_Taxi", 		100, "Taxi",	{"exile_psycho_lada\data\Lada_red_CO.paa"}},
		{"Exile_Car_Lada_Red", 			100, "Red",		{"exile_psycho_lada\data\Lada_red_CO.paa"}},
		{"Exile_Car_Lada_Hipster", 		100, "Hipster",	{"exile_psycho_lada\data\lada_eciv2_co.paa","exile_psycho_lada\data\Lada_glass_ECIV2_CA.paa"}}
	};
};
class Exile_Car_Volha_Abstract
{
	skins[] =
	{
		{"Exile_Car_Volha_Blue", 		100, "Blue",	{"Exile_psycho_Gaz_volha\data\Volha_ECIV_CO.paa"}},
		{"Exile_Car_Volha_White", 		100, "White",	{"Exile_psycho_Gaz_volha\data\Volha_Gray_ECIV_CO.paa"}},
		{"Exile_Car_Volha_Black",		100, "Black",	{"Exile_psycho_Gaz_volha\data\Volha_Black_ECIV_CO.paa"}}
	};
};
class Exile_Car_Hunter_Abstract
{
	skins[] =
	{
		{"Exile_Car_Hunter",		1000, "Exile White Edition",	{"exile_assets\texture\vehicle\Exile_Hunter_Snow_co.paa","exile_assets\texture\vehicle\Exile_Hunter_Snow_Back_co.paa"}},
		{"Exile_Car_Hunter",		1000, "Exile Hex",				{"exile_assets\texture\vehicle\Exile_Hunter_Hex_co.paa","exile_assets\texture\vehicle\Exile_Hunter_Black_Back_co.paa"}},
		{"Exile_Car_Hunter",		1000, "Exile Black",			{"exile_assets\texture\vehicle\Exile_Hunter_Black_co.paa","exile_assets\texture\vehicle\Exile_Hunter_Black_Back_co.paa"}}
	};
};
class Exile_Car_Ifrit_Abstract
{
	skins[] =
	{
		{"Exile_Car_Ifrit",		1000, "Green Hex",	{"\A3\Soft_F_Exp\MRAP_02\data\MRAP_02_ext_01_ghex_CO.paa","\A3\Soft_F_Exp\MRAP_02\data\MRAP_02_ext_02_ghex_CO.paa","\A3\Data_F_Exp\Vehicles\Turret_ghex_CO.paa"}}
	};
};
class Exile_Car_HMMWV_M2_Abstract
{
	skins[] =
	{
		{"Exile_Car_HMMWV_M2_Green",		1000, "Green",	{"Exile_psycho_hmmw\data\hmmwv_body_co.paa"}},
		{"Exile_Car_HMMWV_M2_Desert",		1000, "Desert",	{"Exile_psycho_hmmw\data\des\hmmwv_body_co.paa"}}
	};
};
class Exile_Car_HMMWV_M134_Abstract
{
	skins[] =
	{
		{"Exile_Car_HMMWV_M134_Green",		1000, "Green",	{"Exile_psycho_hmmw\data\hmmwv_body_co.paa"}},
		{"Exile_Car_HMMWV_M134_Desert",		1000, "Desert",	{"Exile_psycho_hmmw\data\des\hmmwv_body_co.paa"}}
	};
};
class Exile_Car_HMMWV_MEV_Abstract
{
	skins[] =
	{
		{"Exile_Car_HMMWV_MEV_Green",		1000, "Green",	{"Exile_psycho_hmmw\data\hmmwv_body_cm.paa"}},
		{"Exile_Car_HMMWV_MEV_Desert",		1000, "Desert",	{"Exile_psycho_hmmw\data\des\hmmwv_body_cm.paa"}}
	};
};
class Exile_Car_HMMWV_UNA_Abstract
{
	skins[] =
	{
		{"Exile_Car_HMMWV_UNA_Green",		1000, "Green",	{"Exile_psycho_hmmw\data\hmmwv_body_co.paa"}},
		{"Exile_Car_HMMWV_UNA_Desert",		1000, "Desert",	{"Exile_psycho_hmmw\data\des\hmmwv_body_co.paa"}}
	};
};
class Exile_Car_BTR40_MG_Abstract
{
	skins[] =
	{
		{"Exile_Car_BTR40_MG_Green",		1000, "Green",	{"exile_psycho_btr40\data\btr40ext_co.paa"}},
		{"Exile_Car_BTR40_MG_Camo",			1000, "Camo",	{"exile_psycho_btr40\data\btr40extcamo_co.paa"}}
	};
};
class Exile_Car_BTR40_Abstract
{
	skins[] =
	{
		{"Exile_Car_BTR40_Green",			1000, "Green",	{"exile_psycho_btr40\data\btr40ext_co.paa"}},
		{"Exile_Car_BTR40_Camo",			1000, "Camo",	{"exile_psycho_btr40\data\btr40extcamo_co.paa"}}
	};
};
class Exile_Car_Golf_Abstract
{
	skins[] =
	{
		{"Exile_Car_Golf_Red",				1000, "Red",	{"exile_psycho_VWGolf\data\vwgolf_body_co.paa"}},
		{"Exile_Car_Golf_Black",			1000, "Black",	{"exile_psycho_VWGolf\data\texture\black_co.paa"}}
	};
};
class Exile_Plane_AN2_Abstract
{
	skins[] =
	{
		{"Exile_Plane_AN2_Green", 700, "Green", {"Exile_psycho_An2\data\an2_1_co.paa","Exile_psycho_An2\data\an2_2_co.paa","Exile_psycho_An2\data\an2_wings_co.paa"}},
		{"Exile_Plane_AN2_White", 700, "Red, White & Blue", {"Exile_psycho_An2\data\an2_1_a_co.paa",
	"Exile_psycho_An2\data\an2_2_a_co.paa","Exile_psycho_An2\data\an2_wings_a_co.paa"}},
		{"Exile_Plane_AN2_Stripe", 700, "Green Stripe", {"Exile_psycho_An2\data\an2_1_b_co.paa","Exile_psycho_An2\data\an2_2_b_co.paa","Exile_psycho_An2\data\an2_wings_b_co.paa"}}
	};
};
class B_G_Boat_Transport_02_F
{
	skins[] =
	{
		{"Exile_Boat_RHIB",		150, "Blue", {"\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_civilian_CO.paa","\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_interior_2_civilian_CO.paa"}}
	};
};
class Exile_Boat_WaterScooter_Abstract
{
	skins[] =
	{
		{"Exile_Boat_WaterScooter",		150, "Blue", {"\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Blue_co.paa","\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Blue_co.paa"}},
		{"Exile_Boat_WaterScooter",		150, "Grey", {"\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Grey_co.paa","\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Grey_co.paa"}},
		{"Exile_Boat_WaterScooter",		150, "Lime", {"\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Lime_co.paa","\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Lime_co.paa"}},
		{"Exile_Boat_WaterScooter",		150, "Red", {"\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Red_CO.paa","\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"}},
		{"Exile_Boat_WaterScooter",		150, "White", {"\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_CO.paa","\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"}},
		{"Exile_Boat_WaterScooter",		150, "Yellow", {"\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Yellow_CO.paa","\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Yellow_CO.paa"}}
	};
};
class C_Plane_Civil_01_F
{
	skins[] =
	{
		{"Exile_Plane_Ceasar",		150, "Racing (Tan Interior)", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Racer_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Racer_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"}},
		{"Exile_Plane_Ceasar",		150, "Racing", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Racer_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Racer_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"}},
		{"Exile_Plane_Ceasar",		150, "Red Line (Tan Interior)", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"}},
		{"Exile_Plane_Ceasar",		150, "Tribal (Tan Interior)", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Tribal_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Tribal_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"}},
		{"Exile_Plane_Ceasar",		150, "Tribal", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Tribal_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Tribal_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"}},
		{"Exile_Plane_Ceasar",		150, "Blue Wave (Tan Interior)", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"}},
		{"Exile_Plane_Ceasar",		150, "Blue Wave", {"A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa","A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"}}
	};
};
class B_T_VTOL_01_infantry_F
{
	skins[] =
	{
		{"Exile_Plane_BlackfishInfantry",		150, "Blue", {"\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT01_blue_CO.paa","\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT02_blue_CO.paa","\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT03_blue_CO.paa","\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT04_blue_CO.paa"}}
	};
};
class B_T_VTOL_01_vehicle_F
{
	skins[] =
	{
		{"Exile_Plane_BlackfishVehicle",		150, "Blue", {"\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT01_blue_CO.paa","\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT02_blue_CO.paa","\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT03_blue_CO.paa","\A3\Air_F_Exp\VTOL_01\Data\VTOL_01_EXT04_blue_CO.paa"}}
	};
};
class B_CTRG_LSV_01_light_F
{
	skins[] =
	{
		{"Exile_Car_ProwlerLight",		150, "Black", {"\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_01_black_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_02_black_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_03_black_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_Adds_black_CO.paa"}},
		{"Exile_Car_ProwlerLight",		150, "Dazzle", {"\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_01_dazzle_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_02_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_03_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_Adds_olive_CO.paa"}},
		{"Exile_Car_ProwlerLight",		150, "Sand", {"\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_01_sand_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_02_sand_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_03_sand_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_Adds_sand_CO.paa"}}
	};
};
class B_T_LSV_01_unarmed_black_F
{
	skins[] =
	{
		{"Exile_Car_ProwlerUnarmed",		150, "Olive", {"\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_01_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_02_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_03_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_Adds_olive_CO.paa"}},
		{"Exile_Car_ProwlerUnarmed",		150, "Dazzle", {"\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_01_dazzle_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_02_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_03_olive_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_Adds_olive_CO.paa"}},
		{"Exile_Car_ProwlerUnarmed",		150, "Sand", {"\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_01_sand_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_02_sand_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_03_sand_CO.paa","\A3\Soft_F_Exp\LSV_01\Data\NATO_LSV_Adds_sand_CO.paa"}}
	};
};
class O_T_LSV_02_unarmed_black_F
{
	skins[] =
	{
		{"Exile_Car_QilinUnarmed",		150, "Arid", {"\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_arid_CO.paa","\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_arid_CO.paa","\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_arid_CO.paa"}},
		{"Exile_Car_QilinUnarmed",		150, "Green Hex", {"\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_ghex_CO.paa","\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_ghex_CO.paa","\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_ghex_CO.paa"}}
	};
};
class C_Offroad_02_unarmed_orange_F
{
	skins[] =
	{
		{"Exile_Car_MB4WD",		150, "Black", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_black_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_black_co.paa"}},
		{"Exile_Car_MB4WD",		150, "Blue", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_blue_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_blue_co.paa"}},
		{"Exile_Car_MB4WD",		150, "Brown", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_brown_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_brown_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_brown_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_brown_co.paa"}},
		{"Exile_Car_MB4WD",		150, "Green", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_green_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_green_co.paa"}},
		{"Exile_Car_MB4WD",		150, "Olive", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_olive_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_olive_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_olive_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_olive_co.paa"}},
		{"Exile_Car_MB4WD",		150, "Red", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_red_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_red_co.paa"}},
		{"Exile_Car_MB4WD",		150, "White", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_white_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_white_co.paa"}}
	};
};
class I_C_Offroad_02_unarmed_F
{
	skins[] =
	{
		{"Exile_Car_MB4WDOpen",		150, "Black", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_black_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_black_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "Blue", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_blue_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_blue_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "Brown", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_brown_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_brown_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_brown_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_brown_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "Green", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_green_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_green_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "Orange", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_orange_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_orange_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_orange_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_orange_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "Red", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_red_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_red_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "White", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_white_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_white_co.paa"}},
		{"Exile_Car_MB4WDOpen",		150, "Olive", {"\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_olive_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_olive_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_olive_co.paa","\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_int_olive_co.paa"}}
	};
};
};
class CfgVehicleTransport 
{
class Exile_Container_SupplyBox
{
	vehicles[] = {"Exile_Car_Van_Abstract", "Exile_Car_Offroad_Abstract", "Exile_Car_Zamak_Abstract", "Exile_Car_HEMMT_Abstract", "Exile_Car_Tempest_Abstract"};
	class Exile_Car_Van_Abstract
	{
		attachPosition[] = {0, -1.1, 0.2};
		cargoIndizes[] = {2, 3, 4, 5, 6, 7}; 
		detachPosition[] = {0, -4.4};
	};
	class Exile_Car_Offroad_Abstract
	{
		attachPosition[] = {0, -1.6, 0.4};
		cargoIndizes[] = {1, 2, 3, 4}; 
		detachPosition[] = {0, -4};
	};
	class Exile_Car_Zamak_Abstract
	{
		attachPosition[] = {0.03, 0.3, 0};
		cargoIndizes[] = {2, 3, 4, 5, 6, 7}; 
		detachPosition[] = {0.03, -4.8};
	};
	class Exile_Car_HEMMT_Abstract
	{
		attachPosition[] = {0.05, -0.1, 0.3};
		cargoIndizes[] = {1, 2, 8, 9}; 
		detachPosition[] = {0.05, -6.1};
	};
	class Exile_Car_Tempest_Abstract
	{
		attachPosition[] = {0.08, -0.85, 0.4};
		cargoIndizes[] = {1, 6, 7, 9}; 
		detachPosition[] = {0.08, -6};
	};
};
};