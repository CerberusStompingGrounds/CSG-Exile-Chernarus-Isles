private ["_PlayerUID", "_mods"];
uiSleep 2;
_PlayerUID = getPlayerUID player;
_mods = [
	"76561198053803481", //Wolf
	"76561198118368547", //Almighty
	"76561198124951712", //AGR0
	"76561198005163982", //PopaCepi
	"76561198137331036"  //Syntax
];
if (_PlayerUID in _mods) then {
	clearWeaponCargo player;
	clearMagazineCargo player;
	removeBackpackGlobal player;
	player forceAddUniform "Exile_Uniform_ExileCustoms"; //Exile Customs (Black)
	player addBackpack "B_FieldPack_ocamo"; //Field Back (Hex)
	player linkItem "ItemRadio";
	player linkItem "ItemMap";
	player addWeapon "Exile_Item_XM8";
	player linkItem "ItemCompass";
	player addItem "Exile_Item_DuctTape";
	player addItem "Exile_Item_EMRE";
	player addItem "Exile_Item_Energydrink";
	player addItem "Exile_Item_InstaDoc";
	player addItemToBackpack "hgun_Rook40_F"; //Rook-40 9mm
	player addItem "16Rnd_9x21_Mag";
	player addItem "16Rnd_9x21_Mag";
	player setObjectTextureGlobal [0,"UK111\mod.paa"];
};
if (_PlayerUID isEqualTo "76561198162513363") then { //5.5
	clearWeaponCargo player;
	clearMagazineCargo player;
	removeBackpackGlobal player;
	player forceAddUniform "U_I_FullGhillie_sard";
	player addBackpack "B_Carryall_ghex_F";
	player addVest "V_PlateCarrierIAGL_dgtl";
	player linkItem "ItemRadio";
	player linkItem "ItemGPS";
	player addWeapon "Exile_Item_XM8";
	player linkItem "ItemCompass";
	player addWeapon "rangefinder";
	player linkItem "NVGoggles_INDEP";
	player addItemToVest "Exile_Item_DuctTape";
	player addItemToVest "Exile_Item_PlasticBottleFreshWater";
	player addItemToVest "Exile_Item_EMRE";
	player addItemToVest "Exile_Item_Energydrink";
	player addItemToVest "Exile_Item_InstaDoc";
	player addWeapon "srifle_DMR_03_tan_F";
	player addMagazines ["20Rnd_762x51_Mag", 3];
	player addPrimaryWeaponItem "20Rnd_762x51_Mag";
	player addPrimaryWeaponItem "muzzle_snds_B_snd_F";
	player addPrimaryWeaponItem "bipod_01_F_snd";
	player addPrimaryWeaponItem "optic_AMS_snd";
	player selectWeapon "srifle_DMR_03_tan_F";
	call ExileClient_object_player_bambiStateEnd;
};
