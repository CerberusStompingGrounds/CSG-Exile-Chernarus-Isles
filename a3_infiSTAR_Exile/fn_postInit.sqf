/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	
	Copyright infiSTAR - 2011 - 2018. All rights reserved.
	Christian (Chris) L. (infiSTAR23@gmail.com) Developer of infiSTAR
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	
	NOTE:
	THIS FILE SHOULD NOT BE TOUCHED UNLESS YOU REALLY KNOW WHAT YOU ARE DOING!
*/

if(!isNil"infiSTAR_SERVERSTART_PlayerConnected_id" && !isNil"FN_GET_SERVERPW")then {
	infiSTAR_SERVERSTART_postInit_thread = [] spawn {
		waitUntil {!isNil "PublicServerIsLoaded" && {PublicServerIsLoaded}};
		removeMissionEventHandler ["PlayerConnected",infiSTAR_SERVERSTART_PlayerConnected_id];
		(call FN_GET_SERVERPW) serverCommand "#unlock";
	};
};
