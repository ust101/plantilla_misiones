//=======================================================================================================//
// Archivo: fn_comun_procesarMods.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/06/09                                                                    //
// Descripción: Este documento sirve para procesar los mods que se han cargado y configuran la partida   //
//              de forma adecuada. Los mods se podrán customizar más adelante en el init.sqf             //
// Cambios: 0.1 (2015/06/09) Versión inicial                                                             //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

ust_mod_acre2 = isClass (configFile >> "CfgPatches" >> "acre_main");         // Comprobar si ACRE 2 está cargado.

ust_mod_ace3 = isClass (configFile >> "CfgPatches" >> "ace_common");         // Comprobar si ACE 3 está cargado.
ust_mod_ace3medical = isClass (configFile >> "CfgPatches" >> "ace_medical"); // Comprobar si ACE 3 (sistema médico) está cargado.
ust_mod_ace3advbal = isClass (configFile >> "CfgPatches" >> "ace_advanced_ballistics"); // Comprobar si ACE 3 (balística avanzada) está cargado.

ust_mod_dac = isClass (configFile >> "CfgPatches" >> "dac_source");          // Comprobar si el DAC está cargado.
ust_mod_asrai3 = isClass (configFile >> "CfgPatches" >> "asr_ai3_main");     // Comprobar si ASR AI está cargado.

if (isServer) then {
    publicVariable "ust_mod_acre2";
    publicVariable "ust_mod_ace3";
    publicVariable "ust_mod_ace3medical";
    publicVariable "ust_mod_ace3advbal";
    publicVariable "ust_mod_dac";
    publicVariable "ust_mod_asrai";
};

//=========================================== FIN DEL FICHERO ===========================================//
