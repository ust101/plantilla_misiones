//=======================================================================================================//
// Archivo: ust_briefing_admin.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 0.1                                                                                          //
// Creación del Documento: 13/09/2015                                                                    //
// Descripción: Este documento sirve para ofrececer información de la misión al administrador. Estos     //
//              mensajes sólo los verá el Administrador y en consecuencia, pueden ofrecer sugerencias    //
//              sobre las condiciones de la partida, Zeus, posibles finales, etc...                      //
//=======================================================================================================//

//=======================================================================================================//
// MENSAJES QUE SÓLO VERÁ EL ADMINISTRADOR                                                               //
//=======================================================================================================//

//=======================================================================================================//
// NOTAS: ADMINISTRADOR.                                                                                 //
//=======================================================================================================//
_briefingAdmin = "
<br/>
<font color='#FF0000' size='18'>Información para el administrador</font>
<br/><br/>
Esta misión se ha comprobado que funciona con los siguientes:
<br/><br/>
*** Añadir listado de addons i sus versiones ***
<br/><br/>
Si los requisitos no se cumplen o las versiones son distintas, es necesario comprobar previamente que todo funcione correctamente. 
<br/><br/>
";

//=======================================================================================================//
// NOTAS: CREADOR DE LA MISIÓN.                                                                          //
//=======================================================================================================//

_briefingNotes = "
<br/>
<font color='#FF0000' size='18'>Notas del creador de la misión</font>
<br/><br/>
<font color='#00FFFF'>Nombre de la misión:</font> ""*** Nombre de la misión ***"".
<br/>
<font color='#00FFFF'>Versión:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> Artur.
<br/>
<font color='#00FFFF'>Colaboradores:</font> *** Listado de colaboradores ***.
<br/>
<font color='#00FFFF'>Número mínimo de jugadores:</font> 8.
<br/>
<font color='#00FFFF'>Númbre máximo de jugadores:</font> 12.
<br/>
<font color='#00FFFF'>Respawn:</font> Deshabilitado.
<br/>
<font color='#00FFFF'>Dificultad:</font> Élite.
<br/>
<font color='#00FFFF'>Resumen de la misión:</font>
<br/><br/>
*** Notas y mensajes adicionales del creador de la misión. ***
";

//=======================================================================================================//
// NOTAS: FINALES DE LA MISSÓN.                                                                          //
//=======================================================================================================//

_briefingFinales = "
<br/>
<font color='#FF0000' size='18'>Diferentes finales de la misión</font>
<br/>
Selecciona uno de los finales para activarlo.
<br/><br/>
";

// Cada uno dels finales en description.ext se debe de incluir.
_briefingFinales = _briefingFinales + format [
"<execute expression=""['Final1',true] call BIS_fnc_endMission;"">Final con éxito 1</execute>: Breve descripción del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['Final2',true] call BIS_fnc_endMission;"">Final con éxito 2</execute>: Breve descripción del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['FinalFallido1',false] call BIS_fnc_endMission;"">Final fallido 1</execute>: Breve descripción del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['FinalFallido2',false] call BIS_fnc_endMission;"">Final fallido 2</execute>: Breve descripción del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['FracasoAbsoluto',false] call BIS_fnc_endMission;"">Fracaso Absoluto</execute>: Breve descripción del final.<br/><br/>"
];

_briefing = _briefingAdmin + _briefingNotes + _briefingFinales;
_briefing = _briefing + "<br/><br/>";

//=======================================================================================================//
// CREACIÓN DE LA ENTRADA.                                                                               //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FIN DEL FICHERO ==========================================//