//=======================================================================================================//
// Archivo: fn_comun_comprobarConfiguracion.sqf                                                          //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/09/29                                                                    //
// Descripción: Este fichero sirve para comprobar que la configuración de los parámetros de la misión    //
//              son los que el creador de la misión ha especificado                                      //
// Cambios: 0.1 (2015/09/29) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

//=======================================================================================================//
// Configuración de los mods y scripts necesarios para la misión. Cada una de las siguientes variables   //
// pueden tenir los valores siguientes                                                                   //
//   - 0: El mod o script debe estar desactivado.                                                        //
//   - 1: El mod o script debe estar activado.                                                           //
//   - 2: No importa si el mod o script está activado o desactivado para la misión.                      //
//=======================================================================================================//

ust_comun_requiere_ACE3        = 2;  // Variable para controlar el uso del Advanced Combat Environment 3.
ust_comun_requiere_ACE3_BasMed = 2;  // Variable para controlar el uso del sistema médico básico de ACE 3.
ust_comun_requiere_ACE3_AdvMed = 2;  // Variable para controlar el uso del sistema médico avanzado de ACE 3.
ust_comun_requiere_ACE3_AdvBal = 2;  // Variable para controlar el uso del sistema de balística avanzada de ACE 3.
ust_comun_requiere_ACRE2       = 2;  // Variable para controlar el uso del Advanced Combat Radio Environment 2.
ust_comun_requiere_asrai3      = 2;  // Variable para controlar el uso del ASR AI 3.
ust_comun_requiere_dac         = 2;  // Variable para controlar el uso del Dynamic-AI-Creator (DAC).
ust_comun_requiere_perfilesUST  = 2;  // Variable para controlar el uso de los perfiles de Virtual Arsenal del grupo UST.
ust_comun_requiere_t8units     = 2;  // Variable para controlar el uso del T8 Units.


// Advanced Combat Environment 3 (ACE 3).
if (isClass(missionconfigfile>>"CfgComponents">>"ace3")) then {
    if (!ust_mod_ace3) then {
        player sideChat format ["ERROR: El addon de ACE 3 está cargado pero no es necesario para esta misión."];
    } else {
        #include "includes\ust_comun_comprobarConfiguracion_ace3.sqf"
    };
} else {
    if (ust_mod_ace3) then {
        player sideChat format ["ERROR: El addon de ACE 3 no está cargado per es necesario para esta misión."];
    };
};

// Advanced Combat Radio Environment 2 (ACRE2)
if (isClass(missionconfigfile>>"CfgComponents">>"acre2")) then {
    if (!ust_mod_acre2) then {
        player sideChat format ["ERROR: El addon de ACRE2 está cargado pero no es necesario para esta misión."];
    } else {
        #include "includes\ust_comun_comprobarConfiguracion_acre2.sqf"
    };
} else {
    if (ust_mod_acre2) then {
        player sideChat format ["ERROR: El addon de ACRE2 no está cargado per es necesario para esta misión."];
    };
};

// ASR AI 3.
if (isClass(missionconfigfile>>"CfgComponents">>"asrai3")) then {
    if (!ust_mod_asrai3) then {
        player sideChat format ["ERROR: El addon de ASR AI 3 está cargado pero no es necesario para esta misión."];
    } else {
        #include "includes\ust_comun_comprobarConfiguracion_asrai3.sqf"
    };
} else {
    if (ust_mod_asrai3) then {
        player sideChat format ["ERROR: El addon de ASR AI 3 no está cargado per es necesario para esta misión."];
    };
};

// Dynamic-AI-Creator (DAC).
if (isClass(missionconfigfile>>"CfgComponents">>"dac")) then {
    if (!ust_mod_dac) then {
        player sideChat format ["ERROR: El addon del DAC está cargado pero no es necesario para esta misión."];
    } else {
        #include "includes\ust_comun_comprobarConfiguracion_dac.sqf"
    };
} else {
    if (ust_mod_dac) then {
        player sideChat format ["ERROR: El addon del DAC no está cargado per es necesario para esta misión."];
    };
};

// T8 Units.
if (isClass(missionconfigfile>>"CfgComponents">>"t8units")) then {
    if (ust_comun_requiere_t8units == 0) then {
        player sideChat format ["ERROR: El addon del T8 Units está cargado pero no es necesario para esta misión."];
    } else {
        #include "includes\ust_comun_comprobarConfiguracion_t8units.sqf"
    };
} else {
    if (ust_comun_requiere_t8units == 1) then {
        player sideChat format ["ERROR: El addon del T8 Units no está cargado per es necesario para esta misión."];
    };
};

// Perfiles de Virtual Arsenal del grupo UST.
if (ust_comun_requiere_perfilesUST != 2) then {
    if (ust_comun_requiere_perfilesUST != ust_param_utilizarPerfiles) then {
        if (ust_param_utilizarPerfiles == 1) then {
            player sideChat format ["ERROR: Los perfiles del grupo UST están seleccionados pero no se utilizan en esta misión."];
        } else {
            player sideChat format ["ERROR: Los perfiles del grupo UST no están seleccionados y se deben de utilizar en esta misión."];
        };
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
