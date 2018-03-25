if (!hasInterface || isServer) exitWith {};
private ["_npcs", "_logic", "_traderAAC", "_animations", "_trader", "_carWreck", "_cashDesk", "_microwave", "_ketchup", "_mustard", "_workBench", "_chair"];

//AAC Trader
_npcs = [
	["Exile_Guard_03", [], "", "WhiteHead_11", [["arifle_TRG20_F","","acc_pointer_IR","optic_Holosight_khk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_556x45_Stanag",3,30]]],["V_TacVestIR_blk",[]],[],"H_Cap_oli_hs","G_Squares_Tinted",[],["","","","","",""]], [11647, 12015.9, 22.8733], [0.986008, 0.1667, 0], [0, 0, 1]],
	["Exile_Guard_03", [], "", "WhiteHead_18", [["arifle_TRG21_GL_F","","acc_pointer_IR","optic_Holosight_khk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_556x45_Stanag",3,30]]],["V_TacVestIR_blk",[]],[],"H_Watchcap_camo","G_Lowprofile",[],["","","","","",""]], [11656.9, 12010.8, 22.7727], [0.741954, 0.670451, 0], [0, 0, 1]],
	["Exile_Guard_03", [], "", "GreekHead_A3_09", [["arifle_TRG20_F","","acc_pointer_IR","optic_Holosight_khk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_556x45_Stanag",3,30]]],["V_TacVestIR_blk",[]],[],"H_Cap_oli_hs","G_Squares_Tinted",[],["","","","","",""]], [11716, 11916, 27.5031], [0.264546, 0.964373, 0], [0, 0, 1]],
	["Exile_Trader_SpecialOperations", ["InBaseMoves_SittingRifle2"], "Exile_Trader_SpecialOperations", "WhiteHead_18", [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","acc_pointer_IR","optic_Aco",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CTRG_Soldier_F",[["30Rnd_556x45_Stanag",3,30]]],["V_PlateCarrierH_CTRG",[]],["B_AssaultPack_rgr",[]],"H_HelmetB_Enh_tna_F","G_Balaclava_TI_G_tna_F",[],["","","","","","NVGogglesB_grn_F"]], [11547.6, 11903.7, 24.0605], [0.586826, 0.809713, 0], [0, 0, 1]],
	["Exile_Trader_VehicleCustoms", ["HubSittingChairUA_idle1"], "Exile_Trader_VehicleCustoms", "WhiteHead_03", [[],[],[],["U_BG_Guerilla2_3",[]],[],[],"H_Cap_oli","G_Tactical_Black",[],["","","","","",""]], [11613, 12021.5, 23.249], [-0.750769, -0.660565, 0], [0, 0, 1]],
	["Exile_Trader_Vehicle", ["HubBriefing_think"], "Exile_Trader_Vehicle", "GreekHead_A3_08", [[],[],[],["U_BG_Guerilla2_1",[]],[],[],"H_Hat_brown","G_Aviator",[],["","","","","",""]], [11609.2, 12030.2, 23.7632], [-0.622788, -0.782391, 0], [0, 0, 1]],
	["Exile_Trader_Aircraft", ["LHD_krajPaluby"], "Exile_Trader_Aircraft", "GreekHead_A3_09", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [11578, 11951.3, 23.9201], [0.923291, -0.384102, 0], [0, 0, 1]],
	["Exile_Trader_AircraftCustoms", ["Acts_CivilListening_2"], "Exile_Trader_AircraftCustoms", "WhiteHead_13", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [11585.1, 11964, 23.9176], [0.856546, -0.51607, 0], [0, 0, 1]],
	["Exile_Trader_Office", ["HubSittingAtTableU_idle2"], "Exile_Trader_Office", "WhiteHead_03", [[],[],[],["U_C_Man_casual_1_F",[]],[],[],"H_Hat_checker","",[],["","","","","",""]], [11654.3, 12004.2, 23.3792], [-0.702178, -0.712002, 0], [0, 0, 1]],
	["Exile_Trader_RussianRoulette", ["HubStandingUB_idle2"], "Exile_Trader_RussianRoulette", "WhiteHead_04", [[],[],["hgun_Pistol_Signal_F","","","",["6Rnd_GreenSignal_F",6],[],""],["U_Rangemaster",[]],["V_Rangemaster_belt",[["6Rnd_GreenSignal_F",3,6]]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [11661.6, 11989.1, 23.004], [-0.760757, 0.649036, 0], [0, 0, 1]],
	["Exile_Trader_WasteDump", ["HubStandingUC_move2"], "Exile_Trader_WasteDump", "WhiteHead_05", [[],[],[],["U_I_G_Story_Protagonist_F",[]],[],[],"H_Cap_oli","",[],["","","","","",""]], [11720.8, 11814.5, 22.6241], [-0.877205, 0.480116, 0], [0, 0, 1]],
	["Exile_Trader_Hardware", ["HubSittingChairUB_idle1"], "Exile_Trader_Hardware", "WhiteHead_04", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_FieldPack_cbr",[]],"H_Booniehat_oli","G_Sport_Blackred",[],["","","","","",""]], [11736.8, 11848.9, 23.2333], [0.846649, -0.532152, 0], [0, 0, 1]],
	["Exile_Trader_Food", ["HubStandingUA_move1"], "Exile_Trader_Food", "WhiteHead_14", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [11758.4, 11870.9, 22.9473], [-0.947913, 0.318529, 0], [0, 0, 1]],
	["Exile_Trader_Food", ["HubStandingUA_idle2"], "Exile_Trader_Food", "WhiteHead_20", [[],[],[],["U_C_Poloshirt_salmon",[]],[],[],"H_Cap_tan","G_Squares_Tinted",[],["","","","","",""]], [11752.6, 11862.1, 23.0233], [-0.829506, 0.558498, 0], [0, 0, 1]],
	["Exile_Trader_Armory", ["c4coming2cDf_genericstani2"], "Exile_Trader_Armory", "WhiteHead_04", [["arifle_AKM_F","","","",["30Rnd_762x39_Mag_F",30],[],""],[],["Colt1911","","","",["7Rnd_45ACP_1911",7],[],""],["U_I_C_Soldier_Para_3_F",[["30Rnd_762x39_Mag_F",3,30]]],["V_Rangemaster_belt",[["7Rnd_45ACP_1911",3,7]]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [11568.3, 11894.5, 23.189], [-0.0785982, 0.996906, 0], [0, 0, 1]],
	["Exile_Trader_Equipment", ["InBaseMoves_table1"], "Exile_Trader_Equipment", "WhiteHead_06", [[],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_C_Soldier_Para_2_F",[["11Rnd_45ACP_Mag",3,11]]],["V_PlateCarrierIAGL_oli",[]],["B_AssaultPack_rgr",[]],"H_HelmetB","G_Tactical_Black",[],["","","","","",""]], [11584.4, 11923.3, 23.6705], [-0.917303, -0.398189, 0], [0, 0, 1]],
	["Exile_Guard_01", ["UnaErcPoslechVelitele3"], "", "GreekHead_A3_09", [[],[],[],["U_Marshal",[]],[],[],"H_Beret_gen_F","G_Aviator",[],["","","","","",""]], [11638.1, 12014.1, 23.1909], [0.689025, 0.724737, 0], [0, 0, 1]],
	["Exile_Guard_03", [], "", "WhiteHead_17", [["arifle_TRG20_F","","acc_pointer_IR","optic_Holosight_khk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_556x45_Stanag",3,30]]],["V_TacVestIR_blk",[]],[],"H_Bandanna_khk_hs","G_Aviator",[],["","","","","",""]], [11581.5, 11936.3, 23.7162], [0.523216, 0.8522, 0], [0, 0, 1]],
	["Exile_Guard_03", [], "", "AfricanHead_01", [["arifle_TRG21_GL_F","","acc_pointer_IR","optic_Holosight_khk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_556x45_Stanag",3,30]]],["V_TacVestIR_blk",[]],[],"H_Cap_oli_hs","G_Shades_Black",[],["","","","","",""]], [11586.8, 11896.2, 23.1518], [0.86526, -0.501324, 0], [0, 0, 1]],
	["Exile_Guard_03", [], "", "WhiteHead_06", [["arifle_TRG20_F","","acc_pointer_IR","optic_Holosight_khk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["30Rnd_556x45_Stanag",3,30]]],["V_TacVestIR_blk",[]],[],"H_Watchcap_camo","",[],["","","","","",""]], [11592.4, 11905.1, 23.1401], [0.876199, -0.48195, 0], [0, 0, 1]],
	["Exile_Guard_03", [], "", "WhiteHead_21", [["srifle_SVD","","","optic_KHS_old",["10Rnd_762x54_SVD",10],[],""],[],[],["U_I_C_Soldier_Para_3_F",[["10Rnd_762x54_SVD",3,10]]],["V_TacChestrig_grn_F",[]],[],"H_Shemag_olive_hs","G_Lowprofile",[],["","","","","",""]], [11662.9, 11991.8, 40.9516], [0.0506627, 0.998716, 0], [0, 0, 1]],
	["Exile_Trader_Boat", ["InBaseMoves_table1"], "Exile_Trader_Boat", "WhiteHead_12", [[],[],[],["U_C_HunterBody_grn",[]],[],[],"H_Cap_tan","G_Spectacles",[],["","","","","",""]], [11931.4, 11780.1, 1.27426], [-0.722754, 0.691106, 0], [0, 0, 1]],
	["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1"], "Exile_Trader_BoatCustoms", "WhiteHead_11", [[],[],[],["U_C_HunterBody_grn",[]],[],[],"H_Booniehat_tan","G_Shades_Black",[],["","","","","",""]], [11925.5, 11798.1, 1.38509], [-0.65715, -0.753759, 0], [0, 0, 1]]
];

{
    _logic = "Logic" createVehicleLocal [0, 0, 0];
    _traderAAC = (_x select 0) createVehicleLocal [0, 0, 0];
    _animations = _x select 1;
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    _traderAAC setVariable ["BIS_enableRandomization", false];
    _traderAAC setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _traderAAC setVariable ["ExileAnimations", _animations];
    _traderAAC setVariable ["ExileTraderType", _x select 2];
    _traderAAC disableAI "ANIM";
    _traderAAC disableAI "MOVE";
    _traderAAC disableAI "FSM";
    _traderAAC disableAI "AUTOTARGET";
    _traderAAC disableAI "TARGET";
    _traderAAC disableAI "CHECKVISIBLE";
    _traderAAC allowDamage false;
    _traderAAC setFace (_x select 3);
    _traderAAC setUnitLoadOut (_x select 4);
    _traderAAC setPosWorld (_x select 5);
    _traderAAC setVectorDirAndUp [_x select 6, _x select 7];
    _traderAAC reveal _logic;
    _traderAAC attachTo [_logic, [0, 0, 0]];
    _traderAAC switchMove (_animations select 0);
    _traderAAC addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
} forEach _npcs;


///////////////////////////////////////////////////////////////////////////
// Western Guard 01
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_02",
    "",
    "WhiteHead_03",
    ["InBaseMoves_patrolling2"],
    [2950.52,18195.3,4.93399],
    179.092
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Boat Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Boat",
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [2914.35,18192.9,8.51858],
    88.3346
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Vehicle",
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [2980.19,18146.2,1.06391],
    222.352
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 130.966;    
_carWreck setPosATL [2978.76,18144.5,1.13293];

///////////////////////////////////////////////////////////////////////////
// Western Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_WasteDump",
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [2984.05,18133.4,0.00107765],
    29.3856
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Fast Food Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Food",
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [2979.87,18184.9,2.55185],
    89.2952
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Equipment Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Equipment",
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [2980.7,18192.9,2.49853],
    130.535
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Armory Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Armory",
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [2986.43,18178.5,1.66267],
    296.855
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Guard 02
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_03",
    "",
    "AfricanHead_03",
    ["InBaseMoves_patrolling1"],
    [2993.2,18167,0.353821],
    109.888
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Fast Food Trader
///////////////////////////////////////////////////////////////////////////
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 222.727;
_cashDesk setPosATL [23353.1, 24168, 0.16585];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;         
_microwave disableCollisionWith _cashDesk; 
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;         
_ketchup disableCollisionWith _cashDesk; 
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;         
_mustard disableCollisionWith _cashDesk; 
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

_trader = 
[
    "Exile_Trader_Food",
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Boat Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Boat",
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [23296.6,24189.8,5.61213],
    96
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Vehicle",
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [23385.6,24191.6,0.00136566],
    123
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 47.2728;    
_carWreck setPosATL [23387.3, 24190.3, 0.05];

///////////////////////////////////////////////////////////////////////////
// Eastern Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 279.545;
_workBench setPosATL [23371.6, 24188, 0.89873];

_trader = 
[
    "Exile_Trader_Hardware",
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Equipment Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_Equipment",
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [23379.9, 24169.3, 0.199955],
    206
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 12.7272;
_chair setPosATL [23379.6, 24169.3, 4.56662];

_trader = 
[
    "Exile_Trader_Armory",
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_WasteDump",
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [23336.6,24214.4,0.00115061],
    346
]
call ExileClient_object_trader_create;
