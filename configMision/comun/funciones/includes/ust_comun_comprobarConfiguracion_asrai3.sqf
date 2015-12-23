//=======================================================================================================//
// Archivo: ust_comun_comprobarConfiguracion_asrai3.sqf                                                  //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para comprobar que los parámetros de la misión son los que el editor  //
//              de la misión ha especificado. Este fichero comprueba sólo aquellos parámetros que están  //
//              relacionados con el ASR AI3                                                              //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

if (ust_comun_requiere_asrai3 != 2) then {
    if (ust_comun_requiere_asrai3 != ust_param_asrai3_habilitado) then {
        if (ust_param_asrai3_habilitado == 1) then {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_asrai3.sqf): El mod ASR AI 3 es necesario para esta misión pero no está cargado."];
        } else {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_asrai3.sqf): El ASR AI 3 está activo pero debe desactivarse para esta misión."];
        };
    } else {
        if ((ust_param_asrai3_habilitado == 1) and !ust_mod_asrai3) then {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_asrai3.sqf): El mod ASR AI 3 es necesario para esta misión pero el fichero asr_ai3_main.pbo no está cargado."];
        };
    };
} else {
    if ((ust_param_asrai3_habilitado == 1) and !ust_mod_asrai3) then {
        player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_asrai3.sqf): El mod ASR AI 3 se utiliza para estam isión, pero el fichero asr_ai3_main.pbo no está cargado."];
    };

    if ((ust_param_asrai3_habilitado == 0) and ust_mod_asrai3) then {
        player sideChat format ["AVISO (ust_comun_comprobarConfiguracion_asrai3.sqf): El mod ASR AI 3 no se utiliza en esta misión, pero el fichero asr_ai3_main.pbo está cargado."];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
