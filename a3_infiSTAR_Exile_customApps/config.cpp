/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	
	Copyright infiSTAR - 2011 - 2018. All rights reserved.
	Christian (Chris) L. (infiSTAR23@gmail.com) Developer of infiSTAR
	
	What is this?
	A package with some custom Apps for your Exile xm8 that also allows you fairly easy to add more custom apps to it!
*/
class CfgPatches
{
	class a3_infiSTAR_Exile_customApps
	{
		requiredVersion = 0.12431;
		requiredAddons[] = {"exile_client"};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
		a3_infiSTAR_Exile_customApps_version = 0.12431;
		author[]= {"Chris(tian) 'infiSTAR' Lorenzen"};
		website[]= {"https://infiSTAR.de"};
		contact[]= {"admin@infiSTAR.de","infiSTAR23@gmail.com"};
		license[]= {contact = "ericmcfli.ja@gmail.com", version = "v2", date = "02-01-2018 01-14-37"};
	};
};
class CfgFunctions
{
	class apps
	{
		class core
		{
			file = "a3_infiSTAR_Exile_customApps\core";
			class createctrl {};
			class add_picture {};
			class showpictures {};
			class setfocus_customappctrls {};
			class remove_customappctrls {};
			class call_submenu {};
			class add_customappctrls {};
			class add_gobackbutton {};
		};
		class apps
		{
			file = "a3_infiSTAR_Exile_customApps\apps";
			class vehicle_hp_bars {};
			class player_change_viewdistance {};
			class start_remote_cctv {};
			class xm8_fill_cameras {};
			class initremotecctv {};
			class scan {};
			class cookbook {};
		};
		class main
		{
			file = "a3_infiSTAR_Exile_customApps\init";
			class postInit { postInit = 1; };
		};
	};
};
class Cfg_infiSTAR_xm8apps
{
	#include "app_defines.hpp"
};