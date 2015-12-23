//=======================================================================================================//
// Archivo: fn_configGrupo.sqf                                                                              //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                           //
// Creación del Documento: 2015/10/03                                                                      //
// Descripción: Este documento sirve para definir los grupos al que pertenece la unidad. Tiene efectos   //
//              en las frecuencias de las radios, los canales por defecto y el nombre de como se muestra //
//				en el chat.																				 //
// Cambios: 0.1 (2015/10/03) Versión inicial.                                                              //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                              //
//=======================================================================================================//

params [["_nombreGrupo", nil], ["_indexSubgrupo", -1], "_unidad"];
private["_grupo"];

// Guardar el grupo para poder referenciarlos más tarde.
_unidad setVariable["ust_var_grupooUnidad",[_nombreGrupo,_indexSubgrupo],true];

// Configurar el chat si el grupo está definido
if (!isNil "_nombreGrupo") then {
    _grupo = group _unidad;
    if (_indexSubgrupo != -1) then {
        _grupo setGroupId [format["%1 %2", _nombreGrupo, _indexSubgrupo], "GroupColor0"];
    } else {
      _grupo setGroupId [format["%1", _nombreGrupo], "GroupColor0"];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
