
private _display = findDisplay 49;
private _ctrlContinueButton = _display displayCtrl 2;
private _ctrlBottomBar = _display displayCtrl 120;
private _ctrlAbortBtn = _display displayCtrl 104;
private _ctrlRespawnBtn = _display displayCtrl 103;
private _ctrlFieldMenuBtn = _display displayCtrl 122;

_ctrlAbortBtn ctrlEnable true;
_ctrlAbortBtn ctrlSetEventHandler ["ButtonClick","[] spawn geo_fnc_outro; (findDisplay 49) closeDisplay 2; true"];

_ctrlRespawnBtn ctrlEnable false;
_ctrlRespawnBtn ctrlSetEventHandler ["ButtonClick", "(findDisplay 49) closeDisplay 2; true"];
_ctrlRespawnBtn ctrlSetText format ["%1", getPlayerUID player];

_ctrlFieldMenuBtn ctrlEnable false;
_ctrlFieldMenuBtn ctrlShow false;

_ctrlContinueButton ctrlSetText "Geo Guesser";
_ctrlContinueButton ctrlRemoveAllEventHandlers "ButtonClick";

_ctrlBottomBar ctrlSetText "Developed by Rougle";

