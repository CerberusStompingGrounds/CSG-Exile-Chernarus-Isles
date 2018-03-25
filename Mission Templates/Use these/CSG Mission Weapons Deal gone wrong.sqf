/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 3 Vehicles
private _vehicles = [
["Land_Wreck_Ural_F", [7.30089, -2.18457, 6.18764], [0, 1, 0], [0, 0, 1], true],
["Land_Wreck_Truck_dropside_F", [-4.10828, 7.21436, 6.17405], [0.838411, -0.545038, 0], [0, 0, 1], true],
["B_Slingload_01_Ammo_F", [0.53881, -7.08447, 6.36216], [0.99999, -0.00438073, 0], [0, 0, 1], true]
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

// 9 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["ca\buildings\furniture\hromada_beden_dekorativnix.p3d", [5.95104, 2.55713, 5.00013], [0, 1, 0], [0, 0, 1]],
["ca\buildings\furniture\hromada_beden_dekorativnix.p3d", [4.31615, 1.0874, 5.00013], [0.999736, 0.0229734, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [-1.57508, 4.47021, 5.10549], [0.913423, 0.407013, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [-2.54896, 4.19287, 5.10547], [-0.734787, -0.678298, 0], [0, 0, 1]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [-2.18397, 3.70215, 5.10549], [-0.0419533, -0.99912, 0], [0, 0, 1]],
["ca\weapons\ammoboxes\usspecialweapons.p3d", [1.55212, -5.07813, 6.36037], [-0.263004, 0.964795, 0], [0, 0, 1]],
["ca\weapons\ammoboxes\usspecialweapons.p3d", [0.18029, -5.27734, 6.36037], [0, 1, 0], [0, 0, 1]],
["ca\buildings\furniture\ammobednax.p3d", [-1.48121, -5.40332, 5.00013], [0, 1, 0], [0, 0, 1]],
["ca\weapons\ammoboxes\usbasicweapons.p3d", [3.22375, -5.03955, 6.29152], [0, 1, 0], [0, 0, 1]]
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