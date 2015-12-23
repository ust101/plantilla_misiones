//=======================================================================================================//
// Archivo: fn_acre2_quitarRadios.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/28                                                                    //
// Descripción: Este documento sirve para eliminar las radios del inventario, de manera que se pueda     //
//              decidir que radios se utilizan durante la partirda en caso de que no se quiera usar      //
//              las que vienen por defecto en los perfiles.												 //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/04/28) Versió inicial.                                                             //
//          1.0 (2015/11/26) Versió estable de la plantilla.                                             //
//=======================================================================================================//

// Declaración de variables.
private["_unidad"];

_unidad = player;

// Esperar a que el ACRE2 estigui inicializado.
waitUntil{
    [] call acre_api_fnc_isInitialized;
};

// Quitar todas las funciones de ACRE2.
{
    _unidad removeItem _x;
} forEach( [] call acre_api_fnc_getCurrentRadioList);

//=========================================== FIN DEL FICHERO ===========================================//
