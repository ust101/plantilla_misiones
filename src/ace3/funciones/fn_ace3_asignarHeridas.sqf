//=======================================================================================================//
// Archivo: fn_ace3_asignarHeridas.sqf                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/06                                                                    //
// Descripción: Este documento sirve para modificar las heridas en distintas pares del cos de una unidad //
//              usando el sistema médico ACE3. http://ace3mod.com/wiki/index.html		                 //
//              Arguments:                                                                               //
//               - 0: objeto al que se le modificarán las heridas <OBJECT>.                              //
//               - 1: parte del cuerpo <STRING>.                                                         //
//               - 2: cantidad de daño a asignar <FLOAT>.                                                //
//               - 3: proyectil <STRING>.                                                                //
//               - 4: Actualizar o reasignar <BOOL><OPCIONAL>.                                           //
// Cambios: 0.1 (2015/11/06) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

params ["_unidad", "_partedelCuerpo", "_asignarHerida", "_proyectil", ["_actualizar", false]];
private ["_estadoActual"];

if (_actualizar) then {
    // Obtener el esatdo de las distintas partes del cuerpo.
    _estadoActual = player getvariable ["ace_medical_bodyPartStatus", [0,0,0,0,0,0]];
    // Actualizar la cantidad de daño en una determinada parte del cuerpo.
    _asignarHerida = _asignarHerida + _estadoActual select ([_partedelCuerpo] call ace_medical_fnc_selectionNameToNumber);
};

// Asignar la herida.
[_unidad, _partedelCuerpo, _asignarHerida, _unidad, _proyectil, -1] call ace_medical_fnc_handleDamage;

//=========================================== FIN DEL FICHERO ===========================================//