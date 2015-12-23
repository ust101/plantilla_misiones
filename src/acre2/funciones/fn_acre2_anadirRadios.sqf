//=======================================================================================================//
// Archivo: fn_acre2_anadirRadios.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/28                                                                    //
// Descripción: Este documento sirve para añadir las radios al inventario de manera que se pueda decidir //
//              que radios se utilizan durante la partida en caso de que no se quieran usar las que      //
//              vienen por defecto en los perfiles														 //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/04/28) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Declaración de variables.
private["_unidad", "_tipoUnidad"];

_unidad = player;

_tipoUnidad = _unidad getVariable ["ust_var_configEquipacion", "NIL"];

// Asignar radios dependiendo del tipo de unidad (fn_configEquipacion).
if(_tipoUnidad != "nil") then {

    // Si las radios estan habilitadas, es necesario asignarlas dependiendo del rol
    if(ust_acre2_config_distribuirRadios) then {

        // Comprueba si es necesario asignar la radio definida en "ust_acre2_radioSoldados" por defecto todas las
        // unidades.
        if(ust_acre2_config_todosRadioSoldados) then {

            if( _unidad canAdd ust_acre2_radioSoldados ) then {
                _unidad addItem ust_acre2_radioSoldados;
            } else {
                player sideChat format ["ERROR (fn_acre2_anadirRadios.sqf): No se puede añadir la radio %1.", ust_acre2_radioSoldados];
            };
        } else {
            if (_tipoUnidad in ust_var_listaRadioSoldados) then {
                if( _unidad canAdd ust_acre2_radioSoldados ) then {
                    _unidad addItem ust_acre2_radioSoldados;
                } else {
                    player sideChat format ["ERROR (fn_acre2_anadirRadios.sqf): No se puede añadir la radio %1.", ust_acre2_radioSoldados];
                };
            };
        };

        if (_tipoUnidad in ust_var_listaRadioOficiales) then {
            if( _unidad canAdd ust_acre2_radioOficiales ) then {
                _unidad addItem ust_acre2_radioOficiales;
            } else {
                player sideChat format ["ERROR (fn_acre2_anadirRadios.sqf): No se puede añadir la radio %1.", ust_acre2_radioOficiales];
            };
        };

        if (_tipoUnidad in ust_var_listaRadioRTO) then {
            if( _unidad canAdd ust_acre2_radioRTO ) then {
                _unidad addItemToBackPack ust_acre2_radioRTO;
            } else {
                player sideChat format ["ERROR (fn_acre2_anadirRadios.sqf): No se puede añadir la radio %1.", ust_acre2_radioRTO];
            };
        };
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
