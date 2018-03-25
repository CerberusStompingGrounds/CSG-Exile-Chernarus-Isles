if (!hasInterface || isServer) exitWith {};
_atv = _this select 0;
if ((damage _atv > 0.7) || !(canMove _atv)) exitWith { ["ErrorTitleOnly",["This ATV is too damaged to dismantle!"]] call ExileClient_gui_toaster_addTemplateToast; };
deleteVehicle _atv;
player addMagazine "Exile_Item_DuctTape";
player addMagazine "Exile_Item_MetalPole";
player addMagazine "Exile_Item_JunkMetal";