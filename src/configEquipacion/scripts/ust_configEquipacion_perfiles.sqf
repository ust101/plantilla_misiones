//=======================================================================================================//
// Archivo: ust_configEquipacion_perfiles.sqf                                                            //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/02                                                                    //
// Descripción: Este documento sirve para equipar los jugadores con los perfiles estándar del grupo de   //
//             la UST101. Se requiere los siguientes mods para funcionar correctamente:		             //                                                    
//                  - RHS United States Armed Forces (RHS USAF).                                         //
//                  - Advanced Combat Radio Environment 2 (ACRE2)                                        //
//                  - Advanced Combat Environment 3 (ACE3): http://ace3mod.com                           //
//					- @101_Weapons (RH M4 Robert Hammer Weapons)                                         //
//					- @101_Units (TRYK Multi Play Uniforms, Unidades UST101,etc..)						 //
//                                                                                                       //
//             Es necesario añadir la siguiente linia en el INIT de la unidad en el editor:              //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call ust_fnc_configEquipacion;                                  //
//                                                                                                       //
//             donde "ROL_JUGADOR" es una de las siguientes entrades:                                    //
//                                                                                                       //
//                  ROL_JUGADOR         PERFIL asociado                                                  //
//                  sl                  UST - Sargento M4A1+M320 OCP		                             //
//                  tl                  UST - Cabo M4A1+M320 OCP			                             //
//                  rfl                 UST - Fusilero M4A1 OCP                                          //
//                  rflat               UST - AT M4A1+AT4 OCP                                            //
//                  gr                  UST - Granadero M4A1+M320 OCP                                    //
//                  ar                  UST - Ametrallador Ligera M249 OCP                               //
//                  mg                  UST - Ametrallador Medio M240B OCP                               //
//                  at                  UST - AT M4A1+Javelin OCP                                        //
//                  aa                  UST - AT M4A1+Stinger OCP                                        //
//                  dm                  UST - Tirador SR-25EC OCP                                        //
//                  me                  UST - Médico M4A1 OCP                                            //
//                  exp                 UST - Explosivos M4A1 OCP                                        //
//                  sn                  UST - Francotirador M2010ESR OCP                                 //
//                  sp                  UST - Observador M4A1 OCP                                        //
//                  divsl               UST - Buzo lider M4A1		                                     //
//                  divme               UST - Buzo médico M4A1      		                             //
//                  divexp              UST - Buzo explosivos M4A1          		                     //
//                  div                 UST - Buzo M4A1                             	                 //
//                                                                                                       //
// Cambios: 0.1 (2015/11/26) Versión inicial.                                                            //
//=======================================================================================================//

private["_unidad","_tipoUnidad","_loadout", "_perfil"];

_unidad = player;
_tipoUnidad = _unidad getVariable ["ust_var_configEquipacion", "NIL"];

// Configurar equipo para cada unidad.
switch (_tipoUnidad) do
{
    // Sargento (Squad Leader).
    case "sl": {
        _perfil = "UST - Sargento M4A1+M320 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Cabo (Team leader).
    case "tl": {
        _perfil = "UST - Lider de equipo M4A1+M320 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Fusilero (Rifleman).
    case "rfl": {
        _perfil = "UST - Fusilero M4A1 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Fusilero AT4 (Rifleman AT4)
    case "rflat": {
        _perfil = "UST - AT M4A1+AT4 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Granadero (Grenadier).
    case "gr": {
        _perfil = "UST - Granadero M4A1+M320 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Ametralladora Ligera (Automatic Rifleman).
    case "ar": {
        _perfil = "UST - Ametralladora Ligera M249 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Ametralladora Media (Machine Gunner).
    case "mg": {
        _perfil = "UST - Ametralladora Media M240B OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Antitanque (Antitank).
    case "at": {
        _perfil = "UST - AT M4A1+Javelin OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Antiaéreo (Anti Air Gunner)
    case "aa": {
        _perfil = "UST - AT M4A1+Stinger OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Tirador designado (Designated Marksman).
    case "dm": {
        _perfil = "UST - Tirador SR-25EC OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Médico (Platoon Medic).
    case "me": {
        _perfil = "UST - Médico M4A1 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Especialista en explosivos (Explosive Specialist).
    case "exp": {
        _perfil = "UST - Explosivos M4A1 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Francotirador (Sniper).
    case "sn": {
        _perfil = "UST - Francotirador M2010ESR OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Observador (Spotter).
    case "sp": {
        _perfil = "UST - Observador M4A1 OCP";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Buzo líder de esquadra (Diver Squad Leader)
    case "divsl": {
        _perfil = "UST - Buzo lider M4A1";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Buzo médico (Diver Medic)
    case "divme": {
        _perfil = "UST - Buzo médico M4A1";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Buzo especialista en explosius (Diver Explosive Specialist).
    case "divexp": {
        _perfil = "UST - Buzo explosius M4A1";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Buzo (Diver).
    case "div": {
        _perfil = "UST - Buzo M4A1";
        if (ust_param_debugOutput == 1) then {
            _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): Usando el perfil %1 para el tipo de unidad %2.", _perfil, _tipoUnidad];
        };
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    default {
        _perfil = "UST - Fusilero M4A1 OCP";
        _unidad sideChat format ["DEBUG (ust_configEquipacion_perfiles.sqf): El perfil para el tipo de unidad %1 no està definit. Usando el perfil de Fusilero %2", _tipoUnidad, _perfil];
        _loadout = [_unidad,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
};

//=========================================== FIN DEL FICHERO ============================================//
