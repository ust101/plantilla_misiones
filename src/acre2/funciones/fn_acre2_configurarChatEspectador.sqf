//=======================================================================================================//
// Archivo: fn_acre2_configurarChatEspectador.sqf                                                        //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 28/04/2015                                                                    //
// Descripción: Configuración del chat de espectador i deshabilitar la voz al morir utilizando el ACRE2  //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/04/28) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Declaración de variables.
private["_unidad"];

_unitat = player;

// Si la unidad está viva no es necesario forzar nada.
if(alive _unidad) then {
    // Deshabilita el chat de espectador.
    [false] call acre_api_fnc_setSpectator;
} else {
    // En caso de que la unidad no esté viva, forzar el chat de espectador del ACRE2.
    [true] call acre_api_fnc_setSpectator;
};

//=========================================== FIN DEL FICHERO ===========================================//
