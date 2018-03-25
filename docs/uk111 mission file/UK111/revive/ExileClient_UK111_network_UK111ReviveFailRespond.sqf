["ErrorTitleOnly",[format["%1 failed your revive and killed you! RIP!",(_this select 0)]]] call ExileClient_gui_toaster_addTemplateToast;
player setVariable["reviveAntiDupe",1,true];
[] call ExileClient_gui_escape_respawn;
