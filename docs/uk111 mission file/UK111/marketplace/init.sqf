if (!hasInterface || isServer) exitWith {};
private["_code","_traders","_trader","_signs","_sign"];
waitUntil {!isNil "MarXetLoaded"};

{
	_code = compileFinal (preprocessFileLineNumbers (_x select 1));
	missionNamespace setVariable [(_x select 0), _code];
} forEach [
	['ExileClient_MarXet_gui_load','UK111\marketplace\functions\ExileClient_MarXet_gui_load.sqf'],
	['ExileClient_MarXet_network_buyerBuyNowResponse','UK111\marketplace\functions\ExileClient_MarXet_network_buyerBuyNowResponse.sqf'],
	['ExileClient_MarXet_network_createNewListingResponse','UK111\marketplace\functions\ExileClient_MarXet_network_createNewListingResponse.sqf'],
	['ExileClient_MarXet_network_sellerBuyNowResponse','UK111\marketplace\functions\ExileClient_MarXet_network_sellerBuyNowResponse.sqf'],
	['ExileClient_MarXet_network_updateInventoryResponse','UK111\marketplace\functions\ExileClient_MarXet_network_updateInventoryResponse.sqf'],
	['ExileClient_MarXet_util_sortNumberString','UK111\marketplace\functions\ExileClient_MarXet_util_sortNumberString.sqf'],
	['ExileClient_MarXet_claimMoneyRequest','UK111\marketplace\functions\ExileClient_MarXet_claimMoneyRequest.sqf'],
	['ExileClient_MarXet_network_claimMoneyResponse','UK111\marketplace\functions\ExileClient_MarXet_network_claimMoneyResponse.sqf'],
	['ExileClient_MarXet_network_meanValueRespond','UK111\marketplace\functions\ExileClient_MarXet_network_meanValueRespond.sqf']
];
[5,{["updateInventoryRequest",[0]] call ExileClient_system_network_send}, [], false] call ExileClient_system_thread_addtask;

_traders = [];

["Exile_Trader_CommunityCustoms", ["c4coming2cDf_genericstani3"], "Exile_Trader_CommunityCustoms", "AfricanHead_03", [["srifle_GM6_ghex_F","","","optic_AMS_khk",["5Rnd_127x108_Mag",5],[],""],["launch_B_Titan_short_F","","","",[],[],""],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_B_FullGhillie_sard",[["5Rnd_127x108_Mag",2,5],["11Rnd_45ACP_Mag",3,11]]],["V_PlateCarrierSpec_mtp",[["5Rnd_127x108_Mag",1,5]]],[],"","G_Balaclava_blk",[],["","","","","",""]], [11559.8, 11935, 23.7454], [0.578128, -0.815946, 0], [0, 0, 1]],

_trader = [
	"Exile_Cutscene_Prisoner01",
	"",
	"GreekHead_A3_01",
	["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[11559.8,11935,0.00142479],
	164.597
] call ExileClient_object_trader_create;
_traders pushBack _trader;

_trader = [
	"Exile_Cutscene_Prisoner01",
	"",
	"GreekHead_A3_01",
	["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[2988.63,18152.7,0.381263],
	113.04
] call ExileClient_object_trader_create;
_traders pushBack _trader;

_trader = [
	"Exile_Cutscene_Prisoner01",
	"",
	"GreekHead_A3_01",
	["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[23333.5,24202.9,0.00140905],
	332.571
] call ExileClient_object_trader_create;
_traders pushBack _trader;

{
	_x forceAddUniform "U_BG_Guerilla2_1";
	_x addVest "Exile_Vest_Snow";
	_x addHeadgear "H_Watchcap_blk";
	_x addGoggles "G_Bandanna_aviator";
	_x addWeapon "srifle_DMR_04_F";
	_x addPrimaryWeaponItem "optic_LRPS";
	_x addWeapon "hgun_ACPC2_F";
	_x addAction ["<img image='\a3\ui_f\data\IGUI\Cfg\Actions\reammo_ca.paa' size='1' shadow='false' />Marketplace","createDialog 'RscMarXetDialog'","",1,false,true,"","((position player) distance _target) <= 4"];
	_x addAction ["<img image='UK111\StatsBar\Icons\Wallet.paa' size='1' shadow='false' />Claim Money","[] call ExileClient_MarXet_claimMoneyRequest","",1,false,true,"","((position player) distance _target) <= 4"];
} forEach _traders;
