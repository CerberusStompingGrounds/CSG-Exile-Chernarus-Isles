/*
	ARMA 3 Breifing for rules,
	By: RuschGaming
	Link: http://www.exilemod.com/topic/1270-tuts-briefing-for-exilemod/
	Modified by: Danny Dorito for CSG
*/
if (!hasInterface) exitWith {};
waitUntil {!isNil "ExileClientLoadedIn"};
player createDiarySubject ["rules","Rules"];
player createDiaryRecord ["rules",[		
"Trader",
"
No stealing or trolling in the trader cities.<br/>
No camping the safe zones! There is a 500m no combat radius around all safe zones. Do not engage in combat within the radius.<br/>
No running into safe zones while in combat. If being pursued, you must have 5 minutes free of contact (shots fired at you) before entering a safe zone!<br/>
Do not follow people out of trader.<br/>
If you are caught deliberately camping safe zone, you will be killed by an admin and your gear will be wiped. If further action is required it will result in a temporary ban.
"]];
player createDiaryRecord ["rules",[
"Bases",
"
No bases that cross over of roads.<br/>
No bases within 200m of military buildings. This is measured from the military building, to the base flag.<br/>
No bases within 1000m of traders. This is measured from the edge of the green zone, to the base flag.<br/>
No bases within 1000m of spawn areas. This is measured from the marker, to the base flag.<br/>
Bases must be no higher than 30m off the ground at their highest point you can stand on. If a base is higher than 30m, the portion of the base above that mark will be removed and not refunded.
All base flags must have a entrance/exit.<br/>
A player must be able to steal the flag, it cannot be obstructed/buried inside an object.<br/>
All must must have a ground entrance. This means no Sky bases.
"]];
player createDiaryRecord ["rules",[
"General",
"
No hacking, glitching, duping, or exploiting of any kind, violations will be met with a temporary or permanent ban.<br/>
No racist, homophobic, hateful comments, or extensive trash talking in chat! Any violations will result in a kick the first time, 24 hour ban the second time, 48 hour ban the third time, and perm for the final offense.<br/>
Keep chatter to a minimum and please try to ask constructive questions and give constructiveand respectful responses.<br/>
Multiple instances of combat logging may result in temporary ban.
"]];