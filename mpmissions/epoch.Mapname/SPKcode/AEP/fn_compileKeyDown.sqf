SPK_functionKD = compileFinal preprocessFileLineNumbers "SPKcode\AEP\fn_keyDown.sqf";(findDisplay 46) displayAddEventHandler ["KeyDown","_this call SPK_functionKD"];
