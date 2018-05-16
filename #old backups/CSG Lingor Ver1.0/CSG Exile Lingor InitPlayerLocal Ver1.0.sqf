/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 43 NPCs
private _npcs = [
["Exile_Trader_BoatCustoms", ["HubBriefing_loop"], "Exile_Trader_BoatCustoms", "WhiteHead_18", [[],[],[],["U_I_G_resistanceLeader_F",[]],[],[],"H_Booniehat_khk","G_Sport_Checkered",[],["","","","","",""]], [1257.65, 3827.73, 2.30035], [-0.996379, -0.0850174, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubSittingChairB_idle1"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_BG_Guerilla3_1",[]],[],[],"H_Cap_blk","G_Sport_Blackred",[],["","","","","",""]], [1258.99, 3837.86, 1.81223], [-0.998379, -0.0569145, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubBriefing_loop"], "Exile_Trader_BoatCustoms", "WhiteHead_20", [[],[],[],["U_I_G_resistanceLeader_F",[]],[],[],"H_Booniehat_khk","G_Sport_Checkered",[],["","","","","",""]], [7066.21, 1183.52, 2.17995], [-0.269454, -0.963013, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubSittingChairB_idle1"], "Exile_Trader_Boat", "WhiteHead_10", [[],[],[],["U_BG_Guerilla3_1",[]],[],[],"H_Cap_blk","G_Sport_Blackred",[],["","","","","",""]], [7057.19, 1188.32, 1.69183], [-0.296476, -0.95504, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubBriefing_loop"], "Exile_Trader_BoatCustoms", "GreekHead_A3_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],[],[],"H_Booniehat_khk","G_Sport_Checkered",[],["","","","","",""]], [5292.27, 7745.71, 1.36471], [0.901939, 0.431863, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubSittingChairB_idle1"], "Exile_Trader_Boat", "WhiteHead_16", [[],[],[],["U_BG_Guerilla3_1",[]],[],[],"H_Cap_blk","G_Sport_Blackred",[],["","","","","",""]], [5294.6, 7735.76, 0.876594], [0.913747, 0.406283, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_03", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [3083.57, 8027.77, -20.2643], [-0.749439, 0.662074, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_21", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_orange",[],["","","","","",""]], [3068.34, 8028.97, -20.2243], [0.173732, 0.984793, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_13", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [3087.49, 8046.63, -20.1643], [-1, 1.19249e-008, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_18", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [3045.25, 8027.45, -20.1124], [-1, 1.19249e-008, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_19", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [3076.56, 8044.71, -20.2643], [0.178733, 0.983898, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", [], "Exile_Trader_RussianRoulette", "WhiteHead_11", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [3036.57, 8074.88, -20.2643], [-1, 1.19249e-008, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_02", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [3052.5, 8032.77, -20.2643], [0.723151, 0.69069, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "GreekHead_A3_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","rhs_googles_orange",[],["","","","","",""]], [3029.36, 8027.99, -20.2643], [0.170166, 0.985415, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_04", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [3038.01, 8026.08, -20.2643], [0.180711, 0.983536, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_21", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [3046.69, 8039.24, -20.2643], [-0.0161329, 0.99987, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "AfricanHead_02", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [9363.75, 4362.39, 61.6542], [-0.00102455, 0.999999, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_19", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [9369.69, 4359.85, 61.6542], [0.251825, 0.967773, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_08", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [9426.77, 4387.03, 61.6114], [-0.205638, -0.978628, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_10", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","rhs_googles_yellow",[],["","","","","",""]], [9395.95, 4344.59, 62.3248], [0.000148535, 1, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_05", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [9381.84, 4350.01, 61.6017], [0.280143, 0.959958, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_10", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [9407.39, 4341.22, 62.3262], [-0.0174278, 0.999848, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "GreekHead_A3_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Aviator",[],["","","","","",""]], [9428.81, 4364.09, 62.2206], [-0.96463, 0.263607, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_14", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_yellow",[],["","","","","",""]], [9427.65, 4360.13, 62.2206], [-0.96463, 0.263607, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_20", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","rhs_googles_orange",[],["","","","","",""]], [9404.46, 4348.24, 62.2903], [-0.20629, -0.978491, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_15", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [2421.52, 1611.82, 33.525], [0.971469, 0.237168, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "GreekHead_A3_05", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_yellow",[],["","","","","",""]], [2421.31, 1603.58, 33.4914], [0.99984, -0.0179054, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_08", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [2459.32, 1602.68, 33.5065], [-0.991346, -0.131279, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_07", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [2421.63, 1621.91, 33.8138], [0.998416, 0.0562705, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "GreekHead_A3_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","rhs_googles_orange",[],["","","","","",""]], [2469.85, 1619.07, 32.163], [-0.59236, 0.805674, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_11", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [2421.71, 1593.69, 33.4914], [0.991179, 0.132533, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [2461.08, 1594.41, 33.769], [-0.761716, -0.647911, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [2461.24, 1587.9, 33.769], [-0.998766, 0.049667, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_13", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [2442.5, 1583.45, 33.4911], [0.039287, 0.999228, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_12", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [6661.02, 6858.04, 12.2722], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_11", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","rhs_googles_yellow",[],["","","","","",""]], [6654.86, 6857.91, 12.2722], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","rhs_googles_orange",[],["","","","","",""]], [4463.71, 1572.76, 23.6414], [-1, 1.19249e-008, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_12", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [4463.83, 1566.6, 23.6414], [-1, 1.19249e-008, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms2", [], "Exile_Trader_CommunityCustoms2", "WhiteHead_20", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [8354.69, 8734.71, 12.805], [-0.994029, 0.109117, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms4", [], "Exile_Trader_CommunityCustoms4", "WhiteHead_21", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_orange",[],["","","","","",""]], [8356.01, 8737.46, 12.805], [-0.994029, 0.109117, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms6", [], "Exile_Trader_CommunityCustoms6", "GreekHead_A3_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_yellow",[],["","","","","",""]], [8352.62, 8730.92, 12.7614], [-0.100087, -0.994979, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms8", [], "Exile_Trader_CommunityCustoms8", "WhiteHead_20", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [8343.7, 8735.28, 12.7614], [-0.100087, -0.994979, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [8340.77, 8736.76, 12.7614], [-0.100087, -0.994979, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;