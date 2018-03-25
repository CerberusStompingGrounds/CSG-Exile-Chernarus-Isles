/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 30 Vehicles
private _vehicles = [
["Land_Unfinished_Building_01_F", [1832.01, 5335.75, 7.48353], [0, 1, 0], [0, 0, 1], true],
["Land_A_CraneCon", [1823.25, 5333.54, 23.2866], [0, 1, 0], [0, 0, 1], true],
["Land_Workbench_01_F", [1827.4, 5335.06, 5.68175], [-0.999876, 0.0157331, 0], [0, 0, 1], true],
["Land_ConcretePipe_F", [1831.45, 5356.95, 6.30622], [-0.992183, 0.12479, 0], [0, 0, 1], true],
["Land_ConcretePipe_F", [1827.94, 5357.34, 6.30622], [-0.876715, -0.48101, 0], [0, 0, 1], true],
["Land_ConcretePipe_F", [1824.21, 5357.12, 6.30622], [-0.963572, 0.267449, 0], [0, 0, 1], true],
["Land_Coil_F", [1812.43, 5340.67, 6.07565], [0, 1, 0], [0, 0, 1], true],
["Land_Coil_F", [1811.22, 5344.66, 6.07565], [0, 1, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [1816.64, 5351.89, 4.99215], [0, 1, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [1819.6, 5351.87, 4.99216], [0, 1, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [1818.24, 5351.89, 4.99216], [0, 1, 0], [0, 0, 1], true],
["Land_Timbers_F", [1838.08, 5336.92, 5.50028], [-0.00849362, 0.999964, 0], [0, 0, 1], true],
["Land_WorkStand_F", [1829.37, 5331.46, 5.00576], [0, 1, 0], [0, 0, 1], true],
["Land_FieldToilet_F", [1835.35, 5356.49, 6.22006], [-0.258071, 0.966126, 0], [0, 0, 1], true],
["Land_FieldToilet_F", [1836.89, 5355.53, 6.22006], [0.690517, 0.723316, 0], [0, 0, 1], true],
["Land_Pallets_stack_F", [1838.32, 5353.63, 5.42957], [0, 1, 0], [0, 0, 1], true],
["Land_MobileScafolding_01_F", [1834.92, 5330.09, 6.40234], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_BoardsPack1", [1825.93, 5353.06, 6.00277], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_BoardsPack1", [1827.89, 5352.97, 6.00277], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_BoardsPack1", [1829.95, 5353.13, 6.00277], [0, 1, 0], [0, 0, 1], true],
["Misc_palletsfoiled_heap", [1816.48, 5340.29, 6.10493], [0, 1, 0], [0, 0, 1], true],
["Land_Leseni2x", [1828.51, 5343.1, 6.51057], [-8.74228e-008, -1, 0], [0, 0, 1], true],
["Land_Cargo40_blue_F", [1815.81, 5354.3, 6.32831], [0, 1, 0], [0, 0, 1], true],
["Land_Cargo40_brick_red_F", [1815.59, 5357.31, 6.32831], [0, 1, 0], [0, 0, 1], true],
["Land_Cargo40_sand_F", [1841.33, 5353.93, 6.32831], [-0.999971, -0.00755922, 0], [0, 0, 1], true],
["Land_Misc_Cargo1B", [1811.27, 5325.86, 6.26788], [0, 1, 0], [0, 0, 1], true],
["Land_Misc_Cargo1B", [1814.48, 5325.73, 6.26788], [0, 1, 0], [0, 0, 1], true],
["Land_Misc_Cargo1B", [1817.48, 5325.61, 6.26788], [0, 1, 0], [0, 0, 1], true],
["Land_Scaffolding_ACR", [1825.14, 5333.77, 7.23626], [0, 1, 0], [0, 0, 1], true],
["Land_Pallets_stack_F", [1838.86, 5351.07, 5.42957], [-0.30432, 0.95257, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 1 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["ca\misc\ural_wrecked.p3d", [1834.06, 5325.9, 6.18751], [-0.999855, -0.0170161, 0], [0, 0, 1]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;