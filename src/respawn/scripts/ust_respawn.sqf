//=======================================================================================================
// Archivo: ust_respawn.sqf                                                                                 
// Autor: CC_Magnetar                                                                                    
// Adaptado por: [UST] Artur		
// Versión: 1.0                                                                                           
// Creación del Documento: 2015/10/02                                                                      
// Descripción: Este documento sirve para configurar el respawn de las unidades como espectador. De momento
//              se usa el respaza el respawn de ACE3 (http://ace3mod.com/wiki/feature/spectator.html)     
//              si este está disponible o el que hay por defecto de bohemia en caso contrario.          
// Cambios: 0.1 (2015/10/02) Versión inicial.                                                              
//          1.0 (2015/11/26) Versión estable de la plantilla.                                              
//=======================================================================================================

// Parámetres que se pasan al hacer onPlayerRespawn y onPlayerKilled.
params [["_unidad",objNull], ["_asesino",objNull], ["_respawn",0], ["_respawnDelay",0]];

private ["_rscLayer"];
_rscLayer = "BIS_fnc_respawnSpectator" call bis_fnc_rscLayer;

if (isNull _asesino) then {
    _asesino = _unidad;
};

if ((_respawn == 0) or (_respawn == 1) and ({alive _x} count allPlayers <= 0)) exitWith {
    remoteExec ["ust_fnc_finalizarMision", 0, true];
};

if (alive _unidad) then {
    // Si hay respawn del tipo BIRD.
    if (_respawn == 1) then {
        // Esconde el cuerpo en caso de que sea una gaviota.
       if (_unidad isKindOf "seagull") then {
           if (ust_mod_ace3) then {
              [true] call ace_spectator_fnc_stageSpectator;
           } else {
               _unidad remoteExecCall [0, true];
           };
       };

        // Si está el ACE3 cargado usa el modo espectador del ACE 3. En caso contrario se usa el modo por 
        // defecto de Bohemia.
        if (ust_mod_ace3) then {
            if ( ust_param_debugOutput == 1) then {
                player sideChat format ["DEBUG (ust_respawn_espectador.sqf): Utilizando el modo espectador de ACE."];
            };

            // Configura la cámara de espectador de ACE3.
            [0, _asesino] call ace_spectator_fnc_setCameraAttributes;
            [true] call ace_spectator_fnc_setSpectator;
        } else {
            if ( ust_param_debugOutput == 1) then {
                player sideChat format ["DEBUG (ust_respawn_espectador.sqf): Utilizando el modo espectador de BI."];
            };

            // Poner las unidades en modo espectador dependiendo del sistema de rádio.
            // Advanced Combat Radio Environment 2 (ACRE 2)
            if (ust_mod_acre2) then {
                [true] call acre_api_fnc_setSpectator;
            };

            RscSpectator_allowFreeCam = true;
            BIS_fnc_feedback_allowPP = false;   // Deshabilita los efectos de muerte.
            _rscLayer cutrsc ["RscSpectator","plain"];
        };
    } else {
        if (ust_mod_ace3) then {
            [false] call ace_spectator_fnc_setSpectator;
        } else {

            // Salir del modo espectador dependiendo del sistema de rádio.
            // Advanced Combat Radio Environment 2 (ACRE 2)
            if (ust_mod_acre2) then {
                [true] call acre_api_fnc_setSpectator;
            };

            RscSpectator_allowFreeCam = false;
            BIS_fnc_feedback_allowPP = true;
            _rscLayer cuttext ["","plain"];
        };

        // Asignar la equipación
        _tipoUnidad = _unidad getVariable "ust_var_configEquipacion";
        [_tipoUnidad, _unidad] call ust_fnc_configEquipacion;
    };
} else {

    // No se entra en modo respawn si el tiempo es menos de 1s.
    if (playerRespawnTime <= 1) exitWith {};

    // Si está el ACE3 cargado, usa el modo espectador de ACE 3. En caso contrario se utilitza el modo 
    // por defecto de Bohemia.
    if (ust_mod_ace3) then {
        if ( ust_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (ust_respawn_espectador.sqf): Utilizando el modo espectador de ACE."];
        };

        // Configura la cámara del espectador de ACE3.
        [0, _asesino] call ace_spectator_fnc_setCameraAttributes;
        [true] call ace_spectator_fnc_setSpectator;
    } else {
        if ( ust_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (ust_respawn_espectador.sqf): Utilizando el modo espectador de BI."];
        };

        // Poner las unidades en modo espectador dependiendo del sistema de rádio.
        // Advanced Combat Radio Environment 2 (ACRE 2)
        if (ust_mod_acre2) then {
            [true] call acre_api_fnc_setSpectator;
        };

        RscSpectator_allowFreeCam = true;
        BIS_fnc_feedback_allowPP = false;   // Deshabilita los efectos de muerte.
        _rscLayer cutrsc ["RscSpectator","plain"];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
