//=======================================================================================================//
// Archivo: ust_briefing_admin.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versi�n: 0.1                                                                                          //
// Creaci�n del Documento: 13/09/2015                                                                    //
// Descripci�n: Este documento sirve para ofrececer informaci�n de la misi�n al administrador. Estos     //
//              mensajes s�lo los ver� el Administrador y en consecuencia, pueden ofrecer sugerencias    //
//              sobre las condiciones de la partida, Zeus, posibles finales, etc...                      //
//=======================================================================================================//

//=======================================================================================================//
// MENSAJES QUE S�LO VER� EL ADMINISTRADOR                                                               //
//=======================================================================================================//

//=======================================================================================================//
// NOTAS: ADMINISTRADOR.                                                                                 //
//=======================================================================================================//
_briefingAdmin = "
<br/>
<font color='#FF0000' size='18'>Informaci�n para el administrador</font>
<br/><br/>
Esta misi�n se ha comprobado que funciona con los siguientes:
<br/><br/>
*** A�adir listado de addons i sus versiones ***
<br/><br/>
Si los requisitos no se cumplen o las versiones son distintas, es necesario comprobar previamente que todo funcione correctamente. 
<br/><br/>
";

//=======================================================================================================//
// NOTAS: CREADOR DE LA MISI�N.                                                                          //
//=======================================================================================================//

_briefingNotes = "
<br/>
<font color='#FF0000' size='18'>Notas del creador de la misi�n</font>
<br/><br/>
<font color='#00FFFF'>Nombre de la misi�n:</font> ""*** Nombre de la misi�n ***"".
<br/>
<font color='#00FFFF'>Versi�n:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> Artur.
<br/>
<font color='#00FFFF'>Colaboradores:</font> *** Listado de colaboradores ***.
<br/>
<font color='#00FFFF'>N�mero m�nimo de jugadores:</font> 8.
<br/>
<font color='#00FFFF'>N�mbre m�ximo de jugadores:</font> 12.
<br/>
<font color='#00FFFF'>Respawn:</font> Deshabilitado.
<br/>
<font color='#00FFFF'>Dificultad:</font> �lite.
<br/>
<font color='#00FFFF'>Resumen de la misi�n:</font>
<br/><br/>
*** Notas y mensajes adicionales del creador de la misi�n. ***
";

//=======================================================================================================//
// NOTAS: FINALES DE LA MISS�N.                                                                          //
//=======================================================================================================//

_briefingFinales = "
<br/>
<font color='#FF0000' size='18'>Diferentes finales de la misi�n</font>
<br/>
Selecciona uno de los finales para activarlo.
<br/><br/>
";

// Cada uno dels finales en description.ext se debe de incluir.
_briefingFinales = _briefingFinales + format [
"<execute expression=""['Final1',true] call BIS_fnc_endMission;"">Final con �xito 1</execute>: Breve descripci�n del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['Final2',true] call BIS_fnc_endMission;"">Final con �xito 2</execute>: Breve descripci�n del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['FinalFallido1',false] call BIS_fnc_endMission;"">Final fallido 1</execute>: Breve descripci�n del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['FinalFallido2',false] call BIS_fnc_endMission;"">Final fallido 2</execute>: Breve descripci�n del final.<br/><br/>"
];

_briefingFinales = _briefingFinales + format [
"<execute expression=""['FracasoAbsoluto',false] call BIS_fnc_endMission;"">Fracaso Absoluto</execute>: Breve descripci�n del final.<br/><br/>"
];

_briefing = _briefingAdmin + _briefingNotes + _briefingFinales;
_briefing = _briefing + "<br/><br/>";

//=======================================================================================================//
// CREACI�N DE LA ENTRADA.                                                                               //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FIN DEL FICHERO ==========================================//