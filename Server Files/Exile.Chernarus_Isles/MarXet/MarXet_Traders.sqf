/*
*  MarXet_Traders.sqf
*  Author: WolfkillArcadia
*  © 2016 Arcas Industries
*  This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
*  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
*/
if (!hasInterface || isServer) exitWith {};
private["_traders","_trader"];
_traders = [];
//Stary
_trader = [
	"Exile_Cutscene_Prisoner01",
	"",
	"GreekHead_A3_04",
	["InBaseMoves_table1"],
	[6317.444,7786.406,0],
	300
] call ExileClient_object_trader_create;
_traders pushBack _trader;
//Klen
_trader = [
	"Exile_Cutscene_Prisoner01",
	"",
	"GreekHead_A3_04",
	["InBaseMoves_table1"],
	[11451.51,11319.788,4.127],
	120
] call ExileClient_object_trader_create;
_traders pushBack _trader;
//Zeleno
_trader = [
	"Exile_Cutscene_Prisoner01",
	"",
	"GreekHead_A3_04",
	["InBaseMoves_table1"],
	[2497.139,5089.556,0.529],
	55.968
] call ExileClient_object_trader_create;
_traders pushBack _trader;
{
	_x forceAddUniform "TRYK_U_B_PCUHsW3";
	_x addVest "TRYK_V_ArmorVest_Delta2";
	_x addGoggles "G_Balaclava_blk";
	_x addAction ["<img image='\a3\ui_f\data\IGUI\Cfg\Actions\reammo_ca.paa' size='1' shadow='false' />Player Market","createDialog 'RscMarXetDialog'","",1,false,true,"","((position player) distance _target) <= 5"];
} forEach _traders;