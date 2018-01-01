private["_time","_hours","_minutes"];

_time = serverTime;
_hours = floor (_time / 3600);
_minutes = 59 - floor ((_time % 3600) / 60);

["SuccessTitleAndText", ["Restart Timer", "Server Restart in: " _hours _minutes]] call ExileClient_gui_toaster_addTemplateToast;