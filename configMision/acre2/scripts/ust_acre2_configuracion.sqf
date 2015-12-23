//=======================================================================================================//
// Archivo: ust_acre2_configuracion.sqf                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/27                                                                    //
// Descripción: Este documento sirve para definir parametros básicos para la configuración del ACRE2     //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/04/27) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

//=======================================================================================================//
// Configuración de la misión.                                                                           //
//=======================================================================================================//

// ACRE2: función per configurar la misión.
//        - BABEL:
//            * false: Deshabilitar los idiomas por bando.
//            * true: Habilitar los idiomas por bando.
//        - RADIOS:
//            * false: Los canales se configuran igual por bando.
//            * true: Los canales se deben configurar de forma distinta por bando.
[true, true] call acre_api_fnc_setupMission;

// ACRE2: Permite que la IA detecte los jugadores cuando hablan.
//        - false: La IA no puede escuchar a los jugadores.
//        - true: La IA puede escuchar a los jugadores segun un modelo cuadrático invertido.
[true] call acre_api_fnc_setRevealToAI;

//=======================================================================================================//
// Configuración de las funcionalidades de BABEL.                                                        //
//=======================================================================================================//

ust_acre2_config_idomas = [["ingles","Inglés"],["ruso","Ruso"],["persa","Persa"],["griego","Griego"]];

ust_acre2_config_idioma_rhsusaf = ["ingles"];
ust_acre2_config_idioma_rhsafrf = ["ruso"];
ust_acre2_config_idioma_blufor = ["ingles"];
ust_acre2_config_idioma_opfor = ["persa"];
ust_acre2_config_idioma_indfor = ["griego"];
ust_acre2_config_idioma_fia = ["ingles","griego"];
ust_acre2_config_idioma_civ = ["griego"];

//=======================================================================================================//
// Configuración de la dificultad.                                                                       //
//=======================================================================================================//

// ACRE2: Modelado de la pérdida de señal debido al terreno. Valor entre 0 y 1.
//        - 0: Pérdida de senyal debido al terreno desactivada.
//        - 1: Pérdida de senyal debido al terreno totalmente simulada.
[1] call acre_api_fnc_setLossModelScale;

// ACRE2: Duplex
//        - false: No se reciben transmisiones mientras se usa la radio.
//        - true: Se reciben transmisiones mientras se habla.
[true] call acre_api_fnc_setFullDuplex;

// ACRE2: Interferencias entre jugadores.
//        - false: no se modelaran interferencias para transmisiones simultaneas en la misma frecuencia..
//        - true: interferencias para transmisiones simultaneas en la misma frecuencia.
[true] call acre_api_fnc_setInterference;

//=======================================================================================================//
// Configuración de la asignacion de radios en función del rol.                                          //
//=======================================================================================================//

// Variable para controlar si se distribuyen radios en la partida. Útil en caso de misiones de supervivencia.
//   - false: no se distribuyen radios.
//   - true: se distribuyen radios.
ust_acre2_config_distribuirRadios = true;

// Variable para controlar si las frecuencias deben dividirse por bando.
//   - false: los bandos comparten frecuencias.
//   - true: las frecuencias se dividen por bandos.
ust_acre2_config_dividirFrecuencias = true;

// Variable para controlar si se distribuye la radio definida en la varibales "ust_acre2_radioSoldados", por
// defecto una AN/PRC 343, en todas las unidades.
//    - false: sólo las unidades en la lista "ust_acre2_listaRadioSoldados" reciben esta radio.
//    - true: todas las unidades reciben la radio definida en "ust_acre2_radioSoldados".
ust_acre2_config_todosRadioSoldados = true;

// Variable para controlar si se configuran los canales de las radios por escuadras y equipo. Las frecuancias usadas
// son las que vienen por defecto en el fichero "configMision/scripts/comun/ust_comun_variablesComunes.sqf".
//   - false: los canales se dejan sin configurar.
//   - true: los canales se configuran dependiendo de la escuadra, del equipo de fuego y del tipo de radio.
ust_acre2_config_configurarCanalesPorEquipo = true;

// Radio asignada a los doldados.
ust_acre2_radioSoldados = "ACRE_PRC343";

// Radio asignada a los oficiales.
ust_acre2_radioOficiales = "ACRE_PRC152";

// Radio para los RTO's.
ust_acre2_radioRTO = "ACRE_PRC117F";

// Nombre de los canales de las radios AN/PRC 148, AN/PRC 152 y AN/PRC 117F.
ust_acre2_config_listaCanales = ["ALPHA","BRAVO","CHARLIE","DELTA","CENTRO DE MANDO","ECO KILO","MAPO"];
ust_acre2_config_FrecCanales = [200, 201, 202, 203, 41, 51, 61];

//=========================================== FIN DEL FICHERO ===========================================//
