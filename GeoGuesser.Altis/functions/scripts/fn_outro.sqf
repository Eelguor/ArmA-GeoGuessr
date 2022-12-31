disableSerialization;
disableUserInput true;
showChat false;
hint "";
1 fadeSound 0;
1 fadeSpeech 0;

private _outroCam = "camera" camCreate (player modelToWorldVisual [-5,0,1.85]);
_outroCam cameraEffect ["internal","back"];
_outroCam camSetFov 2.000;
_outroCam camSetTarget vehicle player;
_outroCam camSetRelPos [0,-1,1.85];
_outroCam camCommit 0;
waitUntil {camCommitted _outroCam};
_outroCam camSetFov 2;
_outroCam camSetRelPos [0,-5,1.85];
_outroCam camCommit 1;
8 cutFadeOut 3;
waitUntil {camCommitted _outroCam};
_outroCam camSetFov 9;
_outroCam camSetRelPos [0,-5,1050.85];
_outroCam camCommit 1.5;
waitUntil {camCommitted _outroCam};
cutText ["","BLACK",1];
uiSleep 1;
4 cutRsc ["SplashNoise","BLACK"];
uiSleep 0.25;

[
    format[
    "<t size='1.3' color='#00C10D'>Danke fürs Vorbeischauen <3</t><br/>%1!<br/></t>", profileName],
    0,
    0.2,
    10,
    0,
    0,
    8
] spawn BIS_fnc_dynamicText;
sleep 4;
showChat true;
disableUserInput false;
["",0,0.2,10,0,0,8] spawn BIS_fnc_dynamicText;
endMission "Left";
_outroCam cameraEffect ["terminate","back"];
camDestroy _outroCam;

