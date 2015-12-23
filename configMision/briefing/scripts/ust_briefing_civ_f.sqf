//=======================================================================================================//
// Archivo: ust_briefing_civ_f.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 0.1                                                                                          //
// Creación del Documento: 13/09/2015                                                                    //
// Descripción: Este documente sirve para ofrecer información de misión si la unidad forma parte de la   //
//              facción CIVIL (civ_f).                                                                   //
//=======================================================================================================//

//=======================================================================================================//
// NOTAS: CREDITOS.                                                                                      //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Creditos","
<br/>
Misión generada por <font color='#00FFFF'>*** Autores ***</font> para la <font color='#00FFFF'>Unidad de Simulación Táctica - UST101</font>.
<br/><br/>
Con la colaboración de *** posibles colaboradores ***.
"]];

//=======================================================================================================//
// NOTAS: RADIO.                                                                                         //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Frecuencias de Radio","
<br/>
<font color='#FF0000' size='18'>Comandancia</font>: 41 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Soporte</font>: 51 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Artillería</font>: 61 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Alfa</font>
<br/>
- Escuadra ""Alfa"": 200 kHz.
<br/>
- Equipo de asalto ""Alfa 1-1"": 201 kHz.
<br/>
- Equipo de asalto ""Alfa 1-2"": 202 kHz.
<br/>
- Equipo de asalto ""Alfa 1-3"": 203 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Bravo</font>
<br/>
- Escuadra ""Bravo"": 210 kHz.
<br/>
- Equipo de asalto ""Bravo 1-1"": 211 kHz.
<br/>
- Equipo de asalto ""Bravo 1-2"": 212 kHz.
<br/>
- Equipo de asalto ""Bravo 1-3"": 213 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Charlie</font>
<br/>
- Escuadra ""Charlie"": 220 kHz.
<br/>
- Equipo de asalto ""Charlie 1-1"": 221 kHz.
<br/>
- Equipo de asalto ""Charlie 1-2"": 222 kHz.
<br/>
- Equipo de asalto ""Charlie 1-3"": 223 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Eco-Kilo</font>
<br/>
- Escuadra ""Eco-Kilo"": 230 kHz.
<br/>
- Equipo de pájaros ""Eco-Kilo 1-1"": 231 kHz.
<br/>
- Equipo de pájaros ""Eco-Kilo 1-2"": 232 kHz.
<br/>
- Equipo de pájaros ""Eco-Kilo 1-3"": 233 kHz.
"]];

//=======================================================================================================//
// NOTAS: ADMINISTRACIÓ/LOGÍSTICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administración/Logística","
<br/>
<font color='#FF0000' size='18'>Soporte</font>
<br/>
*** Descripción de las unidades de soporte, evacuación médica, CAS etc... en caso de existir.
<br/><br/>
<font color='#FF0000' size='18'>Abastecimiento</font>
<br/>
*** Abastecimiento de las tropas: munición addicional, ...
"]];

//=======================================================================================================//
// NOTAS: EJECUCIÓN.                                                                                     //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Ejecución","
<br/>
<font color='#FF0000' size='18'>Tareas principales</font>
<br/>
- <font color='#00FFFF'>Tarea principal 1</font>: *** Breve descripción ***.
<br/>
- <font color='#00FFFF'>Tarea principal 2</font>: *** Breve descripción ***.
<br/><br/>
<font color='#FF0000' size='18'>Tasques secundària</font>
<br/>
- <font color='#00FFFF'>Tarea secundaria 1</font>: *** Breve descripción ***.
<br/>
- <font color='#00FFFF'>Tarea secundaria 2</font>: *** Breve descripción ***.
<br/><br/>
<font color='#FF0000' size='18'>Ejecución</font>
<br/>
*** Descripción, por puntos, de como ejecutar la misiónn. ***
"]];

//=======================================================================================================//
// NOTAS: MISIÓN.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Misión","
<br/>
*** Descripción de la misión. ***
"]];

//=======================================================================================================//
// NOTAS: INTELIGENCIA.                                                                                  //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Inteligencia","
<br/>
*** Informe de inteligencia. ***
<br/><br/>
<font color='#FF0000' size='18'>Fuerzas enemigas</font>
<br/>
*** Descripción de las Fuerzas enemigas.***
<br/><br/>
<font color='#FF0000' size='18'>Fuerzas aliadas</font>
<br/>
*** Breve descripción de las Fuerzas aliadas.***
"]];

//=======================================================================================================//
// NOTAS: SITUACIÓN.                                                                                     //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
<br/>
*** Breve descripción de la situación.***
"]];

//============================================ FIN DEL FICHERO ===========================================//