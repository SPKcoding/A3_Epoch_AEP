/*
	Title:			SPK_AEP
	Author: 		Sp4rkY [https://github.com/SPKcoding]
	Description:	Automatic Earplugs for Arma 3 Epoch
	Version:		v0.201
	File:			fn_initAEP.sqf
________________________________________________________________________________ */


if(!isDedicated && hasInterface)then{
	waitUntil{if isNil"EPOCH_LoadingScreenDone" then[{uiSleep .5;false},{if !(isNil"EPOCH_LoadingScreenDone")then{true}}]};
	_functionsAEP = [SPK_fnc_varsAEP,SPK_fnc_autoEP,SPK_fnc_compileKeyDown];
	{[] spawn _x}forEach _functionsAEP
};
