//=======================================================================================================//
// Archivo: ust_acre2_initClient.sqf                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/28                                                                    //
// Descripción: Este documento sirve para configurar el ACRE2     										 //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/04/28) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

private["_unidad","_nomPreset"];

// Damos tiempo a ACRE2 para inicializarse.
sleep 3;

_unidad = player;

// Configurar los presets de radio dependiendo de la facción.
if (ust_acre2_config_dividirFrequencies) then {
    switch(side _unidad) do {
        case blufor: {_nomPreset = "default2"};
        case opfor: {_nomPreset = "default3"};
        case independent: {_nomPreset = "default4"};
        default {_nomPreset = "default"};
    };
} else {
    _nomPreset = "default";
};

["ACRE_PRC343", _nomPreset] call acre_api_fnc_setPreset;
["ACRE_PRC148", _nomPreset] call acre_api_fnc_setPreset;
["ACRE_PRC152", _nomPreset] call acre_api_fnc_setPreset;
["ACRE_PRC117F", _nomPreset] call acre_api_fnc_setPreset;

// Configurar el ACRE2. Si el jugador esta vivo, las radios que vienen por defecto se quitan i se asignan
// las radios que se deseen utilizando la dependencia del rol tal como se ha especificado en el fichero de configuración
// "ust_acre2_configuracion.sqf". El chat de espectador se configurará dependiendo de si el jugador está vivo o no.

// Si el jugador está vivo, se procede
if(alive _unidad) then {
    // Esperar hasta que la equipación esté asignada.
    waitUntil{(_unidad getVariable ["ust_var_configEquipacio_Lista", false])};

    // Definir idiomas para cada bando.
    [] call ust_fnc_acre2_determinarIdiomas;

    // Quitar todas las radios del invenatario.
    [] call ust_fnc_acre2_quitarRadios;

    // Añadir las radioas a cada unidad.
    [] call ust_fnc_acre2_anadirRadios;

    // Configurar los canales activos.
    if (ust_acre2_config_configurarCanalesPorEquipo) then {
        [] call ust_fnc_acre2_configurarCanales;
    };

    // Configurar el cha de espectador.
    [] call ust_fnc_acre2_configurarChatEspectador;

    if ( ust_param_debugOutput == 1 ) then {
        _unidad sideChat format ["DEBUG (fn_acre2_initClient.sqf): Radios configuradas."];
    };
} else {
    // El jugador no está vivo y en consecuencia no hace falta configurar las radios.
    [] call ust_fnc_acre2_configurarChatEspectador;
};

//=========================================== FIN DEL FICHERO ===========================================//
