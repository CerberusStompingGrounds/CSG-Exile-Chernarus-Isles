ExAd_SB_ICON_BANK = 	"UK111\StatsBar\Icons\Bank.paa";
ExAd_SB_ICON_CLAN = 	"UK111\StatsBar\Icons\Family.paa";
ExAd_SB_ICON_COMPASS = 	"UK111\StatsBar\Icons\Compass.paa";
ExAd_SB_ICON_GRID = 	"UK111\StatsBar\Icons\Grid.paa";
ExAd_SB_ICON_HP = 		"UK111\StatsBar\Icons\Health.paa";
ExAd_SB_ICON_HUNGER = 	"UK111\StatsBar\Icons\Hunger.paa";
ExAd_SB_ICON_KD = 		"UK111\StatsBar\Icons\KD.paa";
ExAd_SB_ICON_PLAYERS = 	"UK111\StatsBar\Icons\Players.paa";
ExAd_SB_ICON_RESPECT = 	"UK111\StatsBar\Icons\Respect.paa";
ExAd_SB_ICON_TEMP = 	"UK111\StatsBar\Icons\Temp.paa";
ExAd_SB_ICON_THIRST = 	"UK111\StatsBar\Icons\Thirst.paa";
ExAd_SB_ICON_TIMER = 	"UK111\StatsBar\Icons\Restart.paa";
ExAd_SB_ICON_Wallet = 	"UK111\StatsBar\Icons\Wallet.paa";
ExAd_SB_ICON_LOGO = [];

ExAd_SB_COMPONENTS_COLORS = ["#000000","#440B00","#FE1106","#CA7400","#A9C700","#11BF03"]; //STRINGS - Array of color codes, from bad to good. 
ExAd_SB_Timer = 3; 								//SCALAR - Restart time measured in hours. 

ExAd_SB_GUI_POS_Default = 	[safeZoneX, safeZoneY + safeZoneH - 32 * pixelH, safeZoneW, 30 * pixelH]; //ARRAY - Position with this attributes [x,y,w,h];
ExAd_SB_GUI_TextColor_Default = [1,1,1,1];		//rgba array with values between 0-1, 0 => 0 | 255 => 1
ExAd_SB_GUI_BgColor_Default = [0,0,0,0];		//rgba array with values between 0-1, 0 => 0 | 255 => 1
	
ExAd_SB_Text_Margin_Default = " ";				//Margin between components measured in blankspaces
ExAd_SB_Text_InnerMargin_Default = "";			//Margin between icon and text within the component measured in blankspaces
ExAd_SB_Text_Font_Default = "OrbitronLight";	//Font family
ExAd_SB_Text_Align_Default = "center";			//Alignment (left,center,right)
ExAd_SB_Text_Size_Default = 1;					//Text size ( 0-2 )
ExAd_SB_Img_Size_Default = 1;					//Icon size ( 0-2 )
	
ExAd_SB_Show_KD_Default = false;				//Show kill death ratio
ExAd_SB_Show_HP_Default = true;					//Show health
ExAd_SB_Show_Thirst_Default = false;			//Show thirst
ExAd_SB_Show_Hunger_Default = false;			//Show hunger
ExAd_SB_Show_Wallet_Default = true;				//Show pop tabs on player
ExAd_SB_Show_Bank_Default = true;				//Show pop tabs in locker
ExAd_SB_Show_Respect_Default = true;			//Show respect
ExAd_SB_Show_FPS_Default = true;				//Show fps
ExAd_SB_Show_Time_Default = true;				//Show restart timer
ExAd_SB_Show_Temp_Default = false;				//Show body temperature
ExAd_SB_Show_Grid_Default = false;				//Show grid location
ExAd_SB_Show_Compass_Default = false;			//Show compass
ExAd_SB_Show_PlayerCount_Default = true;		//Show online players count
ExAd_SB_Show_ClanCount_Default = false;			//Show online family members count 
	
ExAd_SB_Allow_KD = 			true;				//Allow kill death ratio
ExAd_SB_Allow_HP = 			true;				//Allow health
ExAd_SB_Allow_Thirst = 		true;				//Allow thirst
ExAd_SB_Allow_Hunger = 		true;				//Allow hunger
ExAd_SB_Allow_Wallet = 		true;				//Allow wallet
ExAd_SB_Allow_Bank = 		true;				//Allow bank saldo
ExAd_SB_Allow_Respect = 	true;				//Allow respect
ExAd_SB_Allow_FPS = 		true;				//Allow fps
ExAd_SB_Allow_Time = 		true;				//Allow restart timer
ExAd_SB_Allow_Temp = 		true;				//Allow body temperature
ExAd_SB_Allow_Grid = 		true;				//Allow grid location
ExAd_SB_Allow_Compass = 	true;				//Allow compass
ExAd_SB_Allow_PlayerCount = true;				//Allow players count 
ExAd_SB_Allow_ClanCount = 	true;				//Allow online family members count
