/*
	File: billCSG\boards.sqf
	Author: Trill
*/
diag_log format['Starting billCSG\boards.sqf',time];
//Stary Trader
_pos = [6267.34, 7829.13, -0.49295];
_object = createVehicle ["Exile_Sign_TraderCity", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 69.7669;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\starytrader.paa"];
_object allowDamage false;

_pos = [6338.3, 7796.67, 0];
_object = createVehicle ["Exile_Sign_Hardware", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 31.7151;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\hardware.paa"];
_object allowDamage false;

_pos = [6281.58, 7805.62, 0];
_object = createVehicle ["Exile_Sign_VehicleCustoms", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 211.526;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\vehiclecustoms.paa"];
_object allowDamage false;

_pos = [6286.32, 7802.68, 0];
_object = createVehicle ["Exile_Sign_Vehicles", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 211.526;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\vehicle.paa"];
_object allowDamage false;

_pos = [6302.7, 7823.35, 0];
_object = createVehicle ["Exile_Sign_WasteDump", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 33.7607;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\wastedump.paa"];
_object allowDamage false;

_pos = [6300.92, 7792.26, 0.504059];
_object = createVehicle ["Exile_Sign_Locker", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.936;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\lockers.paa"];
_object allowDamage false;

_pos = [6303.38, 7790.87, 0];
_object = createVehicle ["Exile_Sign_Food", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 216.432;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\food.paa"];
_object allowDamage false;

_pos = [6322.7, 7786.3, 0];
_object = createVehicle ["Exile_Sign_Armory", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 216.432;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\armory.paa"];
_object allowDamage false;

_pos = [6309.81,7786.4, 0];
_object = createVehicle ["Exile_Sign_Equipment", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.443;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\equipment.paa"];
_object allowDamage false;

_pos = [6334.12, 7776.75, 0.0534363];
_object = createVehicle ["Exile_Sign_Office", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 214.33;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\office.paa"];
_object allowDamage false;

_pos = [6326.06, 7784.06, 0.0534363];
_object = createVehicle ["Exile_Sign_SpecialOperations", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 214.33;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\specops.paa"];
_object allowDamage false;

_pos = [6314.79,7784.67, 0];
_object = createVehicle ["Exile_Sign_SpecialOperations", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 123.433;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\playermarket.paa"];
_object allowDamage false;

//Klen Trader
_pos = [11446.2, 11370.8, 0];
_object = createVehicle ["Exile_Sign_TraderCity", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 104.929;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\klentrader.paa"];
_object allowDamage false;

_pos = [11492.9, 11343.1, 0];
_object = createVehicle ["Exile_Sign_Hardware", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 31.6042;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\hardware.paa"];
_object allowDamage false;

_pos = [11458.2, 11364.9, 0];
_object = createVehicle ["Exile_Sign_WasteDump", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 32.811;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\wastedump.paa"];
_object allowDamage false;

_pos = [11443.1, 11350.9, 0];
_object = createVehicle ["Exile_Sign_Vehicles", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 303.616;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\vehicle.paa"];
_object allowDamage false;

_pos = [11444, 11341.7, 0];
_object = createVehicle ["Exile_Sign_VehicleCustoms", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.916;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\vehiclecustoms.paa"];
_object allowDamage false;

_pos = [11453.7, 11332.7, -0.706543];
_object = createVehicle ["Exile_Sign_RussianRoulette", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 304.311;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\russianroulette.paa"];
_object allowDamage false;

_pos = [11454.5, 11323.9, 0.437714];
_object = createVehicle ["Exile_Sign_Locker", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.916;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\lockers.paa"];
_object allowDamage false;

_pos = [11457.3, 11322, 0.822601];
_object = createVehicle ["Exile_Sign_SpecialOperations_Small", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.916;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\specops.paa"];
_object allowDamage false;

_pos = [11459.4, 11320.5, 3.4921];
_object = createVehicle ["Exile_Sign_Office_Small", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.916;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\office.paa"];
_object allowDamage false;

_pos = [11474.3, 11309.7, 1.07782];
_object = createVehicle ["Exile_Sign_Armory", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 117.657;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\armory.paa"];
_object allowDamage false;

_pos = [11486, 11310.3, 1.07782];
_object = createVehicle ["Exile_Sign_Equipment", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 73.6446;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\equipment.paa"];
_object allowDamage false;

_pos = [11493.3, 11318, 1.07782];
_object = createVehicle ["Exile_Sign_Food", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 38.6464;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\food.paa"];
_object allowDamage false;

_pos = [11455.2, 11323.3, 3.4921];
_object = createVehicle ["Exile_Sign_SpecialOperations_Small", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 213.916;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\playermarket.paa"];
_object allowDamage false;

//Zeleno Trader
_pos = [2582.2, 5053.8, 0];
_object = createVehicle ["Exile_Sign_TraderCity", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 328.621;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\zeleno.paa"];
_object allowDamage false;

_pos = [2524.8, 5106.23, 0.544952];
_object = createVehicle ["Exile_Sign_Hardware", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 329.603;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\hardware.paa"];
_object allowDamage false;

_pos = [2582, 5112.97, 0];
_object = createVehicle ["Exile_Sign_Vehicles", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 52.7575;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\vehicle.paa"];
_object allowDamage false;

_pos = [2578.33, 5117.57, 0];
_object = createVehicle ["Exile_Sign_VehicleCustoms", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 52.7575;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\vehiclecustoms.paa"];
_object allowDamage false;

_pos = [2564.58, 5092.59, -1.33];
_object = createVehicle ["Exile_Sign_WasteDump", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 109.701;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\wastedump.paa"];
_object allowDamage false;

_pos = [2518.84, 5100.03, 0.963943];
_object = createVehicle ["Exile_Sign_Locker", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 329.055;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\lockers.paa"];
_object allowDamage false;

_pos = [2505.33, 5099.08, 0.199];
_object = createVehicle ["Exile_Sign_Equipment", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 329.055;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\equipment.paa"];
_object allowDamage false;

_pos = [2512.02, 5103.28, 0.199];
_object = createVehicle ["Exile_Sign_Armory", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 329.055;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\armory.paa"];
_object allowDamage false;

_pos = [2477.86, 5079.12, 0.57];
_object = createVehicle ["Exile_Sign_Office", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 240;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\office.paa"];
_object allowDamage false;

_pos = [2481.25, 5065.08, 0.8];
_object = createVehicle ["Exile_Sign_SpecialOperations", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 240;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\specops.paa"];
_object allowDamage false;

_pos = [2485.21, 5058.4, 1];
_object = createVehicle ["Exile_Sign_Food", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 240;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\food.paa"];
_object allowDamage false;

_pos = [2495.61,5093.13, 0.5789];
_object = createVehicle ["Exile_Sign_SpecialOperations", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\playermarket.paa"];
_object allowDamage false;

//Blackmarket
_pos = [12580.6, 1644.29, -0.558151];
_object = createVehicle ["Exile_Sign_TraderCity", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 148.437;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmtrader.paa"];
_object allowDamage false;

_pos = [12544.6, 1559.25, 0];
_object = createVehicle ["Exile_Sign_Vehicles", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 358.248;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmvehicle.paa"];
_object allowDamage false;

_pos = [12551.8, 1587.85, 0];
_object = createVehicle ["Exile_Sign_Vehicles", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 11.0242;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmvehicle.paa"];
_object allowDamage false;

_pos = [12528.6, 1542.13, 0.331747];
_object = createVehicle ["Exile_Sign_Armory_Small", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmarmory.paa"];
_object allowDamage false;

_pos = [12522.7, 1532.81, 0.62904];
_object = createVehicle ["Exile_Sign_Armory", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmarmory.paa"];
_object allowDamage false;

_pos = [12528.6, 1542.05, 4.5935];
_object = createVehicle ["Exile_Sign_Equipment_Small", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmequipment.paa"];
_object allowDamage false;

_pos = [12531.4, 1537.81, 0.631151];
_object = createVehicle ["Exile_Sign_Equipment", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmequipment.paa"];
_object allowDamage false;

_pos = [12517.3, 1542.54, 5.16449];
_object = createVehicle ["Exile_Sign_Equipment", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmequipment.paa"];
_object allowDamage false;

_pos = [12433.8, 1554.64, 0.0807457];
_object = createVehicle ["Exile_Sign_Aircraft", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 333.275;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmaircraft.paa"];
_object allowDamage false;

_pos = [12439.3, 1564.13, 0.0807457];
_object = createVehicle ["Exile_Sign_Aircraft", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 333.048;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\bmaircraftcustoms.paa"];
_object allowDamage false;

//South boat dealer
_pos = [6708.53, 2234.84, 3.2];
_object = createVehicle ["Exile_Sign_Boat", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 162.422;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\boat.paa"];
_object allowDamage false;

_pos = [6704.45, 2233.63, 3.2];
_object = createVehicle ["Exile_Sign_BoatCustoms", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 162.422;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\boatcustoms.paa"];
_object allowDamage false;

//North boat dealer
_pos = [13066, 8235.19, 3.58672];
_object = createVehicle ["Exile_Sign_Boat", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\boat.paa"];
_object allowDamage false;

_pos = [13066, 8233.07, 3.59155];
_object = createVehicle ["Exile_Sign_BoatCustoms", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\boatcustoms.paa"];
_object allowDamage false;

//Aircraft dealer
_pos = [12025.1, 12647.4, 0.0807457];
_object = createVehicle ["Exile_Sign_Aircraft", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 200;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\aircraft.paa"];
_object allowDamage false;

_pos = [11999.4, 12625.9, 0.0807457];
_object = createVehicle ["Exile_Sign_AircraftCustoms", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 200;
_object setPosATL _pos;
_object setObjectTextureGlobal [0, "CSG\boards\aircraftcustoms.paa"];
_object allowDamage false;