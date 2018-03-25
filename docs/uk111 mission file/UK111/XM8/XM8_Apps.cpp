class CfgXM8
{
    extraApps[] = {"APPS_bar","APPS_journal","APPS_rules","APPS_bike","APPS_colors","APPS_chat","APPS_mute","APPS_view","APPS_helipad","APPS_recipes","APPS_ambient"};

	class APPS_bar 
	{
		title = "Statbar Settings";
		controlID = 50400;
		logo = "UK111\XM8\Apps\SB_Settings\logo.paa";
		onLoad = "UK111\XM8\Apps\SB_Settings\onLoad.sqf";
	};
	class APPS_journal 
	{
		title = "Journal";
		controlID = 50300;
		config = "UK111\XM8\Apps\journal\config.sqf";
		logo = "UK111\XM8\Apps\journal\Journal.paa";
		onLoad = "UK111\XM8\Apps\journal\onLoad.sqf";
		onOpen = "UK111\XM8\Apps\journal\onOpen.sqf";
	};
	class APPS_rules
	{
		title = "Info/Rules";
		logo = "\exile_assets\texture\item\Exile_Item_Laptop.paa";
		quickFunction = "[] execVM 'UK111\XM8\Apps\rules.sqf';";
	};
	class APPS_bike
	{
		title = "Deploy Bike";
		logo = "\dbo\dbo_old_bike\data\icon_mmt_ca.paa";
		quickFunction = "[] call UK111_fnc_deploy_bike;";
	};
	
	class APPS_colors
	{
		title = "Color Corrections";
		logo = "UK111\colors\colors.paa";
		quickFunction = "[] call UK111_fnc_colors_dialog;";
	};
	/*
	class APPS_atv
	{
		title = "Deploy ATV";
		logo = "\A3\Soft_F\Quadbike_01\Data\UI\Quadbike_01_CA.paa";
		quickFunction = "[] call UK111_fnc_deploy_ATV;";
	};
	*/
	
	class APPS_chat
	{
		title = "Private Chat";
		logo = "\exile_assets\texture\item\Exile_Item_XM8.paa";
		quickFunction = "waitUntil {(findDisplay 24) closeDisplay 0; isNull findDisplay 24 }; if (!isNil 'fnc_chat_send') then {if (isNull (findDisplay -1340)) then { createDialog 'infiSTAR_CHAT'; }; };";
	};
	class APPS_mute
	{
		title = "SideChat On/Off";
		logo = "\exile_assets\texture\flag\flag_misc_trololol_co.paa";
		quickFunction = "if (UK111_chat) then {showChat false; UK111_chat = false; ['ErrorTitleOnly',['Sidechat OFF']] call ExileClient_gui_toaster_addTemplateToast; } else { showChat true; UK111_chat = true; ['SuccessTitleAndText',['Sidechat ON']] call ExileClient_gui_toaster_addTemplateToast; };";
	};
	class APPS_view
	{
		title = "View Distance";
		logo = "\A3\Weapons_F\Data\UI\gear_binoculars_CA.paa";
		quickFunction = "[] call CHVD_fnc_openDialog;";
	};
	class APPS_helipad
	{
		title = "Build Helipad";
		logo = "UK111\garage\hpad.paa";
		quickFunction = "[] call garage_fnc_helipad;";
	};
	class APPS_recipes 
	{
		controlID = 107000;
		title = "Recipes";		
		logo = "UK111\XM8\Apps\recipes\logo.paa";
		onLoad = "UK111\XM8\Apps\recipes\onLoad.sqf";
		onOpen = "UK111\XM8\Apps\recipes\onOpen.sqf";
	};
	class APPS_ambient
	{
		title = "Ambient Sounds";
		logo = "\exile_assets\texture\arsenal\radio_ca.paa";
		quickFunction = "if ((profileNamespace getVariable['UK111ambient',-1]) isEqualTo -1) then { profileNamespace setVariable['UK111ambient',1]; enableEnvironment true; ['SuccessTitleAndText',['Ambient Sounds','Environmental effects: ON']] call ExileClient_gui_toaster_addTemplateToast; } else { profileNamespace setVariable['UK111ambient',-1]; enableEnvironment false; ['ErrorTitleAndText',['Ambient Sounds','Environmental effects: OFF']] call ExileClient_gui_toaster_addTemplateToast; };";
	};
};
