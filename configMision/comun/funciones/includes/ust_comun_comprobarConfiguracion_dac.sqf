//=======================================================================================================//
// Archivo: ust_comun_comprobarConfiguracion_dac.sqf                                                     //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para comprobar que los parámetros de la misión son los que el editor  //
//              de la misión ha especificado. Este fichero comprueba sólo aquellos parámetros que están  //
//              relacionados con el DAC			                                                         //
// Cambios: 1.0 (2015/11/26) Versió estable de la plantilla.                                             //
//=======================================================================================================//

if (ust_comun_requiere_dac != 2) then {
    if (ust_comun_requiere_dac != ust_param_dac_habilitado) then {
        if (ust_param_dac_habilitado == 1) then {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_dac.sqf): El DAC es necesario para esta misión pero no está cargado."];
        } else {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_dac.sqf): El DAC está activado però s'ha de desactivar per aquesta missió."];
        };
    } else {
        if ((ust_param_dac_habilitado == 1) and !ust_mod_dac) then {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_dac.sqf): El DAC es necesario para esta misión pero el fichero dac_source.pbo no está cargado."];
        };
    };
} else {
    if ((ust_param_dac_habilitado == 1) and !ust_mod_dac) then {
        player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_dac.sqf): El DAC se utiliza en esta misión, pero el fichero dac_source.pbo no está cargado."];
    };

    if ((ust_param_asrai3_habilitado == 0) and ust_mod_dac) then {
        player sideChat format ["AVISO (ust_comun_comprobarConfiguracion_dac.sqf): El DAC no se utiliza en esta misión, pero el fichero dac_source.pbo está cargado."];
    };
};

if ((ust_param_dac_habilitado == 0) and (ust_param_dac_debug == 1)) then {
    player sideChat format ["AVISO (ust_comun_comprobarConfiguracion_dac.sqf): El debug del DAC está activado pero el DAC no lo está."];
};

//=========================================== FIN DEL FICHERO ===========================================//
