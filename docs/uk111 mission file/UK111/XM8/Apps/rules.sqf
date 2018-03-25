disableSerialization;
["",0,0.2,10,0,0,8] spawn BIS_fnc_dynamicText;
createDialog "RscDisplayWelcome";
_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayCtrl 2400;
_textSpoiler = _display displayCtrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'></t><br/>";
_message = _message + "<t align='center' size='2' shadow='0'><a href='http://uk111.uk/' color='#ff9900'>UK 111 INFO / RULES</a></t><br/><br/><br/>";

_message = _message + "<t align='center' size='1' shadow='0'>Click this link to get to our website: <a href= 'http://uk111.uk/' color='#ff9900'>uk111.uk</a><br/>";
_message = _message + "Click this link to read full rules: <a href= 'http://uk111.uk/exilerules' color='#ff9900'>Rules</a><br/>";
_message = _message + "TeamSpeak address: <a href= 'http://ts.uk111.uk' color='#ff9900'>ts.uk111.uk</a><br/><br/><br/>";

_message = _message + "<t align='left' size='1' shadow='0'><t color='#ff9900'>Good to know:</t><br/><br/>";
_message = _message + "- To fast travel, you need to go at travel point and scroll on the pedestal to travel between points. This consumes your compass.<br/><br/>";
_message = _message + "- You can spawn within 500m from your base after you have built a flag or when you have building rights granted.<br/><br/>";
_message = _message + "- If your dead body is within 500m from your flag, you cannot spawn there and you will spawn to Sofia.<br/><br/>";
_message = _message + "- All vehicles left inside the safe zone over restart are unlocked or deleted.<br/><br/>";
_message = _message + "- To keep your vehicles safe you should always use virtual garage which can be found at every safe zone and it also can be accessed from your base flag pole or any opened safe but you need to build a helipad before you can retrieve vehicles from garage at your base.<br/><br/>";
_message = _message + "- You can only store bought vehicles in garage and it can hold up to 10 vehicles. All garage vehicles that are not taken out in last 7 days are deleted from your garage.<br/><br/>";
_message = _message + "- To keep your base you need to pay protection money every 7 days. This can be done at office trader.<br/><br/>";
_message = _message + "- If your flag gets stolen you have 3 days to claim it back from traders or your base is unlocked and it gets deleted 1 day after that.<br/><br/>";
_message = _message + "- All unused safes are changed to code 0000 and marked as abandoned after 7 days.<br/><br/>";
_message = _message + "- All tents outside territory limits that have not been used for 7 days are deleted. Anything else built outside your territory will delete after one day.<br/><br/>";
_message = _message + "- All vehicles in map that are not moved in 3 days are deleted.<br/><br/>";
_message = _message + "- Unsold items and unclaimed money is deleted from the marketplace after 5 days.<br/><br/>";
_message = _message + "- If you do not play on the server for straight 14 days then your territory, build objects and player data is deleted (poptabs, respect, etc.).<br/><br/><br/>";

_message = _message + "<t align='left' size='1' shadow='0'><t color='#ff9900'>General rules:</t><br/><br/>";
_message = _message + "These rules are here to allow for a fun gameplay on the server, we attempt to give freedom to players on the server however there are things that are frowned upon within the community.<br/><br/>";
_message = _message + "1) Duping items is not allowed. This will result in a permanent ban, if you are able to provide evidence to accidently duping you may be unbanned in rare cases.<br/><br/>";
_message = _message + "2) Combat logging is something that is not tolerated. This will result in a 24 hour ban if seen by a moderator, admin or given evidence.<br/><br/>";
_message = _message + "3) Advertising other game servers including teamspeak servers is not allowed. A kick or ban will be a consequence.<br/><br/>";
_message = _message + "4) Disrespecting people is not allowed, especially against moderators in certain circumstances and admins. They give free time to help the servers be the best they can and any abuse given is not tolerated one bit.<br/><br/>";
_message = _message + "5) Disrespect of players is a grey area, when it begins to personal health threats, racial or sexual comments and life insults then it has gone too far and you will be told to promptly stop otherwise a ban will be issued.<br/><br/>";
_message = _message + "6) We allow Squad XML's on Arma 3 as long as they are not offensive in any way<br/><br/>";
_message = _message + "7) Kamikaze into any type of vehicle, player or base is not allowed. You will be banned for doing it.<br/><br/>";
_message = _message + "8) Using deployed bikes to glitch or blow up vehicles is against the rules, do not abuse the bikes in any way.<br/><br/>";
_message = _message + "9) Lying to an admin or mod is not tolerated at all! <br/><br/>";
_message = _message + "10) Just because somebody else has broken the rules, DO NOT go out breaking them too for self justice! It will only get you into trouble.<br/><br/>";
_message = _message + "11) Attempting to break rules is still a bannable offence! This means if trying to glitch, attempting to dupe or steal are all still against the rules!<br/><br/>";
_message = _message + "12) Changing your name is not allowed unless staff has been notified!<br/><br/>";
_message = _message + "13) You are not allowed to glitch inside of a base, rock or anything else not intended for you to be inside of. <br/><br/>";
_message = _message + "13) For staff to take care of a player breaking the rules you will need proof of what happened in form of either screenshots or a video. A video is always preferred. <br/><br/><br/>";

