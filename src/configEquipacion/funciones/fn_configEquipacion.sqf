//=======================================================================================================//
// Archivo: configEquipacion.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/02                                                                    //
// Descripción: Este documento sirve para equipar los jugadores dependiendo del rol i la facción. Cuando //
//             se configura el equipo de la unidad, en la siguiente linia se debe añadir en el INIT del  //
//             editor:                                                                                   //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacion;                                   //
//                                                                                                       //
//             o bien:                                                                                   //
//                                                                                                       //
//                  ["ROL_JUGADOR",this,"FACCIÓN"] call cc_fnc_configEquipacion;                         //
//                                                                                                       //
//             para forzar una facción específica para la unidad.                                        //
//                                                                                                       //
//             donde "ROL_JUGADOR" es una de las siguietnes entradas:                                    //
//                                                                                                       //
//                  ROL_JUGADOR             Rol asignado                                                 //
//                  pl                      Jefe de Sección (Platoon Leader)                             //
//                  psg                     Sargento de sección (Platoon Sergeant)                       //
//                  rto                     Operador de radio (Platoon Radiotelephone Operator)          //
//                  fo                      Observador avanzado (Forward Observer)                       //
//                  me                      Médico (Platoon Medic)                                       //
//                  sl                      Líder de escuadra (Squad Leader)                             //
//                  tl                      Líder de equipo (Team Leader)                                //
//                  rfl                     Fusilero (Rifleman)                                          //
//                  rflat                   Fusilero con AT4 (Rifleman with AT4)                         //
//                  gr                      Granadero (Grenadier)                                        //
//                  ar                      Fusilero automatico (Automàtic Rifleman)                     //
//                  dm                      Tirador designado (Designated Marksman)                      //
//                  mg                      Ametrallador (Machine Gunner)                                //
//                  amg                     Assitente de ametrallador (Assitant Machine Gunner)          //
//                  at                      Antitanque (Antitank)                                        //
//                  aat                     Assistente de antitanque (AT Ammo handler)                   //
//                  aa                      Anti aéreo (Anti Air gunner)                                 //
//                  aaa                     Assistente de anti aéreo (Anti Air Assitant)                 //
//                  en                      Ingeniero (Engineer)                                         //
//                  exp                     Explosivos (Explosives)                                      //
//                  sn                      Francotirador (Sniper)                                       //
//                  sp                      Observador (Spotter)                                         //
//                  divsl                   Buzo líder de escuadra (Diver Squad Leader)		             //
//                  divme                   Buzo médico (Diver Medic)									 //
//                  divexp                  Buzo especialista en explosivos (Diver Explosive)        	 //
//                  div                     Buzo (Diver)                                           		 //
//                                                                                                       //
//                  hmmwv                   Equipación para HMMWVs                                       //
//                                                                                                       //
//             y "FACCIÓN" una de les siguientes entradas:                                               // //                                                                                                       //
//                  FACCIÓN                 Facción forzada de la unidad en términos de equipación		 //
//                  blu_f                   Blue Force                                                   //
//                  blu_g_f                 FIA                                                          //
//                  ind_g_f                 FIA                                                          //
//                  opf_g_f                 FIA                                                          //
//                  opf_f                   Opposing Force                                               //
//                  ind_f                   Independent Force                                            //
//                  civ_f                   Facción civil                                                //
//                  rhs_faction_usarmy_wd   United States Army (Woodland)                                //
//                  rhs_faction_usarmy_d    United States Army (Desert)                                  //
//                  rhs_faction_usmc_wd     United States Marine Corps (Woodland)                        //
//                  rhs_faction_usmc_d      United States Marine Corps (Desert)                          //
//                  rhs_faction_insurgents  Insurgents                                                   //
//                  rhs_faction_vpvo        Soviet Air Defense Forces (Voyska protivovozdushnoy oborony) //
//                  rhs_faction_vdv         Russian Airborne Troops (Vozdushno-desantnye voyska)         //
//                                                                                                       //
// Cambios: 0.1  (2015/04/02) Versió inicial.                                                            //
//         1.0  (2015/11/26) Versió estable de la plantilla.                                             //
//=======================================================================================================//

// Declaración de variables.
params ["_tipoUnidad", "_unidad", ["_faccionUnidad", nil]];

_tipoUnidad = toLower _tipoUnidad;

// En función donde se ejecute el script, averiguar si es necesario ejecutarlo o no
if !(local _unidad) exitWith {};

if ( isNil "_faccionUnidad") then {
    _faccionUnidad = toLower (faction _unidad);
} else {
    _faccionUnidad = toLower _faccionUnidad;
};

// Guarda en una variable pública el tipo de unidad.
_unidad setVariable ["ust_var_configEquipacion",_tipoUnidad,true];

// Empieza a asignar el equipo a los distintos roles.
_unidad setVariable ["ust_var_configEquipacion_Lista",false,true];

// DEBUG OUTPUT.
if (ust_param_debugOutput == 1) then {
    _unidad sideChat format ["DEBUG (fn_configEquipacion.sqf): facción de la unidad: %1", _faccionUnidad];
};

// Incluye el fichero de configuración de equipaciones
#include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_opciones.sqf";

// Equipación para la facción BLUFOR.
if (_faccionUnidad == "blu_f") then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_blu_f.sqf"
};

// Equipación per la facción FIA.
if (_faccionUnidad in ["blu_g_f","ind_g_f","opf_g_f"]) then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_fia_f.sqf"
};

// Equipación per la facción OPFOR.
if (_faccionUnidad == "opf_f") then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_opf_f.sqf"
};

// Equipación per la facción independent.
if (_faccionUnidad == "ind_f") then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_ind_f.sqf"
};

// Equipación per la facción civil.
if (_faccionUnidad == "civ_f") then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_civ_f.sqf"
};

// Equipación per la facción RHS USA "United States Army" y "United States Marine Corps".
if ((_faccionUnidad find "rhs_faction_usarmy_") >= 0) then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_rhs_usaf.sqf"
};

// Equipación per la facción RHS "Insurgents".
if (_faccionUnidad == "rhs_faction_insurgents") then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_rhs_insurgents.sqf"
};

// Equipación per la facción russa "Russian Airborne Troops".
if (_faccionUnidad == "rhs_faction_vdv" ) then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_rhs_vdv.sqf"
};

// Equipación per la facción russa "Soviet Air Defense Forces".
if (_faccionUnidad == "rhs_faction_vpvo" ) then {
    #include "..\..\..\configMision\configEquipacion\scripts\ust_configEquipacion_rhs_vpvo.sqf"
};

// Se finaliza la asignación de equipación
_unidad setVariable ["ust_var_configEquipacion_Lista",true,true];

//=========================================== FIN DEL FICHERO ===========================================//
