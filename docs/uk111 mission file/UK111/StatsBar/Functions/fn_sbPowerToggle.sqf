if (ExAd_SB_Active) then { call StatsBar_fnc_sbStop } else { call StatsBar_fnc_loadSB };
ExAd_SB_Active = !ExAd_SB_Active;
(_this select 0) ctrlSetText (if(!ExAd_SB_Active)then{"Show"}else{"Hide"});
call StatsBar_fnc_sbThread;

true