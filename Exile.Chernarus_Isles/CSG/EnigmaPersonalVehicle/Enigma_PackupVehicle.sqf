/*
Exile_PersonalVehicles
[_ZEN_] Happydayz
© 2016 Enigma Team
*/
uid = getPlayerUID player;
personalVehicle = _this select 0;
if ((personalVehicle isKindOf "I_G_Offroad_01_F") || (personalVehicle isKindOf "C_Hatchback_01_F") || (personalVehicle isKindOf "I_G_Quadbike_01_F")) then {
    5 cutText ["","PLAIN"];
    titleText[format["Your one time gift of a Respect Vehicle will not be returned if you pack it!"],"PLAIN"];
player addAction [ ("<t color=""#DE5021"">" + ("Yes I understand") +"</t>") , { 
    ENIGMA_SpawnVehicleChk = [player,"","",0,personalVehicle,uid]; 
    publicVariableServer "ENIGMA_SpawnVehicleChk";
removeAllActions player;
player setvariable ["spawnedrspctveh", false, true]; 
} ];
player addAction [ ("<t color=""#DE5021"">" + ("No I want to keep it!") +"</t>"), { 
removeAllActions player;
} ];
} else {
	if !(ExileClientPlayerIsInCombat) then
	{
		player switchAction "medicStart"; 
		ENIGMA_SpawnVehicleChk = [player,"","",0,personalVehicle,uid]; 
		publicVariableServer "ENIGMA_SpawnVehicleChk";
		player playActionNow "medicStop";
	}
	else
	{
		["ErrorTitleOnly", ["Cannot pack bike in combat!"]] call ExileClient_gui_toaster_addTemplateToast;
	}
};
