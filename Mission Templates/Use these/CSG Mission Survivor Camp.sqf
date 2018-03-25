/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 50 Vehicles
private _vehicles = [
["Land_PartyTent_01_F", [-0.0419531, -0.0575991, 7.33013], [0, 1, 0], [0, 0, 1], true],
["Land_TentA_F", [2.90226, 7.88332, 5.58269], [0.723598, -0.690222, 0], [0, 0, 1], true],
["Land_TentA_F", [-3.2734, 7.96437, 5.58269], [-0.674389, -0.738377, 0], [0, 0, 1], true],
["Land_TentA_F", [-3.22115, 14.1782, 5.58269], [-0.684069, 0.729417, 0], [0, 0, 1], true],
["Land_TentA_F", [3.03849, 14.1426, 5.58269], [0.709194, 0.705014, 0], [0, 0, 1], true],
["Land_TentA_F", [-0.256186, 15.3892, 5.58269], [0, 1, 0], [0, 0, 1], true],
["Land_TentA_F", [-0.253989, 7.11135, 5.58269], [-8.74228e-008, -1, 0], [0, 0, 1], true],
["Land_TentA_F", [4.18998, 11.063, 5.58269], [1, -4.37114e-008, 0], [0, 0, 1], true],
["Land_Campfire_burning", [-0.280234, 11.0952, 5.23526], [0, 1, 0], [0, 0, 1], true],
["Land_WoodPile_F", [-5.89022, 8.96193, 5.25993], [0, 1, 0], [0, 0, 1], true],
["Land_Sleeping_bag_brown_F", [-4.4742, 12.709, 5.02582], [-0.698759, 0.715357, 0], [0, 0, 1], true],
["Land_Sleeping_bag_blue_F", [-4.85104, 9.0757, 5.02582], [0.0344706, -0.999406, 0], [0, 0, 1], true],
["Land_LuggageHeap_04_F", [-3.31991, 3.84377, 5.50001], [0, 1, 0], [0, 0, 1], true],
["Land_LuggageHeap_02_F", [3.75565, 4.25441, 5.30635], [0, 1, 0], [0, 0, 1], true],
["Land_CampingTable_F", [3.30534, -4.09861, 5.40911], [0, 1, 0], [0, 0, 1], true],
["Land_CampingTable_F", [1.30265, -4.10887, 5.40911], [0, 1, 0], [0, 0, 1], true],
["Land_Wreck_CarDismantled_F", [-3.44637, -3.00145, 5.88439], [0, 1, 0], [0, 0, 1], true],
["Land_Sleeping_bag_blue_F", [2.13834, 3.44973, 5.02582], [0.146245, 0.989248, 0], [0, 0, 1], true],
["Land_Sleeping_bag_brown_F", [0.649331, 3.2798, 5.02582], [0, 1, 0], [0, 0, 1], true],
["Land_SleepingBag", [-0.739097, 3.35256, 5.03458], [0, 1, 0], [0, 0, 1], true],
["CUP_b_craet2", [6.85172, 7.34621, 7.60886], [0, 1, 0], [0, 0, 1], true],
["CUP_Krovi_bigest", [7.37211, 4.83303, 6.56003], [0, 1, 0], [0, 0, 1], true],
["CUP_ker_deravej", [6.94206, 10.0401, 5.75771], [0.978904, -0.204322, 0], [0, 0, 1], true],
["CUP_ker_deravej", [8.10709, 13.5659, 5.75771], [0.578739, 0.815513, 0], [0, 0, 1], true],
["CUP_ker_deravej", [5.2205, 5.90724, 5.75771], [0, 1, 0], [0, 0, 1], true],
["CUP_b_craet2", [8.70438, 11.3716, 7.60886], [0.997125, -0.0757802, 0], [0, 0, 1], true],
["CUP_b_craet2", [-12.9836, 7.60549, 7.60886], [0.474262, -0.880384, 0], [0, 0, 1], true],
["CUP_Krovi_bigest", [-14.8198, 5.96926, 6.56003], [0.474262, -0.880384, 0], [0, 0, 1], true],
["CUP_ker_deravej", [-12.9795, 1.88381, 5.75771], [-0.958713, -0.284375, 0], [0, 0, 1], true],
["CUP_ker_deravej", [-11.3252, -2.06785, 5.75771], [-0.122745, -0.992438, 0], [0, 0, 1], true],
["CUP_ker_deravej", [-13.2835, 4.8423, 5.75771], [0.474262, -0.880384, 0], [0, 0, 1], true],
["CUP_b_craet2", [-11.9738, -0.578595, 7.60886], [-0.913792, -0.406183, 0], [0, 0, 1], true],
["CUP_Krovi_bigest", [-9.46004, -3.25584, 6.56003], [0.474262, -0.880384, 0], [0, 0, 1], true],
["CUP_str_fikovnik", [-12.9178, 12.5801, 9.03433], [0.901691, 0.432381, 0], [0, 0, 1], true],
["CUP_str_fikovnik", [-4.09005, 18.189, 9.03433], [0.038323, -0.999265, 0], [0, 0, 1], true],
["CUP_t_PistaciaL2s_EP1", [5.98954, 14.8345, 8.31931], [0, 1, 0], [0, 0, 1], true],
["Land_GarbageBags_F", [-11.2153, 0.214862, 5.43364], [0, 1, 0], [0, 0, 1], true],
["Land_GarbageWashingMachine_F", [7.27848, 6.64943, 5.45164], [0, 1, 0], [0, 0, 1], true],
["Land_Sink_F", [4.32438, 1.68117, 5.61764], [0.999223, 0.0394132, 0], [0, 0, 1], true],
["Land_ToiletBox_F", [3.6403, -1.0742, 6.22006], [0.998029, -0.0627541, 0], [0, 0, 1], true],
["Land_Portable_generator_F", [-4.16549, 17.6753, 5.35918], [0, 1, 0], [0, 0, 1], true],
["Land_Portable_generator_F", [-0.265464, -4.10008, 5.35918], [0, 1, 0], [0, 0, 1], true],
["Land_PortableLight_single_F", [3.39555, 5.04738, 6.08381], [0.743647, -0.668573, 0], [0, 0, 1], true],
["Land_PortableLight_single_F", [5.76811, 14.479, 6.08381], [-0.839263, -0.543725, 0], [0, 0, 1], true],
["WireFence", [2.7404, 17.5098, 5.70711], [-0.475497, -0.879717, 0], [0, 0, 1], true],
["Land_WoodPile_F", [1.61405, 5.2383, 5.25993], [0.99992, 0.0126287, 0], [0, 0, 1], true],
["Land_ChairPlastic_F", [-4.73543, 18.2559, 5.4821], [0.308503, -0.951223, 0], [0, 0, 1], true],
["Land_ChairPlastic_F", [-5.087, 16.5498, 5.4821], [-0.9151, -0.403226, 0], [0, 0, 1], true],
["Land_TablePlastic_01_F", [-6.23812, 17.2661, 5.44354], [0.978075, -0.208251, 0], [0, 0, 1], true],
["CUP_ker_deravej", [-14.0328, 16.1787, 5.75771], [0.474262, -0.880384, 0], [0, 0, 1], true]
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