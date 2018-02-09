//Play 3D sound on a object
//Put this into description.ext
class CfgSounds
{
	sounds[] = {};
	
	class sound1
	{
		name = "song1";
		sound[] = {\music\song1.ogg, db-20, 1.0}; //{directoryOfSound, db+/-loudness, 1.0}
		titles[] = {};
	};
};
//Put this in the init on the object that you want to play music
nul = [this] spawn {while {true} do {(_this select 0) say3D "sound1"; sleep 215;};};