_message = _message + "<a color='#ff9900'>Base rules:</a><br/><br/>";
_message = _message + "1) You cannot build anything within 1.2km from a safe zone or 700m of any activity point. The base cannot have line of sight either, within 2500m. Regarding view distance you are allowed to have LOS on small military compounds over 2km away, but if you're caught abusing it your base will be marked and then deleted.<br/><br/>";
_message = _message + "2) Do not build anything within 500m of a high loot area and do not build with line of sight on those areas either. <br/><br/>";
_message = _message + "3) Do not build anything within 1000m of any spawn location (these locations are visible on the map).<br/><br/>";
_message = _message + "4) Blocking off access to a base or safes is not allowed. Placing new doors with locks or walls inside someone elses base is not allowed either, and using vehicles to block doors.<br/><br/>";
_message = _message + "5) Placing territory flags inside objects like safes, trees, walls, building supports and anything else which can be used to block off the flag to prevent it from being stolen.<br/><br/>";
_message = _message + "6) Floating bases are not allowed, they must be accessible by foot.<br/><br/>";
_message = _message + "7) Do not build in or around petrol stations.<br/><br/>";
_message = _message + "8) Do not build double walls or your base will be deleted. This means placing walls inside walls.<br/><br/><br/>";
_message = _message + "9) Building, removing or moving walls/floors while your base is under attack is not allowed and will be classified as glitching which is bannable offence.<br/><br/><br/>";

_message = _message + "<a color='#ff9900'>Trader city / safe zone rules:</a><br/><br/>";
_message = _message + "1) Camping of traders is not allowed. This would be classified as watching traders from close or far away waiting for people to leave or go towards the trader and kill them. You may only kill players or destroy vehicles if they are further than 300m away from the safe zone. If you are in a heli/plane or are engaging a heli/plane you may not engage if you or the heli/plane is closer than 700m away from the safe zone. The reason this rule is in place is to ensure every player can safely leave the trader area. Do not mine/bomb road to and from traders.<br/><br/>";
_message = _message + "2) Running behind someone out of traders and shooting them is also considered camping of traders.<br/><br/>";
_message = _message + "3) Ramming people or vehicles is not tolerated. This will result in a ban. This includes the roads leading to the safe zone and its surroundings.<br/><br/>";
_message = _message + "4) Stealing other peoples gear or vehicles is not allowed. This would include taking unlocked vehicle and picking up gear off the ground if it belongs to someone else. <br/><br/>";
_message = _message + "5) Leaving vehicles inside traders over restart will cause them to either unlock or be deleted. Vehicles left after restarts are free for taking - this was the reason it was implemented to stop safe zones being a car park. Vehicles left after restarts are free for taking.<br/><br/>";
_message = _message + "6) Being inside traders with nothing to do i.e walking around for no reason and annoying people will cause you to be removed from traders, kicked, killed or banned. Waiting for a friend is not a valid excuse.<br/><br/>";
_message = _message + "7) Fleeing to a safe zone while being shot at or having shortly been in combat is classed as combat logging. Please note that strong evidence is needed to get someone banned for this as its often difficult to tell.<br/><br/>";
_message = _message + "8) When you lose a vehicle in combat or it gets stolen outside of a trader, its no longer yours so you cannot take it or lock it when it is inside a trader.<br/><br/>";
_message = _message + "9) Controlling UAV from safe zone is not allowed and classed as trader camping.<br/><br/>";
_message = _message + "Trader City AAC, Fotia and Sideras are all safe zones where these rules apply.<br/><br/><br/>";

_message = _message + "<a color='#ff9900'>Side chat rules:</a><br/><br/>";
_message = _message + "Various rules to stop side chat getting out of hand. It cannot be muted, therefore these rules are in place to benefit everybody.<br/><br/>";
_message = _message + "1) No voice in side! This is highly frowned upon as it can be annoying, you will be warned and if that is not followed it will result in a ban. Most the time the automatic side chat kick will do so before.<br/><br/>";
_message = _message + "2) English only when using text in side chat. We're a UK server and it's preferred to speak it, even if your English is not very good it's better for everybody to type it.<br/><br/>";
_message = _message + "3) Giving base co-ordinates over side chat is something a lot of players consider annoying and something that is not be allowed. Kick may be issued or a ban depending on severity.<br/><br/>";
_message = _message + "4) Swearing is allowed to a certain degree. When it begins to be excessive you will be warned to stop, or a kick will be given and if you continue to swear excessively you will be banned to cool down.<br/><br/>";
_message = _message + "5) Continuous trolling is not tolerated and is an offence which will get you banned.<br/><br/><br/>";

_message = _message + "<a color='#ff9900'>Helpful tips:</a><br/><br/>";
_message = _message + "- Log out at the 5 minute warning or you may risk a roll back or losing your gear! Admins can see when you last logged out so don't make stories of logging out before you actually did.<br/><br/>";
_message = _message + "- Moderators have no in-game powers. They only have access to ban/kick players. Please do not complain over side of them teleporting or abusing powers they simply do not have! It is annoying and will only get you kicked/banned in the end.";
_message = _message + "- Some rules may not be included in this thread and that's due to them not being problems we've previously had. Above all it's down to admin discretion so this means if the current admin at the time feels you have broken a rule they can still ban you. If you feel you have been banned unjustly then appeal on the forums under your ban appeal, which is created by the banning admin and it can be disputed there and remember to keep it civil and respectful. Any disrespect or trolling will increase the ban.<br/><br/>";
_message = _message + "- See somebody breaking a rule, or being a nuisance? Report them via the forums or on Teamspeak to an admin/moderator. Forums is always better of course! You may get redirected to them from the admin so just save time.<br/><br/>";
_message = _message + "We strive for fun servers with a brilliant community, which includes you and everyone around you so don't go ruining their fun!<br/><br/><br/>";

_message = _message + "Have fun and play fair <a color='#ff9900'>-UK 111 staff</a></t><br/><br/>";

_text1 ctrlSetStructuredText (parseText _message);
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlCommit 0;
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;
