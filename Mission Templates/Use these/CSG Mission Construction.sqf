/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 30 Vehicles
private _vehicles = [
["Land_Unfinished_Building_01_F", [2.19159, -4.2098, 7.48353], [0, 1, 0], [0, 0, 1], true],
["Land_Workbench_01_F", [-2.42254, -4.90414, 5.68175], [-0.999876, 0.0157331, 0], [0, 0, 1], true],
["Land_ConcretePipe_F", [1.63104, 16.9899, 6.30622], [-0.992183, 0.12479, 0], [0, 0, 1], true],
["Land_ConcretePipe_F", [-1.87604, 17.3722, 6.30622], [-0.876715, -0.48101, 0], [0, 0, 1], true],
["Land_ConcretePipe_F", [-5.61554, 17.152, 6.30622], [-0.963572, 0.267449, 0], [0, 0, 1], true],
["Land_Coil_F", [-17.3908, 0.705235, 6.07565], [0, 1, 0], [0, 0, 1], true],
["Land_Coil_F", [-18.6, 4.69254, 6.07565], [0, 1, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [-13.1823, 11.9225, 4.99216], [0, 1, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [-10.2241, 11.9035, 4.99216], [0, 1, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [-11.5809, 11.924, 4.99216], [0, 1, 0], [0, 0, 1], true],
["Land_Timbers_F", [8.25665, -3.04623, 5.50028], [-0.00849362, 0.999964, 0], [0, 0, 1], true],
["Land_WorkStand_F", [-0.452696, -8.50717, 5.00576], [0, 1, 0], [0, 0, 1], true],
["Land_FieldToilet_F", [5.53327, 16.5212, 6.22006], [-0.258071, 0.966126, 0], [0, 0, 1], true],
["Land_FieldToilet_F", [7.07257, 15.5641, 6.22006], [0.690517, 0.723316, 0], [0, 0, 1], true],
["Land_Pallets_stack_F", [8.49628, 13.6676, 5.42957], [0, 1, 0], [0, 0, 1], true],
["Land_MobileScafolding_01_F", [5.09528, -9.87484, 6.40234], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_BoardsPack1", [-3.88885, 13.0949, 6.00277], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_BoardsPack1", [-1.9339, 13.0031, 6.00277], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_BoardsPack1", [0.133607, 13.1701, 6.00277], [0, 1, 0], [0, 0, 1], true],
["Misc_palletsfoiled_heap", [-13.338, 0.330235, 6.10493], [0, 1, 0], [0, 0, 1], true],
["Land_Leseni2x", [-1.31402, 3.13443, 6.51057], [-8.74228e-008, -1, 0], [0, 0, 1], true],
["Land_Cargo40_blue_F", [-14.0065, 14.3327, 6.32831], [0, 1, 0], [0, 0, 1], true],
["Land_Cargo40_brick_red_F", [-14.2347, 17.341, 6.32831], [0, 1, 0], [0, 0, 1], true],
["Land_Cargo40_sand_F", [11.5062, 13.966, 6.32831], [-0.999971, -0.00755922, 0], [0, 0, 1], true],
["Land_Misc_Cargo1B", [-18.5474, -6.88621, 6.26788], [0, 1, 0], [0, 0, 1], true],
["Land_Misc_Cargo1B", [-15.3442, -7.01414, 6.26788], [0, 1, 0], [0, 0, 1], true],
["Land_Misc_Cargo1B", [-12.3384, -7.13181, 6.26788], [0, 1, 0], [0, 0, 1], true],
["Land_Scaffolding_ACR", [-4.68097, -6.19809, 7.23626], [0, 1, 0], [0, 0, 1], true],
["Land_Pallets_stack_F", [9.03913, 11.1095, 5.42957], [-0.30432, 0.95257, 0], [0, 0, 1], true],
["UralWreck", [4.24115, -14.0623, 6.18751], [-0.999855, -0.0170132, 0], [0, 0, 1], true]
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

// 0 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [

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