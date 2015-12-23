//=======================================================================================================//
// Archivo: ust_comun_compronarConfiguracion_ace3.sqf                                                    //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para comprobar que los parámetros de la misión son los que el editor  //
//              de la misión ha especificado. Este fichero comprueba sólo aquellos parámetros que están  //
//              relacionados con el ACE3                                                                 //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Comprueba que el sistema médico básico y avanzado no están activos al mismo tiempo.
if ((ust_comun_requiere_ACE3_BasMed == 1) and (ust_comun_requiere_ACE3_AdvMed == 1)) then {
    player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico básico como el avanzado estan marcados como necesarios."];
};

// Asegurarse que el ACE3 está configurado como requerimiento si se utiliza el sistema médico básico.
if ((ust_comun_requiere_ACE3_BasMed == 1) and (ust_comun_requiere_ACE3 != 1)) then {
    player sideChat format ["AVISO (ust_comprobarConfiguracion_ace3.sqf): ACE3 no está marcado como necesario, pero el sistema médico básico lo necesita. Marcando ACE3 como necesario..."];
    ust_comun_requiere_ACE3 = 1;
};

// Asegurarse de que ACE3 está configurado como requerimineto si se utiliza el sistema médico avanzado.
if ((ust_comun_requiere_ACE3_AdvMed == 1) and (ust_comun_requiere_ACE3 != 1)) then {
    player sideChat format ["AVISO (ust_comprobarConfiguracion_ace3.sqf): ACE3 no está marcado como necesario, pero el sistema médico avanzado lo necesita. Marcando ACE3 como necesario..."];
    ust_comun_requiere_ACE3 = 1;
};

// Asegurarse de que ACE3 está configurado como requerimiento si se utiliza el módulo de balística avanzada.
if ((ust_comun_requiere_ACE3_AdvBal == 1) and (ust_comun_requiere_ACE3 != 1)) then {
    player sideChat format ["AVISO (ust_comprobarConfiguracion_ace3.sqf): ACE3 no está marcado como necesario, pero el módulo de balística avanzada lo necesita. Marcando ACE3 como necesario..."];
    ust_comun_requiere_ACE3 = 1;
};

if ((ust_comun_requiere_ACE3_BasMed == 0) and (ust_comun_requiere_ACE3_AdvMed == 0) and ust_mod_ace3medical) then {
    player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): Aunque estén desactivados los sistemas médicos de ACE3, el fichero ace_medical.pbo está cargado."];
};

// Advanced Combat Environment 3 (ACE3): Sistema médico básico.
if (ust_comun_requiere_ACE3_BasMed != 2) then {
    if (ust_mod_ace3medical) then {
        if ((ust_comun_requiere_ACE3_BasMed == 1) and (ust_param_ace3_sistemaMedico != 1)) then {
            player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico básico de ACE3 está desactivado pero debe activarse para esta misión."];
        };

        if ((ust_comun_requiere_ACE3_BasMed == 0) and (ust_param_ace3_sistemaMedico == 1)) then {
            player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico avanzado de ACE3 está activado pero debe esactivarse para esta misión."];
        };
    } else {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): Se requiere el sistema médico básico de ACE3 pero el fichero ace_medical.pbo no está cargado."];
    };
} else {
    if ((ust_param_ace3_sistemaMedico == 1) and !ust_mod_ace3medical) then {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico básico de ACE3 está activado pero el fichero ace_medical.pbo no está cargado."];
    };

    if ((ust_param_ace3_sistemaMedico != 1) and (ust_param_ace3_sistemaMedico != 2) and ust_mod_ace3medical) then {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico básico de ACE3 está desactivado pero el fichero ace_medical.pbo está cargado."];
    };
};

// Advanced Combat Environment 3 (ACE3): Sistema médico avanzado.
if (ust_comun_requiere_ACE3_AdvMed != 2) then {
    if (ust_mod_ace3medical) then {
        if ((ust_comun_requiere_ACE3_AdvMed == 1) and (ust_param_ace3_sistemaMedico != 2)) then {
            player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico avanzado de ACE3 está desactivado pero debe activarse para esta misión."];
        };

        if ((ust_comun_requiere_ACE3_AdvMed == 0) and (ust_param_ace3_sistemaMedico == 2)) then {
            player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico avanzado de ACE3 está activado pero debe esactivarse para esta misión."];
        };
    } else {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): Se requiere el sistema médico avanzado de ACE3 pero el fichero ace_medical.pbo no está cargado."];
    };
} else {
    if ((ust_param_ace3_sistemaMedico == 2) and !ust_mod_ace3medical) then {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico avanzado de ACE3 está activado pero el fichero ace_medical.pbo no está cargado."];
    };

    if ((ust_param_ace3_sistemaMedico != 1) and (ust_param_ace3_sistemaMedico != 2) and ust_mod_ace3medical) then {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): El sistema médico avanzado de ACE3 está desactivado pero el fichero ace_medical.pbo está cargado."];
    };
};

// Advanced Combat Environment 3 (ACE3): Balística avanzada.
if (ust_comun_requiere_ACE3_AdvBal != 2) then {
    if (ust_mod_ace3advbal) then {
        if (ust_comun_requiere_ACE3_AdvBal != ust_param_ace3_Balistica) then {
            if (ust_param_ace3_Balistica == 1) then {
                player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): La balísica avanzada de ACE3 está activada pero se debe desactivar para esta misión."];
            } else {
                player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): La balísica avanzada de ACE3 está desactivada pero se debe activar para esta misión."];
            };
        };
    } else {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): Se requiere la balística avanzada de ACE3 pero el fichero ace_advanced_ballistics.pbo no está cargado."];
    };
} else {
    if ((ust_param_ace3_Balistica == 1) and !ust_mod_ace3advbal) then {
        player sideChat format ["ERROR (ust_comprobarConfiguracion_ace3.sqf): La balística avanzada de ACE3 está activada pero el fichero ace_advanced_ballistics.pbo no está cargado."];
    };

    if ((ust_param_ace3_Balistica == 0) and ust_mod_ace3medical) then {
        player sideChat format ["AVISO (ust_comprobarConfiguracion_ace3.sqf): La balística avanzada de ACE3 está desactivada pero el fichero ace_advanced_ballistics.pbo está cargado."];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
