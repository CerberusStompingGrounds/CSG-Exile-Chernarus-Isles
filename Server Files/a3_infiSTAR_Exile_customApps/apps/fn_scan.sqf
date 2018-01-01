_cooldownMins = 3;
if(isNil 'LastUsedCheck')then{LastUsedCheck = 0;};
if(diag_tickTime > LastUsedCheck)then
{
	LastUsedCheck = diag_tickTime + (60*_cooldownMins);
	
	_counter = 0;
	{
		if((player distance _x < 501)&&(_x getVariable ['ExileXM8IsOnline', false]))then{_counter = _counter + 1;};
	} forEach (allPlayers - [player]);
	['ErrorTitleAndText', ['Players Scan:',format['%1 within 500m',_counter]]] call ExileClient_gui_toaster_addTemplateToast;
}
else
{
	['ErrorTitleAndText', ['Players Scan:',format['you need to wait %1 more seconds to use this again..!',round(LastUsedCheck - diag_tickTime)]]] call ExileClient_gui_toaster_addTemplateToast;
};