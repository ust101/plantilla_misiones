//=======================================================================================================//
// Archivo: fn_comun_variablesComunes.sqf                                                                //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/01                                                                    //
// Descripción: Este documento srive para declarar varialbes comunies en los scripts.                    //
// Cambios: 0.1 (2015/04/01) Versión  inicial.                                                           //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Variables privadas.
private ["_largo_gruposUST", "_largo_frecuenciasUST", "_largo_frecuenciasUSTLR"];

// Lista de unidades con "Rifleman Radio" (fn_configEquipacion.sqf).
ust_var_listaRadioSoldados = ["rfl", "rflat", "gr", "ar", "dm", "mg", "amg", "at", "aat", "aa", "aaa", "en", "exp", "div", "hplt", "jplt"];

// Lista de unidades con "Short Range Radio" (fn_configEquipacion.sqf).
ust_var_listaRadioOficiales = ["pl", "psg", "rto", "fo", "me", "sl", "tl", "sn", "sp", "divsl", "divme"];

// Lista de unidades con "Long Range Radio" (fn_configEquipacion.sqf).
ust_var_listaRadioRTO = ["rto", "fo","sl"];

//=======================================================================================================//
// Configuración de las radios: las siguientes variables ayudan a tener una config automática de las     //
// radios y sus frecuencias. Valido para ACRE2 y TFAR													 //
//                                                                                                       //
// - ust_var_gruposUST: define la estructura de grupo que se usa en la ust101.						     //
//                      Si se añaden grupos y se quiere mantener la configuracion de las radios, es      //
//                      necesario moficiar la variables para que las medidas sean las mismas. Cuando se  //
//                      añadan grupos es importante tambien que la estructura se mantenga 				 //
//                                                                                                       //
//                                  [ GrupoX, SubgrupoX1, SubgrupoX2, ... , SubgrupoXn]                  //
//                                                                                                       //
//                    La configuración de las radios se puede encontrar en:                              //
//                        "scripts/radios/acre2/fn_acre2_configurarCanals.sqf" en el cas de ACRE2.       //
//                                                                                                       //
// - ust_var_frecuenciasUST: se usa de forma conjunta con "ust_var_gruposUST" para poder configurar las  //
//                           frecuencas de las radios del ACRE2. Es necesario que las dimensiones de las //
//                           dos variables sean las mismas.			                                     //
//=======================================================================================================//

ust_var_gruposUST = [
    ["Alpha", "Alpha 1", "Alpha 2", "Alpha 3"],
    ["Bravo", "Bravo 1", "Bravo 2", "Bravo 3"],
    ["Charlie", "Charlie 1", "Charlie 2", "Charlie  3"],
    ["Charlie Mike"],
    ["Eco Kilo"],
    ["MAPO"]
];

ust_var_frecuenciasUST = [
    [200, 201, 202, 203],
    [210, 211, 212, 213],
    [220, 221, 222, 223],
    [41],
    [51],
    [61]
];

ust_var_frecuenciasUSTLR = [
    [41],
    [42],
    [43],
    [40],
    [30],
    [50]
];

// Comprueba que las dos variables tengan la misma longitud.
_largo_gruposUST = count ust_var_gruposUST;
_largo_frecuenciasUST = count ust_var_frecuenciasUST;
_largo_frecuenciasUSTLR = count ust_var_frecuenciasUSTLR;

if (_largo_gruposUST != _largo_frecuenciasUST) then {
    player sideChat format ["ERROR (fn_variables_comunes.sqf): Las variables ""_largo_gruposUST"" y ""_largo_frecuenciasUST"" no tienen la misma longitud."];
} else {
    {
        if ( count _x != count (ust_var_frecuenciasUST select _forEachIndex) ) then {
            player sideChat format ["ERROR (fn_variables_comunes.sqf): El subgrupo %1 de las variables ""_largo_gruposUST"" y ""_largo_frecuenciasUST"" no tienen la misma longitud.", _forEachIndex];
        };
    } forEach ust_var_gruposUST;
};

if (_largo_gruposUST != _largo_frecuenciasUSTLR) then {
    player sideChat format ["ERROR (fn_variables_comunes.sqf): Las varibles ""_largo_gruposUST"" y ""_largo_frecuenciasUSTLR"" no tienen la misma longitud."];
};

//=======================================================================================================//
// Configuración de los puntos de teleport: Las siguientes variables definen los puntos de teleport que  //
// hay disponibles en la misión. Estos puntos de teleport se configuran durante la fase de postInit,     //
// en la función ust_fnc_misc_teleport_configurarPuntos.                                                 //
//                                                                                                       //
// - ust_var_puntosTeleport_Inicio: son los distintos objetos que permitiran a la unidad teletransportarse//
//                               a traves de una acción. Estos objetos son los que recibirán la acción   //
//                               de teleport.                                                            //
// - ust_var_puntoTeleport_Destino: contienen los nombres de los marcadores donde se teletransportará la //
//                               unidad. Por cada entrada en la varibale ust_var_puntosTeleport_Inicio   //
//                               es necesario poner un array con los diferentes destinos posibles.       //
//                                                                                                       //
// Ejemplo: Una mision con 3 posibles puntos de teleport. Desde la base se puede accedir tanto al HQ1    //
//          como al HQ2, perp desde HQ1 como HQ2 sólo se puede accedir a la base						 //
//																										 //
//    puntosInicio = [teleportBase, teleportHQ1, teleportHQ2];                                           //
//    puntosDestino = [["marker_teleportHQ1", "marker_teleportHQ2"],                                     //
//                    ["marker_teleportBase"],                                                           //
//                    ["marker_teleportBase"]                                                            //
//                    ];                                                                                 //
//=======================================================================================================//

ust_var_puntosTeleport_Destino = [];
ust_var_puntosTeleport_Inicio = [];

if (count ust_var_puntosTeleport_Destino != count ust_var_puntosTeleport_Inicio) exitWith {
    player sideChat format ["ERROR (fn_misc_teleport_configurarPuntos.sqf): Las variables ""puntosTeleport_Destino"" y ""puntosTeleport_Inicio"" no tienen la misma longitud."];
};
//=========================================== FIN DEL FICHERO ===========================================//
