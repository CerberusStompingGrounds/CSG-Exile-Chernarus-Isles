class RscStructuredText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "left";
		shadow = 0;
	};
	x = 0;	y = 0;	h = 0.035;	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};

class ExAd_STATSBAR
{
	idd = 2186;	
	movingEnable = 0;
	enableSimulation = 1;
	enableDisplay = 1;
	duration = 10e10;
	fadein = 0;
	fadeout = 0;
	name = "ExAd_STATSBAR"; 
	onLoad = "with uiNameSpace do { ExAd_STATSBAR = _this select 0 };";
	class controls 
	{
		class StatsBar: RscStructuredText
		{
			idc = 1100;
			text = "";
			x = "safeZoneX";
			y = "safeZoneY + safeZoneH - 32 * pixelH";
			w = "safeZoneW";
			h = "30 * pixelH";
		};
		class Logo
		{	
			type= 0;
			idc = 1000;
			x = "safeZoneX + 60 * pixelW";
			y = "safeZoneY + 60 * pixelH - 32 * pixelH";
			w = "64 * pixelW";
			h = "64 * pixelH";
			style=48;
			colorBackground[]={0,0,0,0};
			colorText[]={0,0,0,1};
			font="TahomaB";
			sizeEx=0;
			text = "";
		};	
	};
};
