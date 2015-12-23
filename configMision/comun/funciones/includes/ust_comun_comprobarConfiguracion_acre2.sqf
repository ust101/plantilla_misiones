//=======================================================================================================//
// Archivo: ust_comun_comprobarConfiguracion_acre2.sqf                                                   //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para comprobar que los parámetros de la misión son los que el editor  //
//              de la misión ha especificado. Este fichero comprueba sólo aquellos parámetros que están  //
//              relacionados con el ACRE2                                                                //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

if (ust_comun_requiere_ACRE2 != 2) then {
    if (ust_mod_acre2 and (ust_comun_requiere_ACRE2 == 0)) then {
        player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_acre2.sqf): El ACRE2 está cargado pero esta misión no lo soporta."];
    };

    if (!ust_mod_acre2 and (ust_comun_requiere_ACRE2 == 1)) then {
        player sideChat format ["ERROR (ust_comun_comprobarConfiguracion_acre2.sqf): El ACRE2 es necesario para esta misión pero no está cargado."];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
