class UK111_color_corrections
{
	idd = 6969;
	movingEnabled = false;
	onLoad = "uiNamespace setVariable ['UK111_color_corrections', _this select 0]; [] spawn UK111_fnc_colors_save_array;";
	onUnload = "uiNamespace setVariable ['UK111_color_corrections', displayNull];";
	
	class controls
	{
		class UK111_color_button_preset1: RscButton
		{
			idc = 1601;
			text = "Warm";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "['warm'] spawn UK111_fnc_colors_default; hint 'Color Corrections set to Warm. Remember to Save.';";
		};
		class UK111_color_button_preset2: RscButton
		{
			idc = 1602;
			text = "Cold";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "['cold'] spawn UK111_fnc_colors_default; hint 'Color Corrections set to Cold. Remember to Save.';";
		};
		class UK111_color_button_preset3: RscButton
		{
			idc = 1603;
			text = "Bright";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "['bright'] spawn UK111_fnc_colors_default; hint 'Color Corrections set to Bright. Remember to Save.';";
		};
		class UK111_color_button_preset4: RscButton
		{
			idc = 1604;
			text = "Dark";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "['dark'] spawn UK111_fnc_colors_default; hint 'Color Corrections set to Dark. Remember to Save.';";
		};
		class UK111_color_button_default: RscButton
		{
			idc = 1605;
			text = "Default";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "['exile'] spawn UK111_fnc_colors_default; hint 'Color Corrections set to default Exile. Remember to Save.';";
		};
		class UK111_color_button_save: RscButton
		{
			idc = 1606;
			text = "SAVE";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "[] spawn UK111_fnc_colors_save; hint 'Color Corrections Saved';";
		};
		class UK111_color_button_close: RscButton
		{
			idc = 1607;
			text = "CLOSE";
			x = 0.73714 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.0515521 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "[] spawn UK111_fnc_colors_save_check;";
		};
		
		class UK111_color_slider_1: RscSlider
		{
			idc = 1901;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.181 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [1,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_2: RscSlider
		{
			idc = 1902;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [2,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_3: RscSlider
		{
			idc = 1903;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [3,(_this select 1)] spawn UK111_fnc_colors_change;";
		};		
		class UK111_color_slider_4: RscSlider
		{
			idc = 1904;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [4,(_this select 1)] spawn UK111_fnc_colors_change;";
		};		
		class UK111_color_slider_5: RscSlider
		{
			idc = 1905;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [5,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_6: RscSlider
		{
			idc = 1906;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [6,(_this select 1)] spawn UK111_fnc_colors_change;";
		};		
		class UK111_color_slider_7: RscSlider
		{
			idc = 1907;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [7,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_8: RscSlider
		{
			idc = 1908;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [8,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_9: RscSlider
		{
			idc = 1909;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [9,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_10: RscSlider
		{
			idc = 1910;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [10,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
		class UK111_color_slider_11: RscSlider
		{
			idc = 1911;
			x = 0.309257 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.381486 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {-0.2,0.2,1,1};
			onSliderPosChanged = "hintSilent str(_this select 1); [11,(_this select 1)] spawn UK111_fnc_colors_change;";
		};
	};
};
