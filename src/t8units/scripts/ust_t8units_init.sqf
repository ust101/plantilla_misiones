//=======================================================================================================//
// Archivo: ust_t8units_init.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/12/06                                                                    //
// Descripción: Este fichero sirve para inicializar el T8 Units.	                                     //
// Cambios: 1.0 (2015/12/06) Versión inicial.                                                            //
//=======================================================================================================//

if (ust_param_t8units_habilitado == 0) exitWith {};

// T8_UnitINIT -> Load the functions
[] execVM "scriptsExternos\T8\T8_UnitsINIT.sqf";

// missionEXEC -> Load the unit setup & more
[] execVM "configMision\t8units\scripts\T8_missionEXEC.sqf";

//========================================== FIN DEL FICHERO ============================================//
