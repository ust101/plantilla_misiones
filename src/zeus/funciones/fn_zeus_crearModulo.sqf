//=======================================================================================================//
// Archivo: fn_zeus_crearModulo.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/12/07                                                                    //
// Descripción: Este documento sirve para crear un módulo Zeus i asignarloa al administrador de la       //
//              partida.                                                                                 //
// Cambios: 1.0 (2015/12/07) Versión inicial.                                                            //
//=======================================================================================================//

if (ust_param_zeus_Admin == 0) exitWith {};
if (!isServer) exitWith {};

// Crear el modulo de Zeus
if (isNil "ust_var_centroSideLogic_Zeus") then {
    ust_var_centroSideLogic_Zeus = createCenter sideLogic; publicVariable "ust_var_centroSideLogic_Zeus";
    ust_var_grupoSideLogic_Zeus = createGroup ust_var_centroSideLogic_Zeus; publicVariable "ust_var_grupoSideLogic_Zeus";
};

ust_var_moduloZeus = ust_var_grupoSideLogic_Zeus createUnit ["ModuleCurator_F",[0,0,0] , [], 0, ""];
ust_var_moduloZeus setVariable ["showNotification", false, true];
ust_var_moduloZeus setVariable ["birdType", "", true];
ust_var_moduloZeus setVariable ["Owner", "#adminLogged", true];
ust_var_moduloZeus setVariable ["Addons", 3, true];
ust_var_moduloZeus setVariable ["Forced", 0, true];
publicVariable "ust_var_moduloZeus";

//=========================================== FIN DEL FICHERO ===========================================//
