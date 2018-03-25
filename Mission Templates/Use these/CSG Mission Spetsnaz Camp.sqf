/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 22 Vehicles
private _vehicles = [
["CampEast", [0.102222, -12.3096, 6.35192], [0.999988, -0.00495233, 0], [0, 0, 1], true],
["CamoNet_BLUFOR_open_F", [-15.3486, -6.28759, 6.12267], [-0.999993, 0.00379992, 0], [0, 0, 1], true],
["Land_CampingTable_F", [-13.8602, -6.16942, 5.40911], [-0.999884, 0.0152019, 0], [0, 0, 1], true],
["Land_CampingChair_V2_F", [-13.0787, -6.63036, 5.50149], [0.615612, -0.78805, 0], [0, 0, 1], true],
["Land_CampingChair_V2_F", [-14.765, -5.47069, 5.50149], [-0.916365, 0.400343, 0], [0, 0, 1], true],
["Land_Campfire_burning", [-6.86958, -6.04638, 5.23526], [0, 1, 0], [0, 0, 1], true],
["Land_WoodenLog_F", [-8.69246, -7.22704, 5.26323], [0, 1, 0], [0, 0, 1], true],
["Land_WoodenLog_F", [-4.9366, -6.48388, 5.26323], [0, 1, 0], [0, 0, 1], true],
["Land_WoodenLog_F", [-8.2137, -4.03417, 5.26323], [0, 1, 0], [0, 0, 1], true],
["UralWreck", [-16.0357, 6.917, 6.18751], [-0.951432, -0.30786, 0], [0, 0, 1], true],
["Mi8Wreck", [-5.87007, -23.8877, 6.69794], [-0.898309, 0.42597, -0.10766], [0.114502, 0.463538, 0.878648], true],
["UAZWreck", [-23.278, -10.0581, 5.84602], [-0.269387, 0.963032, 0], [0, 0, 1], true],
["UAZWreck", [-23.4669, -4.19774, 5.84602], [0.343782, 0.93905, 0], [0, 0, 1], true],
["CampEast", [0.0955081, 0.0131937, 6.35192], [0.999988, -0.00495233, 0], [0, 0, 1], true],
["Land_GarbageWashingMachine_F", [-15.8687, 8.78907, 5.45164], [0, 1, 0], [0, 0, 1], true],
["Land_GarbagePallet_F", [-6.39924, -25.0225, 5.25631], [0, 1, 0], [0, 0, 1], true],
["Land_CampingTable_F", [1.68328, -12.314, 5.44154], [-0.999884, 0.0152019, 0], [0, 0, 1], true],
["Land_CampingChair_V2_F", [2.46477, -12.7749, 5.54149], [0.615612, -0.78805, 0], [0, 0, 1], true],
["Misc_Backpackheap", [-2.78718, -10.4062, 5.30186], [0, 1, 0], [0, 0, 1], true],
["CUP_hromada_beden_dekorativniX", [-2.72822, -14.584, 5.03503], [-0.013153, 0.999914, 0], [0, 0, 1], true],
["Axe_woodblock", [-4.06575, -4.5869, 5.35292], [-0.77383, -0.633393, 0], [0, 0, 1], true],
["Land_WoodPile_F", [-3.51008, -6.06103, 5.25993], [0, 1, 0], [0, 0, 1], true]
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

// 5 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f\civ\camping\tentdome_f.p3d", [-16.8499, -10.1665, 5.61925], [0.678781, -0.734341, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [-17.434, -6.29394, 5.61925], [-0.0271695, -0.999631, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [-16.991, -2.34179, 5.61925], [-0.632357, -0.774677, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [-12.7912, -11.8003, 5.61925], [0.999949, 0.0101011, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [-13.1536, -1.20751, 5.61925], [-0.999944, -0.010557, 0], [0, 0, 1]]
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