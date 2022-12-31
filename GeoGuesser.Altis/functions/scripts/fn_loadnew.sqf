
_confirm = ["Are you sure you would like to start a new round ?", "Start Game", true, true] call BIS_fnc_guiMessage;
if !(_confirm) exitWith {"Canceled Validation!" call geo_fnc_notifications};

(findDisplay 12 displayCtrl 51)  ctrlRemoveAllEventHandlers "Draw";
removeAllActions player;
openMap [false, false];
_spawnPos = [] call BIS_fnc_randomPos; 
player setpos _spawnPos; 

deleteMarkerLocal "SelectMark";
deleteMarkerLocal "Marker12";
createMarkerLocal ["Marker12", _spawnPos];
"Marker12" setMarkerShapeLocal "ICON";
"Marker12" setMarkerSizeLocal [1,1];
"Marker12" setMarkerType "mil_dot";
"Marker12" setMarkerColor "ColorRed";
"Marker12" setMarkerAlphaLocal 0; //Hiding the marker 

"#ec01ac" spawn BIS_fnc_VRTimer;

player addAction ["Validate your marker", {[] spawn geo_fnc_validateMarker}];