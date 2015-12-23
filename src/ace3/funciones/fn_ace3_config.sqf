//=======================================================================================================//
// Archivo: fn_ace3_config.sqf                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.1                                                                                          //
// Creación del Documento: 2015/05/28                                                                    //
// Descripción: Este documento sirve para configurar una misión con ACE3 sin tener que poner manualmente //
//              los módulos en el editor. http://ace3mod.com/wiki/index.html              		         //
//              http://ace3mod.com/wiki/missionmaker/modules.html                                        //
// Cambios: 0.1 (2015/05/28) Versión inicial.                                                            //
//          1.1 (2015/12/02) Versión 3.4.0 de ACE3.                                                      //
//=======================================================================================================//
if (!ust_mod_ace3) exitWith {};
if (!isServer) exitWith {};

private["_ErrorModulo", "_objeto"];

_ErrorModulo = false;

// Incluir las variables que definen que unidades tienen tratamiento especial (médicos, ingenieros, etc...)
#include "..\..\..\configMision\ace3\scripts\ust_ace3_configuracion.sqf"

// Definir las variables manualmente usando la función de ACE3 ACE_common_fnc_setSetting:
//  ["setting_name"], Value, forceSetting(bool), broadcastSetting(bool)] ACE_common_fnc_setSetting

if (isClass (configFile >> "CfgPatches" >> "ace_common")) then {
    ["ace_common_forceAllSettings", false, true, true] call ACE_common_fnc_setSetting;                         // 0* = Deshabilitado, 1 = Habilitado.

    //====================================================================================================//
    // Check PBOs: http://ace3mod.com/wiki/missionmaker/modules.html#1.4-check-pbos                       //
    //====================================================================================================//

    ["ace_common_checkPBOsAction", 0.0, true, true] call ACE_common_fnc_setSetting;                            // Scalar 0 = Valor por defecto.
    ["ace_common_checkPBOsCheckAll", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_common_checkPBOsWhitelist", "[]", true, true] call ACE_common_fnc_setSetting;                        // String.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_common.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_finger")) then {
    //====================================================================================================//
    // Finger: http://ace3mod.com/wiki/missionmaker/modules.html#1-7-finger-settings                      //
    //====================================================================================================//

    ["ace_finger_enabled", true, true, true] call ACE_common_fnc_setSetting;                                   // 0 = No, 1* = Si.
    ["ace_finger_maxRange", 4.0, true, true] call ACE_common_fnc_setSetting;                                   // Scalar. 4 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_finger.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_frag")) then {
    ["ace_frag_enabled", true, true, true] call ACE_common_fnc_setSetting;                                     // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_frag_SpallEnabled", false, true, true] call ACE_common_fnc_setSetting;                               // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_frag_maxTrack", 500.0, true, true] call ACE_common_fnc_setSetting;                                   // Scalar. 500 = Valor por defecto.
    ["ace_frag_MaxTrackPerFrame", 50.0, true, true] call ACE_common_fnc_setSetting;                            // Scalar. 50 = Valor por defecto.
    ["ace_frag_EnableDebugTrace", false, true, true] call ACE_common_fnc_setSetting;                           // 0 = Deshabilitado, 1* = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_frag.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_hitreactions")) then {

    ["ace_hitreactions_minDamageToTrigger", 0.1, true, true] call ACE_common_fnc_setSetting;                   // 0 = Deshabilitado, 1* = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_hitreactions.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_interaction")) then {
    //====================================================================================================//
    // Interaction System: http://ace3mod.com/wiki/missionmaker/modules.html#1.8-interaction-system       //
    //====================================================================================================//

    ["ace_interaction_EnableTeamManagement", true, true, true] call ACE_common_fnc_setSetting;                 // 0 = Deshabilitado, 1* = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_interaction.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_laserpointer")) then {

    ["ace_laserpointer_enabled", true, true, true] call ACE_common_fnc_setSetting;                             // Scalar. 0.1 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_laserpointer.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_magazinerepack")) then {
    ["ace_magazinerepack_TimePerAmmo", 1.5, true, true] call ACE_common_fnc_setSetting;                        // Scalar. 1.5 = Valor por defecto.
    ["ace_magazinerepack_TimePerMagazine", 2.0, true, true] call ACE_common_fnc_setSetting;                    // Scalar. 2 = Valor por defecto.
    ["ace_magazinerepack_TimePerBeltLink", 8.0, true, true] call ACE_common_fnc_setSetting;                    // Scalar. 8 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_magazinerepack.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_map")) then {
    //====================================================================================================//
    // BlueForce Tracking: http://ace3mod.com/wiki/missionmaker/modules.html#1.3-blueforcetracking        //
    //====================================================================================================//

    ["ace_map_BFT_Interval", 1.0, true, true] call ACE_common_fnc_setSetting;                                  // Scalar. 1 = Valor por defecto.
    ["ace_map_BFT_Enabled", false, true, true] call ACE_common_fnc_setSetting;                                 // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_map_BFT_HideAiGroups", false, true, true] call ACE_common_fnc_setSetting;                            // 0* = Deshabilitado, 1 = Habilitado.

    //====================================================================================================//
    // Map: http://ace3mod.com/wiki/missionmaker/modules.html#1.10-map                                    //
    //====================================================================================================//

    ["ace_map_mapIllumination", true, true, true] call ACE_common_fnc_setSetting;                              // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_map_mapShake", true, true, true] call ACE_common_fnc_setSetting;                                     // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_map_mapGlow", true, true, true] call ACE_common_fnc_setSetting;                                      // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_map_mapLimitZoom", false, true, true] call ACE_common_fnc_setSetting;                                // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_map_mapShowCursorCoordinates", false, true, true] call ACE_common_fnc_setSetting;                    // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_map_DefaultChannel", 1.0, true, true] call ACE_common_fnc_setSetting;
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_map.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_map_gestures")) then {
    ["ace_map_gestures_enabled", true, true, true] call ACE_common_fnc_setSetting;                             // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_map_gestures_maxRange", 7.0, true, true] call ACE_common_fnc_setSetting;                             // Scalar. 7 = Valor por defecto.
    ["ace_map_gestures_interval", 0.03, true, true] call ACE_common_fnc_setSetting;                            // Scalar. 0.03 = Valor por defecto.
    //["ace_map_gestures_GroupColorConfigurations", 0.03, true, true] call ACE_common_fnc_setSetting;
    //["ace_map_gestures_GroupColorConfigurationMapping", 0.03, true, true] call ACE_common_fnc_setSetting;
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_map_gestures.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_maptools")) then {
    ["ace_maptools_EveryoneCanDrawOnBriefing", true, true, true] call ACE_common_fnc_setSetting;               // 0* = Deshabilitado, 1 = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_maptools.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then {

    //====================================================================================================//
    // ACE3 Medical: http://ace3mod.com/wiki/missionmaker/modules.html#2.-ace3-medical                    //
    //====================================================================================================//
    ["ace_medical_level", ust_param_ace3_sistemaMedic, true, true] call ACE_common_fnc_setSetting;              // 0 = Deshabilitado, 1* = Básico, 2 = Avanzado.
    ["ace_medical_medicSetting", ust_param_ace3_sistemaMedic, true, true] call ACE_common_fnc_setSetting;       // 0 = Deshabilitado, 1* = Básico, 2 = Avanzado.
    ["ace_medical_enableFor", 1.0, true, true] call ACE_common_fnc_setSetting;                                 // 0* = Sólo Jugadores, 1 = Jugadores e IA.
    ["ace_medical_enableOverdosing", true, true, true] call ACE_common_fnc_setSetting;                         // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_medical_bleedingCoefficient", 1.0, true, true] call ACE_common_fnc_setSetting;                       // Scalar. 1 = Valor por defecto.
    ["ace_medical_painCoefficient", 1.0, true, true] call ACE_common_fnc_setSetting;                           // Scalar. 1 = Valor por defecto.
    ["ace_medical_enableAirway", false, true, true] call ACE_common_fnc_setSetting;                            // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_medical_enableFractures", false, true, true] call ACE_common_fnc_setSetting;                         // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_medical_enableAdvancedWounds", true, true, true] call ACE_common_fnc_setSetting;                     // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_medical_enableVehicleCrashes", true, true, true] call ACE_common_fnc_setSetting;                     // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_medical_enableScreams", true, true, true] call ACE_common_fnc_setSetting;                            // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_medical_playerDamageThreshold", 1.0, true, true] call ACE_common_fnc_setSetting;                     // Scalar. 1 = Valor por defecto.
    ["ace_medical_AIDamageThreshold", 1.0, true, true] call ACE_common_fnc_setSetting;                         // Scalar. 1 = Valor por defecto.
    ["ace_medical_enableUnconsciousnessAI", 1.0, true, true] call ACE_common_fnc_setSetting;                   // 0 = Deshabilitado, 1* = 50/50, 2 = Habilitado.
    ["ace_medical_remoteControlledAI", true, true, true] call ACE_common_fnc_setSetting;                       // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_medical_preventInstaDeath", false, true, true] call ACE_common_fnc_setSetting;                       // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_medical_enableRevive", 0.0, true, true] call ACE_common_fnc_setSetting;                              // 0* = Deshabilitado, 1 = Sólo Jugadores, 2 = Jugadores e IA.
    ["ace_medical_maxReviveTime", 120.0, true, true] call ACE_common_fnc_setSetting;                           // Scalar. 120 = Valor por defecto.
    ["ace_medical_amountOfReviveLives", -1.0, true, true] call ACE_common_fnc_setSetting;                      // Scalar. -1 = Valor por defecto.
    ["ace_medical_allowDeadBodyMovement", false, true, true] call ACE_common_fnc_setSetting;                   // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_medical_allowLitterCreation", true, true, true] call ACE_common_fnc_setSetting;                      // 0 = Deshabilitado, 1* = Habilitado.
    // ["ace_medical_litterSimulationDetail", 3.0, false, false] call ACE_common_fnc_setSetting;               // Client. 0 = Deshabilitado (0), 1 = Bajo(50), 2 = Medio (100), 3* = Alto (1000), 4 = Ultra (5000).
    ["ace_medical_litterCleanUpDelay", 1800.0, true, true] call ACE_common_fnc_setSetting;                     // Scalar. 1800 = Valor por defecto.
    ["ace_medical_medicSetting_PAK", 1.0, true, true] call ACE_common_fnc_setSetting;                          // 0 = Cualquiera, 1* = Sólo médicos, 2 = Sólo doctores.
    ["ace_medical_medicSetting_SurgicalKit", 1.0, true, true] call ACE_common_fnc_setSetting;                  // 0 = Cualquiera, 1* = Sólo médicos, 2 = Sólo doctores.
    ["ace_medical_consumeItem_PAK", 1.0, true, true] call ACE_common_fnc_setSetting;                           // 0* = No, 1 = Si.
    ["ace_medical_consumeItem_SurgicalKit", 1.0, true, true] call ACE_common_fnc_setSetting;                   // 0* = No, 1 = Si.
    ["ace_medical_useLocation_PAK", 3.0, true, true] call ACE_common_fnc_setSetting;                           // 0 = En cualquier lugar, 1 = Vehículos médicos, 2 = Edificios médicos, 3* = Vehículos y edificios médicos, 4 = Deshabilitado.
    ["ace_medical_useLocation_SurgicalKit", 2.0, true, true] call ACE_common_fnc_setSetting;                   // 0 = En cualquier lugar, 1 = Vehículos médicos, 2* = Edificios médicos, 3 = Vehículos y edificios médicos, 4 = Deshabilitado.
    ["ace_medical_useCondition_PAK", 1.0, true, true] call ACE_common_fnc_setSetting;                           // 0* = En cualquier momento, 1 = Estable.
    ["ace_medical_useCondition_SurgicalKit", 1.0, true, true] call ACE_common_fnc_setSetting;                   // 0* = En cualquier momento, 1 = Estable.
    ["ace_medical_keepLocalSettingsSynced", true, true, true] call ACE_common_fnc_setSetting;                  // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_medical_healHitPointAfterAdvBandage", false, true, true] call ACE_common_fnc_setSetting;             // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_medical_painIsOnlySuppressed", true, true, true] call ACE_common_fnc_setSetting;                     // 0 = No, 1* = Si.
    // ["ace_medical_painEffectType", 0.0, true, true] call ACE_common_fnc_setSetting;                           // Client. 0 = Pain effect flash, 1 = Pain effect chroma.
    ["ace_medical_allowUnconsciousAnimationOnTreatment", false, true, true] call ACE_common_fnc_setSetting;    // 0* = No, 1 = Si.
    ["ace_medical_moveUnitsFromGroupOnUnconscious", false, true, true] call ACE_common_fnc_setSetting;         // 0* = No, 1 = Si.
    //["ace_medical_menuTypeStyle", 0.0, true, true] call ACE_common_fnc_setSetting;                             // 0* = Seleccion, 1 = Radial.

    // Asignar roles de médico, vehículo médico y edicios médicos.
    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ace_medical_medicClass", 1.0, true];
            };
        };
    } foreach _medicos;

    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ace_medical_medicClass", 1.0, true];
            };
        };
    } foreach _vehiculosMedicos;

    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ace_medical_isMedicalFacility", true, true];
            };
        };
    } foreach _edificiosMedicos;

} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_medical.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_medical_menu")) then {
    ["ace_medical_menu_allow", 2.0, true, true] call ACE_common_fnc_setSetting;                                  // 0 = Deshabilitado, 1* = Habilitado, 2 = Sólo vehículos.
    ["ace_medical_menu_maxRange", 3.0, true, true] call ACE_common_fnc_setSetting;                               // Scalar. 3 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_medical_menu.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_microdagr")) then {
    //====================================================================================================//
    // MicroDAGR Map Fill: http://ace3mod.com/wiki/missionmaker/modules.html#1.11-microdagr-map-fill      //
    //                     - 2: Full Satellite + Buildings                                                //
    //====================================================================================================//

    ["ace_microdagr_MapDataAvailable", 2.0, true, true] call ACE_common_fnc_setSetting;                          // 0 = Sin mapa, 1 = Carreteras/Topografia, 2* = Sin limitaciones.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_microdagr.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_mk6mortar")) then {
    //====================================================================================================//
    // MK6 Settings: http://ace3mod.com/wiki/missionmaker/modules.html#1.12-mk6-settings                  //
    //====================================================================================================//

    ["ace_mk6mortar_airResistanceEnabled", true, true, true] call ACE_common_fnc_setSetting;                   // 0* = Deshabilitado, 1 = Habilitado. Simula la resistencia del aire para los disparos de los jugadores.
    ["ace_mk6mortar_allowComputerRangefinder", false, true, true] call ACE_common_fnc_setSetting;              // 0 = Deshabilitado, 1* = Habilitado. Muestra el ordenador i el Rangefinder (se debe deshabilitar si se modela la resistencia del aire).
    ["ace_mk6mortar_allowCompass", true, true, true] call ACE_common_fnc_setSetting;                           // 0 = Deshabilitado, 1* = Habilitado. Mouestra la brújula digital del mortero MK6.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_mk6mortar.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_nametags")) then {
    //====================================================================================================//
    // Name Tags: http://ace3mod.com/wiki/missionmaker/modules.html#1.13-name-tags                        //
    //====================================================================================================//

    // ["ace_nametags_defaultNametagColor", [0.77, 0.51.0, 0.08, 1], true, true] call ACE_common_fnc_setSetting; // Cliente.
    // ["ace_nametags_showPlayerNames", true, true, true] call ACE_common_fnc_setSetting;                      // Cliente.
    // ["ace_nametags_showPlayerRanks", true, true, true] call ACE_common_fnc_setSetting;                      // Cliente.
    // ["ace_nametags_showVehicleCrewInfo", true, true, true] call ACE_common_fnc_setSetting;                  // Cliente.
    // ["ace_nametags_showNamesForAI", false, true, true] call ACE_common_fnc_setSetting;                      // Cliente.
    ["ace_nametags_showCursorTagForVehicles", false, true, true] call ACE_common_fnc_setSetting;               // 0* = No, 1 = Si.
    // ["ace_nametags_showSoundWaves", true, true, true] call ACE_common_fnc_setSetting;                       // Cliente.
    ["ace_nametags_PlayerNamesViewDistance", 5.0, true, true] call ACE_common_fnc_setSetting;                  // Scalar. 5 = Valor por defecto.
    ["ace_nametags_PlayerNamesMaxAlpha", 0.8, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 0.8 = Valor por defecto.
    // ["ace_nametags_tagSize", 2.0, true, true] call ACE_common_fnc_setSetting;                               // Cliente.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_nametags.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_rearm")) then {
    ["ace_maptools_EveryoneCanDrawOnBriefing", true, true, true] call ACE_common_fnc_setSetting;               // 0* = Deshabilitado, 1 = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_maptools.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_nightvision")) then {
    ["ace_nightvision_disableNVGsWithSights", true, true, true] call ACE_common_fnc_setSetting;                 // 0 = Deshabilitado, 1* = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_nightvision.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_rearm")) then {
    ["ace_rearm_level", 2.0, true, true] call ACE_common_fnc_setSetting;                                       // Scalar. 0* = Depende del vehiculos, 1 = Depende de la munición, 2 = Depende del calibre.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_rearm.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_refuel")) then {
    ["ace_rearm_level", 10.0, true, true] call ACE_common_fnc_setSetting;                                       // Scalar. 10.0 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_refuel.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_repair")) then {
    ["ace_repair_engineerSetting_Repair", 1.0, true, true] call ACE_common_fnc_setSetting;                     // 0 = Cualquiera, 1* = Sólo ingenieros, 2 = Sólo especialistas.
    ["ace_repair_engineerSetting_Wheel", 0.0, true, true] call ACE_common_fnc_setSetting;                      // 0* = Cualquiera, 1 = Sólo ingenieros, 2 = Sólo especialistas.
    ["ace_repair_repairDamageThreshold", 0.6, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 0.6 = Valor por defecto.
    ["ace_repair_repairDamageThreshold_Engineer", 0.4, true, true] call ACE_common_fnc_setSetting;             // Scalar. 0.4 = Valor por defecto.
    ["ace_repair_consumeItem_ToolKit", 0.0, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
    ["ace_repair_fullRepairLocation", 2.0, true, true] call ACE_common_fnc_setSetting;                         // 0 = Cualquiera lugar, 1 = Vehiculo de reparación, 2* = Talleres, 3 = Vehiculos de reparación i talleres, 4 = Deshabilitado.
    ["ace_repair_engineerSetting_fullRepair", 2.0, true, true] call ACE_common_fnc_setSetting;                 // 0 = Cualquiera, 1 = Sólo ingenieros, 2 = Talleres, 3 = Vehiculos de reparación i talleres, 4 = Deshabilitado.
    ["ace_repair_addSpareParts", true, true, true] call ACE_common_fnc_setSetting;                             // 0 = No, 1* = Si.
    ["ace_repair_wheelRepairRequiredItems", 1.0, true, true] call ACE_common_fnc_setSetting;                   // 0* = No se necesitan herramientas, 1 = Se necesitan herramientas.
    // Assignar roles de ingeniero, vehiculo de reparación i talleres.
    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ACE_IsEngineer", 1.0, true];
            };
        };
    } foreach _ingenieros;

    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ACE_isRepairVehicle", 1.0, true];
            };
        };
    } foreach _vehiculosReparacion;

    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ACE_isRepairFacility", true, true];
            };
        };
    } foreach _talleres;
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_repair.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_respawn")) then {
    //====================================================================================================//
    // Respawn System: http://ace3mod.com/wiki/missionmaker/modules.html#1.15-respawn-system              //
    //====================================================================================================//

    ["ace_respawn_SavePreDeathGear", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
    ["ace_respawn_RemoveDeadBodiesDisconnected", false, true, true] call ACE_common_fnc_setSetting;            // 0 = No, 1* = Si.
    ["ace_respawn_BodyRemoveTimer", 0.0, true, true] call ACE_common_fnc_setSetting;                           // Scalar. 0 = Valor por defecto.

    //====================================================================================================//
    // Friendly Fire Messages:                                                                            //
    //          http://ace3mod.com/wiki/missionmaker/modules.html#1.6-friendly-fire-messages              //
    //====================================================================================================//

    //["ace_respawn_showFriendlyFireMessage", false, true, true] call ACE_common_fnc_setSetting;
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_respawn.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_sitting")) then {
    ["ace_sitting_enable", true, true, true] call ACE_common_fnc_setSetting;                                   // 0 = Deshabilitado, 1* = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_sitting.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_spectator")) then {
    ["ace_spectator_filterUnits", 1.0, true, true] call ACE_common_fnc_setSetting;                             // 0 = Cap, 1 = Jugadores, 2* = Unidades jugables, 3 = Todas las unidades.
    ["ace_spectator_filterSides", 0.0, true, true] call ACE_common_fnc_setSetting;                             // 0* = Bando del jugador, 1 = Bando amigo, 2 = Bando enemigo, 3 = Todos los bandos.
    ["ace_spectator_restrictModes", 0.0, true, true] call ACE_common_fnc_setSetting;                           // 0* = Todos, 1 = Modos de unidad, 2 = Libre, 3 = Modos internos, 4 = Modos externos.
    ["ace_spectator_restrictVisions", 0.0, true, true] call ACE_common_fnc_setSetting;                         // 0* = Todos, 1 = Visión nocturna, 2 = Visión térmica.

} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_spectator.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_switchunits")) then {
    //====================================================================================================//
    // SwitchUnits System: http://ace3mod.com/wiki/missionmaker/modules.html#1.16-switchunits-system      //
    //====================================================================================================//

    ["ace_switchunits_EnableSwitchUnits", false, true, true] call ACE_common_fnc_setSetting;                   // 0* = No, 1 = Si.
    ["ace_switchunits_SwitchToWest", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
    ["ace_switchunits_SwitchToEast", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
    ["ace_switchunits_SwitchToIndependent", false, true, true] call ACE_common_fnc_setSetting;                 // 0* = No, 1 = Si.
    ["ace_switchunits_SwitchToCivilian", false, true, true] call ACE_common_fnc_setSetting;                    // 0* = No, 1 = Si.
    ["ace_switchunits_EnableSafeZone", true, true, true] call ACE_common_fnc_setSetting;                       // 0 = No, 1* = Si.
    ["ace_switchunits_SafeZoneRadius", 100.0, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 100 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_switchunits.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_vehiclelock")) then {
    //====================================================================================================//
    // Vehicle Lock: http://ace3mod.com/wiki/missionmaker/modules.html#1.17-vehicle-lock                  //
    //====================================================================================================//

    ["ace_vehiclelock_DefaultLockpickStrength", 10.0, true, true] call ACE_common_fnc_setSetting;              // Scalar. 10 = Valor por defecto.
    ["ace_vehiclelock_LockVehicleInventory", true, true, true] call ACE_common_fnc_setSetting;                 // 0* = No, 1 = Si.
    ["ace_vehiclelock_VehicleStartingLockState", 0.0, true, true] call ACE_common_fnc_setSetting;              // Scalar. 0 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_vehiclelock.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_viewdistance")) then {
    //====================================================================================================//
    // View Distance Limiter: http://ace3mod.com/wiki/missionmaker/modules.html#1.18-view-distance-limiter//
    //====================================================================================================//

    ["ace_viewdistance_enabled", true, true, true] call ACE_common_fnc_setSetting;                             // 0 = No, 1* = Si.
    ["ace_viewdistance_limitViewDistance", 10000.0, true, true] call ACE_common_fnc_setSetting;                // Scalar. 10000 = Valor per defectre.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_viewdistance.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_weather")) then {
    //====================================================================================================//
    // Weather: http://ace3mod.com/wiki/missionmaker/modules.html#1.19-weather                            //
    //====================================================================================================//

    ["ace_weather_enableServerController", true, true, true] call ACE_common_fnc_setSetting;                   // 0 = No, 1* = Si.
    ["ace_weather_useACEWeather", true, true, true] call ACE_common_fnc_setSetting;                            // 0 = No, 1* = Si.
    ["ace_weather_syncRain", true, true, true] call ACE_common_fnc_setSetting;                                 // 0 = No, 1* = Si.
    ["ace_weather_syncWind", true, true, true] call ACE_common_fnc_setSetting;                                 // 0 = No, 1* = Si.
    ["ace_weather_syncMisc", true, true, true] call ACE_common_fnc_setSetting;                                 // 0 = No, 1* = Si.
    ["ace_weather_serverUpdateInterval", 60.0, true, true] call ACE_common_fnc_setSetting;                     // Scalar. 60 = Valor per defectre.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_weather.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_winddeflection")) then {
    //====================================================================================================//
    // Wind Deflection: http://ace3mod.com/wiki/missionmaker/modules.html#1.20-wind-deflection            //
    //====================================================================================================//

    ["ace_winddeflection_enabled", true, true, true] call ACE_common_fnc_setSetting;                           // 0 = No, 1* = Si.
    ["ace_winddeflection_vehicleEnabled", true, true, true] call ACE_common_fnc_setSetting;                    // 0 = No, 1* = Si.
    ["ace_winddeflection_simulationInterval", 0.05, true, true] call ACE_common_fnc_setSetting;                // Scalar. 0.05 = Valor por defecto.
    ["ace_winddeflection_simulationRadius", 3000.0, true, true] call ACE_common_fnc_setSetting;                // Scalar. 3000 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_winddeflection.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_zeus")) then {

    ["ace_zeus_zeusAscension", false, true, true] call ACE_common_fnc_setSetting;                              // 0* = No, 1 = Si.
    ["ace_zeus_zeusBird", false, true, true] call ACE_common_fnc_setSetting;                                   // 0* = No, 1 = Si.
    ["ace_zeus_remoteWind", false, true, true] call ACE_common_fnc_setSetting;                                 // 0* = No, 1 = Si.
    ["ace_zeus_radioOrdnance", false, true, true] call ACE_common_fnc_setSetting;                              // 0* = No, 1 = Si.
    ["ace_zeus_revealMines", 0.0, true, true] call ACE_common_fnc_setSetting;                                  // 0* = No, 1 = Si.
    ["ace_zeus_autoAddObjects", false, true, true] call ACE_common_fnc_setSetting;                             // 0* = No, 1 = Si.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_zeus.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_captives")) then {
    //====================================================================================================//
    // Make Unit Surrender: http://ace3mod.com/wiki/missionmaker/modules.html#1.9-make-unit-surrender     //
    //====================================================================================================//

    ["ace_captives_allowHandcuffOwnSide", true, true, true] call ACE_common_fnc_setSetting;                    // 0 = No, 1* = Si.
    ["ace_captives_requireSurrender", 1.0, true, true] call ACE_common_fnc_setSetting;                           // 0 = Deshabilitado, 1* = Rendirse únicamente, 2 = Rendirse o sin arma.
    ["ace_captives_allowSurrender", true, true, true] call ACE_common_fnc_setSetting;                          // 0 = No, 1* = Si.

    //{
    //    _objeto setVariable ["XXXXX", true, true];
    //} foreach _unidadesRinden;
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_captives.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_cargo")) then {
    ["ace_cargo_enable", true, true, true] call ACE_common_fnc_setSetting;                                     // 0 = No, 1* = Si.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_cargo.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_explosives")) then {
    //====================================================================================================//
    // Explosive System: http://ace3mod.com/wiki/missionmaker/modules.html#1.5-explosive-system           //
    //====================================================================================================//

    ["ace_explosives_RequireSpecialist", true, true, true] call ACE_common_fnc_setSetting;                     // 0* = No, 1 = Si.
    ["ace_explosives_PunishNonSpecialists", true, true, true] call ACE_common_fnc_setSetting;                  // 0 = No, 1* = Si.
    ["ace_explosives_ExplodeOnDefuse", true, true, true] call ACE_common_fnc_setSetting;                       // 0 = No, 1* = Si.

    // Assignar roles de especialista en explosivos.
    {
        if (!isNil _x) then {
            call compile format ["_objeto = %1", _x];
            if (local _objeto) then {
                _objeto setVariable ["ACE_IsEOD", true, true];
            };
        };
    } foreach _espExplosivos;
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_explosives.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_hearing")) then {
    //====================================================================================================//
    // Hearing: http://ace3mod.com/wiki/missionmaker/modules.html#1.7-hearing                             //
    //====================================================================================================//

    ["ace_hearing_EnableCombatDeafness", true, true, true] call ACE_common_fnc_setSetting;                     // 0* = Deshabilitado, 1 = Habilitado.
    ["ace_hearing_EarplugsVolume", 0.5, true, true] call ACE_common_fnc_setSetting;                            // Scalar. 0.5 = Valor por defecto.
    ["ace_hearing_UnconsciousnessVolume", 0.4, true, true] call ACE_common_fnc_setSetting;                     // Scalar. 0.4 = Valor por defecto.
    ["ace_hearing_enabledForZeusUnits", true, true, true] call ACE_common_fnc_setSetting;                      // 0 = Deshabilitado, 1* = Habilitado.
    ["ace_hearing_autoAddEarplugsToUnits", false, true, true] call ACE_common_fnc_setSetting;                  // 0* = Deshabilitado, 1 = Habilitado.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_hearing.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_advanced_ballistics")) then {

    //====================================================================================================//
    // Advanced ballistics: http://ace3mod.com/wiki/missionmaker/modules.html#1.1-advanced-ballistics     //
    //====================================================================================================//
    ["ace_advanced_ballistics_enabled", ust_param_ace3_Balistica, true, true] call ACE_common_fnc_setSetting;   // 0* = No, 1 = Si.
    ["ace_advanced_ballistics_simulateForSnipers", true, true, true] call ACE_common_fnc_setSetting;           // 0 = No, 1* = Si.
    ["ace_advanced_ballistics_simulateForGroupMembers", true, true, true] call ACE_common_fnc_setSetting;      // 0* = No, 1 = Si.
    ["ace_advanced_ballistics_simulateForEveryone", false, true, true] call ACE_common_fnc_setSetting;         // 0* = No, 1 = Si.
    ["ace_advanced_ballistics_disabledInFullAutoMode", false, true, true] call ACE_common_fnc_setSetting;      // 0* = No, 1 = Si.
    ["ace_advanced_ballistics_ammoTemperatureEnabled", true, true, true] call ACE_common_fnc_setSetting;       // 0 = No, 1* = Si.
    ["ace_advanced_ballistics_barrelLengthInfluenceEnabled", true, true, true] call ACE_common_fnc_setSetting; // 0 = No, 1* = Si.
    ["ace_advanced_ballistics_bulletTraceEnabled", true, true, true] call ACE_common_fnc_setSetting;           // 0 = No, 1* = Si.
    ["ace_advanced_ballistics_simulationInterval", 0.0, true, true] call ACE_common_fnc_setSetting;            // Scalar. 0.0 = Valor por defecto.
    ["ace_advanced_ballistics_simulationRadius", 3000.0, true, true] call ACE_common_fnc_setSetting;           // Scalar. 3000 = Valor por defecto.
} else {
    _ErrorModulo = true;
    diag_log "No se ha encontrado el fichero ace_advanced_ballistics.pbo.";
};

if (ust_param_debugOutput == 1) then {

    if (_ErrorModulo) then {
        player sideChat format ["DEBUG (fn_ace3_config.sqf): ACE 3 no se puede configurar completamente ya que hay ficheros que no están cargados."];
    } else {
        player sideChat format ["DEBUG (fn_ace3_config.sqf): ACE 3 configurado."];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
