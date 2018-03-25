class CfgRemoteExec
{
    class Functions
    {
        mode = 1;
        jip = 0;
		
		// Exile
        class ExileServer_system_network_dispatchIncomingMessage { allowedTargets=2; };
		
		// AH
		class fnc_AdminReq { allowedTargets=2; };
		
		// Towing
		class UK_Simulate_Towing 	{ allowedTargets=0; }; 
		class UK_Attach_Tow_Ropes	{ allowedTargets=0; }; 
		class UK_Take_Tow_Ropes		{ allowedTargets=0; }; 
		class UK_Put_Away_Tow_Ropes { allowedTargets=0; }; 
		class UK_Pickup_Tow_Ropes	{ allowedTargets=0; }; 
		class UK_Drop_Tow_Ropes		{ allowedTargets=0; }; 
		class UK_Set_Owner			{ allowedTargets=2; }; 
		class UK_Hint				{ allowedTargets=1; };
		class UK_Hide_Object_Global	{ allowedTargets=2; };
		
		// 1.68?
		class BIS_fnc_effectKilledAirDestruction {};
		class BIS_fnc_effectKilledSecondaries {};
		class BIS_fnc_objectVar {};
    };

    class Commands
    {
		mode = 0;
		jip = 0;
    };
};

class cfgFunctions
{
	class UK111
	{
		tag = "UK111";
		class UK111_functions
		{
			file = "UK111";
			class deploy_ATV {};
			class deploy_bike {};
			class dismantle_ATV {};
			class dismantle_bike {};
			class travel {};
			class poof {};
			class revive {};
			class calculate {};
			class init {postInit = 1;};
		};
	};
	class UK111_GARAGE
	{
		tag = "garage";
		class garage_functions
		{
			file = "UK111\garage";
			class getvehicle {};
			class storeVehicle {};
			class vehicle_info {};
			class vehicle_dialog {};
			class vehicle_store_list {};
			class helipad {};
			class helipad_delete {};
			class clear_helipad {};
		};
	};
	class CHVD
	{
		tag = "CHVD";
		class script
		{
			file = "UK111\XM8\Apps\CHVD";
			class onCheckedChanged {};
			class onSliderChange {};
			class onLBSelChanged {};
			class onEBinput {};
			class onEBterrainInput {};
			class selTerrainQuality {};
			class updateSettings {};
			class openDialog {};
			class init {postInit = 1;};
		};
	};
	class XM8_Apps
	{
		tag = "XM8_Apps";
		class XM8_functions
		{
			file = "UK111\XM8\Functions";
			class addApps {};
			class createBackgroundGUI {};
			class createButton {};
			class createCheckBox {};
			class createCombo {};
			class createCtrlGrp {};
			class createEdit {};
			class createExtraApps {};
			class createFrame {};
			class createList {};
			class createPicture {};
			class createStructuredText {};
			class createXList {};
			class createXSliderH {};
			class getAppCtrl {};
			class getBlankSpace {};
			class getNextIDC {};
			class prepareSlider {};
			class init {postInit = 1;};
		};
	};
	class StatsBar
	{
		tag = "StatsBar";
		class StatsBar_functions
		{
			file = "UK111\StatsBar\Functions";
			class formatNbrToPrefixStr {};
			class formatSBImage {};
			class formatSBOutput {};
			class getBankStr {};
			class getClanStr {};
			class getCompassStr {};
			class getFPSStr {};
			class getGridStr {};
			class getHPStr {};
			class getHungerStr {};
			class getKDStr {};
			class getPlayersStr {};
			class getRespectStr {};
			class getSBColor {};
			class getTempStr {};
			class getThirstStr {};
			class getTimerStr {};
			class getWalletStr {};
			class loadSB {};
			class sbPowerToggle {};
			class sbSave {};
			class sbStop {};
			class sbThread {};
			class toggleExileHUD {};
			class updateSB {};
			class init {postInit = 1;};
		};
	};
};

class CfgSounds
{
	sounds[] = {plane,crash,raid};
	class plane
	{
		name = "plane";
		sound[] = {UK111\sounds\plane.ogg,0.6,1};
		titles[] = {};
	};
	class crash
	{
		name = "crash";
		sound[] = {UK111\sounds\crash.ogg,0.2,1};
		titles[] = {};
	};
	class raid
	{
		name = "raid";
		sound[] = {UK111\sounds\bomb.ogg,1,1};
		titles[] = {};
	};
};

class RscTitles 
{
	#include "UK111\StatsBar\RscTitles.cpp"
};

class CfgNetworkMessages
{
	class UK111DeployRequest
	{
		module = "UK111";
		parameters[] = {"STRING"};
	};
	class UK111ToastRequest
	{
		module = "UK111";
		parameters[] = {"STRING","STRING","ARRAY","STRING"};
	};
	class UK111PoofRequest
	{
		module = "UK111";
		parameters[] = {"STRING"};
	};
	class UK111LogRequest
	{
		module = "UK111";
		parameters[] = {"STRING"};
	};
	class UK111RaidRequest
	{
		module = "UK111";
		parameters[] = {"STRING","STRING","STRING","STRING"};
	};
	class UK111ReviveRequest
	{
		module = "UK111";
		parameters[] = {"STRING"};
	};
	class UK111ReviveFailRespond
	{
		module = "UK111";
		parameters[] = {"STRING"};
	};
	class UK111ReviveRespond
	{
		module = "UK111";
		parameters[] = {"STRING"};
	};
	#include "UK111\marketplace\NetworkMessages.hpp"
};

#include "infiSTAR_AdminMenu.hpp"
#include "UK111\XM8\Apps\CHVD\dialog.hpp"
#include "UK111\garage\common.hpp"
#include "UK111\garage\vehicle_garage.hpp"
#include "UK111\travel\dialog.hpp"
#include "UK111\marketplace\config.cpp"
#include "UK111\marketplace\dialog.hpp"
#include "UK111\XM8\XM8_Apps.cpp"
#include "UK111\colors\colors.hpp"
