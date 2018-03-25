if (!hasInterface || isServer) exitWith {};
closeDialog 0;
if (isNull objectParent player) then {
	if (("Exile_Item_DuctTape" in magazines player) && ("Exile_Item_MetalPole" in magazines player) && ("Exile_Item_JunkMetal" in magazines player)) then {
		if (!ExilePlayerInSafezone) then {
			player removeMagazine "Exile_Item_DuctTape";
			player removeMagazine "Exile_Item_MetalPole";
			player removeMagazine "Exile_Item_JunkMetal";
			["UK111DeployRequest",["Exile_Bike_QuadBike_Guerilla02"]] call ExileClient_system_network_send;
		} else {
			["ErrorTitleAndText",["SafeZone","Deployed vehicles are not allowed inside the SafeZone!"]] call ExileClient_gui_toaster_addTemplateToast;
		};
	} else {
		["ErrorTitleOnly",["You need: 1x(Duct Tape), 1x(Metal Pole) and 1x(Junk Metal) to build this!"]] call ExileClient_gui_toaster_addTemplateToast;
	};
} else {
	["ErrorTitleOnly",["You cannot do this while in a vehicle!"]] call ExileClient_gui_toaster_addTemplateToast;
};
