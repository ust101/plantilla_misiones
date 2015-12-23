//=======================================================================================================//
// Archivo: cc_intro_pantallaNegro_typeText.sqf                                                          //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/03                                                                    //
// Descripción: Este documento sirve para crear una pantalla de introducción y mostrar el nombre de la   //
//              mision, así como la fecha y la localización                                              //
// Cambios: 0.1 (2015/04/03) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Mostrar una pantalla negra.
titleCut ["", "BLACK FADED", 999];

[] Spawn {
    waitUntil{!(isNil "ust_preload_completado")};

    // Deshabilitar la simulación a todas las unidades durante la pantalla negra.
    {
        _x enableSimulation false;
    } forEach allUnits;

    // Mostrar una cita.
    titleText [introText,"PLAIN"];
    titleFadeOut 7;
    sleep 5;

    // Rehabilitar la simulación a todas las unidades durante la pantalla negra.
    {
        _x enableSimulation true;
    } forEach allUnits;

    // Nombre de la misión, dia y localización.
    [
        [
            [nombreMision,"<t color = '#F70D1A' align = 'right' shadow = '1' size = '1.2'>%1</t><br/>"],
            [([([daytime] call BIS_fnc_TimeToString),0,4] call BIS_fnc_trimString) + " " + str(date select 2) + "." + str(date select 1) + "." + str(date select 0),"<t align = 'right' shadow = '1' size = '1.0'>%1</t><br/>"],
            [lugarMision,"<t align = 'right' shadow = '1' size = '1.0'>%1</t>"]
        ],-safeZoneX,-safeZoneY
    ] spawn BIS_fnc_typeText;

    sleep 5;
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [6];
    "dynamicBlur" ppEffectCommit 0;
    "dynamicBlur" ppEffectAdjust [0.0];
    "dynamicBlur" ppEffectCommit 5;

    titleCut ["", "BLACK IN", 5];
};

//=========================================== FIN DEL FICHERO ===========================================//
