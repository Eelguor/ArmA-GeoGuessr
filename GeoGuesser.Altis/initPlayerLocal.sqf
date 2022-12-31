
[1, "black", 100000, 1] spawn BIS_fnc_fadeEffect;
openMap [false, true];
hint "Loading Geoguessr";
player enableSimulation false;

_spawnPos = [] call BIS_fnc_randomPos;
player setVelocity [0,0,0];
player setpos _spawnPos;


call geo_fnc_loadStats;
[] spawn geo_fnc_initeventhandlers;


[] spawn {
for "_i" from 0 to 3 do {
	
	
	_loadvar = switch (_i) do
	{
		case 0: {""};
		case 1: {"."};
		case 2: {".."};
		case 3: {"..."};
	};

	sleep .33;
	hintSilent format ["Loading%1", _loadvar];
};


hintSilent "finished Loading...";
[1, "black", 0, 1] spawn BIS_fnc_fadeEffect;
player enableSimulation true;
sleep 1;
hintSilent ""; //Remove the hint

[format ["
Hello %1,<br/><br/>
Use SHIFT + Leftclick on the map to select a position<br/><br/>
To validate your position, use your scroll wheel.<br/>
Press P for statistics and H for help.", profilename], "success", 30] call geo_fnc_notifications;
 
player addAction ["Start the game...", {call geo_fnc_loadnew;}];

};