if (getMarkerPos "SelectMark" isEqualTo [0,0,0]) exitWith 
{
	"Select a marker on your map first using ALT + Click" call geo_fnc_notifications;
	playsound "error";
};
_confirm = ["Are you sure you want to validate your marker?", "Validation", true, true] call BIS_fnc_guiMessage;
if !(_confirm) exitWith {"Canceled Validation!" call geo_fnc_notifications};
removeAllActions player; 

_hiddenMarker = getMarkerPos "Marker12";
"Marker12" setMarkerAlphaLocal 1;
_mapMarker = getMarkerPos "SelectMark";


_distance = _mapMarker distance _hiddenMarker;
                                                                                                                                                                                                                                                                    
// stopping timer
_time = RscFiringDrillTime_current;
BIS_stopTimer = true;
RscFiringDrillTime_done = true;

format ["
You were %1m from the target <br/>
You completed the task in %2 seconds <br/>
", _distance, _time] call geo_fnc_notifications;

if (count ScoreArray > 99) then {ScoreArray deleteat 0};

_attempts = profileNamespace getVariable ["GeoAttempts", 0];
scoreArray pushBack [systemTime call geo_fnc_systemFormat, _distance, _time, _attempts + 1];

profileNamespace setVariable ["GeoAttempts", _attempts + 1];
profileNamespace setVariable ["ProfileSpaceScore", ScoreArray];
saveProfileNamespace;

(findDisplay 12 displayCtrl 51) ctrlAddEventHandler ["Draw","
	(_this select 0) drawLine [
		getMarkerPos 'SelectMark',
		getMarkerPos 'Marker12',
		[0,0,1,1]
	];
"];

sleep 1.5;
format ["A new game can be loaded!</br>Use your scroll wheel to play again!"] call geo_fnc_notifications;
 
player addAction ["Load new game...", {[] spawn geo_fnc_loadnew;}];



