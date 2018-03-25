/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 11 Vehicles
private _vehicles = [
["CampEast", [1835.98, 5338.9, 6.35192], [0.999988, -0.00495233, 0], [0, 0, 1], true],
["CamoNet_BLUFOR_open_F", [1820.53, 5344.93, 6.12267], [-0.999993, 0.00379992, 0], [0, 0, 1], true],
["Land_CampingTable_F", [1822.02, 5345.04, 5.4065], [-0.999884, 0.0152019, 0], [0, 0, 1], false],
["Land_CampingChair_V2_F", [1822.8, 5344.58, 5.50645], [0.615612, -0.78805, 0], [0, 0, 1], false],
["Land_CampingChair_V2_F", [1821.12, 5345.74, 5.50645], [-0.916365, 0.400343, 0], [0, 0, 1], false],
["Land_Campfire_burning", [1829.01, 5345.17, 5.23526], [0, 1, 0], [0, 0, 1], true],
["CampEast", [1835.98, 5351.23, 6.35192], [0.999988, -0.00495233, 0], [0, 0, 1], true],
["Land_GarbageWashingMachine_F", [1820.01, 5360, 5.45164], [0, 1, 0], [0, 0, 1], true],
["Land_GarbagePallet_F", [1829.48, 5326.19, 5.25631], [0, 1, 0], [0, 0, 1], true],
["Land_CampingTable_F", [1837.57, 5338.9, 5.4465], [-0.999884, 0.0152019, 0], [0, 0, 1], false],
["Land_CampingChair_V2_F", [1838.35, 5338.44, 5.54645], [0.615612, -0.78805, 0], [0, 0, 1], false]
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

// 16 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f\civ\camping\tentdome_f.p3d", [1819.03, 5341.05, 5.61925], [0.678781, -0.734341, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [1818.45, 5344.92, 5.61925], [-0.0271695, -0.999631, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [1818.89, 5348.87, 5.61925], [-0.632357, -0.774677, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [1823.09, 5339.41, 5.61925], [0.999949, 0.0101011, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\tentdome_f.p3d", [1822.73, 5350.01, 5.61925], [-0.999944, -0.010557, 0], [0, 0, 1]],
["a3\structures_f_epa\civ\camping\woodenlog_f.p3d", [1827.19, 5343.99, 5.26323], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\civ\camping\woodenlog_f.p3d", [1830.95, 5344.73, 5.26322], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\civ\camping\woodenlog_f.p3d", [1827.67, 5347.18, 5.26323], [0, 1, 0], [0, 0, 1]],
["ca\misc\ural_wrecked.p3d", [1819.85, 5358.13, 6.18751], [-0.951432, -0.30786, 0], [0, 0, 1]],
["ca\misc\mi8_crashed.p3d", [1830.01, 5327.33, 6.69794], [-0.904256, 0.426991, 0], [0, 0, 1]],
["ca\misc\uaz_wrecked.p3d", [1812.6, 5341.16, 5.84602], [-0.269387, 0.963032, 0], [0, 0, 1]],
["ca\misc\uaz_wrecked.p3d", [1812.42, 5347.02, 5.84602], [0.343782, 0.93905, 0], [0, 0, 1]],
["ca\misc\misc_backpackheap.p3d", [1833.09, 5340.81, 5.30683], [0, 1, 0], [0, 0, 1]],
["ca\buildings\furniture\hromada_beden_dekorativnix.p3d", [1833.15, 5336.63, 5.04], [-0.0131592, 0.999913, 0], [0, 0, 1]],
["ca\misc\sekyraspalek.p3d", [1831.82, 5346.63, 5.35292], [-0.77383, -0.633393, 0], [0, 0, 1]],
["a3\structures_f\civ\accessories\woodpile_f.p3d", [1832.37, 5345.15, 5.25993], [0, 1, 0], [0, 0, 1]]
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