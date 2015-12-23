//=======================================================================================================//
// Archivo: ust_comun_comprobarConfiguracion_t8units.sqf                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/12/06                                                                    //
// Descripción: Este fichero sirve para comprobar que los parámetros de la misión son los que el editor  //
//              de la misión ha especificado. Este fichero comprueba sólo aquellos parámetros que están  //
//              relacionados con el T8 Units			                                                 //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

if (ust_comun_requiere_t8units != 2) then {
    if (ust_comun_requiere_t8units != ust_param_t8units_habilitado) then {
        if (ust_param_t8units_habilitado == 1) then {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_t8units.sqf): El T8 Units está activado per debe desactivarse para esta misión."];
        } else {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_t8units.sqf): El T8 Units está desactivado pero debe activarse para esta misión."];
        };
    };
};

if ((ust_param_t8units_habilitado == 0) and (ust_param_t8units_debug == 1)) then {
    player sideChat format ["AVÍS (ust_comun_comprobarConfiguracion_t8units.sqf): El debug del T8 Units está activado pero el T8 Units no lo está."];
};

if (ust_param_t8units_dac == 1) then {
    if (isNil "ust_param_dac_habilitado") then {
        player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_t8units.sqf): El T8 Units está configurado para utilizar el DAC pero este último no está cargado."];
    } else {
        if (ust_param_dac_habilitado == 0) then {
            player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_t8units.sqf): El T8 Units está configurado para utilizar el DAC pero este último, aunque está cargado, no está activado."];
        };
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
