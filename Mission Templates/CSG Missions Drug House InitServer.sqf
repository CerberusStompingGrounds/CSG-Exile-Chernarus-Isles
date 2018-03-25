/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 15 Vehicles
private _vehicles = [
["Land_u_House_Big_01_V1_F", [1864.87, 5307.59, 8.06637], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1856.6, 5306.01, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1856.85, 5312, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1851.89, 5308.72, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1852.19, 5314.33, 6.40923], [0, 1, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1854.27, 5317.88, 6.40923], [0.00326147, -0.999995, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1858.51, 5317.27, 6.40923], [-0.262963, -0.964806, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1863, 5317.92, 6.40923], [-0.999985, 0.00547074, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1867.6, 5317.92, 6.40923], [-0.994336, -0.106284, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [1846.36, 5302.73, 8.31931], [0.936538, 0.350567, 0], [0, 0, 1], true],
["CUP_les_dub", [1845.85, 5319.43, 14.2523], [-0.799018, 0.601307, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [1860.49, 5321.08, 8.31931], [0.924908, 0.380192, 0], [0, 0, 1], true],
["Land_Shed_W02", [1856.39, 5293.78, 4.70002], [0.999907, 0.0136627, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [1860.16, 5293.91, 8.31931], [0.918956, -0.39436, 0], [0, 0, 1], true],
["CUP_p_fiberPlant_EP1", [1851.64, 5302.78, 6.40923], [-0.0167971, -0.999859, 0], [0, 0, 1], true]
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
["ca\misc\ural_wrecked.p3d", [1848.91, 5293.77, 6.18751], [0.999902, 0.013981, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbagebags_f.p3d", [1848.55, 5294.88, 5.43364], [0, 1, 0], [0, 0, 1]]
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