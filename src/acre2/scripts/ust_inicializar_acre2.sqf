//=======================================================================================================//
// Archivo: ust_inicialitzar_acre2.sqf                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/27                                                                    //
// Descripció: Este documento sirve para configurar el ACRE2										     //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Cambios: 0.1 (2015/04/27) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Incluir el fichero de configuración
#include "..\..\..\configMision\acre2\scripts\ust_acre2_configuracion.sqf"

// Configurar los presets para cada radio.
[] execVM "src\acre2\scripts\ust_acre2_configurarPresets.sqf";

// Si el script se está ejecutando en un servidor.
if (hasInterface) then {

    {
        _x call acre_api_fnc_babelAddLanguageType;
    } foreach ust_acre2_config_idomas;

    [] execVM "src\acre2\scripts\ust_acre2_initClient.sqf";
};

//=========================================== FIN DEL FICHERO ===========================================//
