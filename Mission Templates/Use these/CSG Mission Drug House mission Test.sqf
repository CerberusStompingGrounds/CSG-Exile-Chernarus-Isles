/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 15 Vehicles
private _vehicles = [
["Land_u_House_Big_01_V1_F", [8.2702, 6.22096, 8.06637], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [-0.00275612, 4.63795, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [0.252127, 10.636, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [-4.71174, 7.35572, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [-4.4134, 12.9646, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [-2.32795, 16.5154, 6.40923], [0.00326147, -0.999995, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1.90496, 15.9031, 6.40923], [-0.262963, -0.964806, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [6.39861, 16.5476, 6.40923], [-0.999985, 0.00547074, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [11.0007, 16.5525, 6.40923], [-0.994336, -0.106284, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [-10.2381, 1.36109, 8.31931], [0.936538, 0.350567, 0], [0, 0, 1], true],
["CUP_les_dub", [-10.7474, 18.0623, 14.2523], [-0.799018, 0.601307, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [3.88982, 19.7073, 8.31931], [0.924908, 0.380192, 0], [0, 0, 1], true],
["Land_Shed_W02", [-0.214182, -7.58861, 5.00292], [0.999907, 0.0136627, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [3.56267, -7.46264, 8.31931], [0.918956, -0.39436, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [-4.96125, 1.41529, 6.40923], [-0.0167971, -0.999859, 0], [0, 0, 1], true]
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

// 2 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["ca\misc\ural_wrecked.p3d", [-7.68733, -7.59691, 6.18751], [0.999902, 0.013981, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbagebags_f.p3d", [-8.055, -6.48705, 5.43364], [0, 1, 0], [0, 0, 1]]
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