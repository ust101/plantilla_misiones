//=======================================================================================================//
// Archivo: ust_briefing_civ_f.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versi�n: 0.1                                                                                          //
// Creaci�n del Documento: 13/09/2015                                                                    //
// Descripci�n: Este documente sirve para ofrecer informaci�n de misi�n si la unidad forma parte de la   //
//              facci�n CIVIL (civ_f).                                                                   //
//=======================================================================================================//

//=======================================================================================================//
// NOTAS: CREDITOS.                                                                                      //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Creditos","
<br/>
Misi�n generada por <font color='#00FFFF'>*** Autores ***</font> para la <font color='#00FFFF'>Unidad de Simulaci�n T�ctica - UST101</font>.
<br/><br/>
Con la colaboraci�n de *** posibles colaboradores ***.
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
<font color='#FF0000' size='18'>Artiller�a</font>: 61 kHz.
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
- Equipo de p�jaros ""Eco-Kilo 1-1"": 231 kHz.
<br/>
- Equipo de p�jaros ""Eco-Kilo 1-2"": 232 kHz.
<br/>
- Equipo de p�jaros ""Eco-Kilo 1-3"": 233 kHz.
"]];

//=======================================================================================================//
// NOTAS: ADMINISTRACI�/LOG�STICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administraci�n/Log�stica","
<br/>
<font color='#FF0000' size='18'>Soporte</font>
<br/>
*** Descripci�n de las unidades de soporte, evacuaci�n m�dica, CAS etc... en caso de existir.
<br/><br/>
<font color='#FF0000' size='18'>Abastecimiento</font>
<br/>
*** Abastecimiento de las tropas: munici�n addicional, ...
"]];

//=======================================================================================================//
// NOTAS: EJECUCI�N.                                                                                     //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Ejecuci�n","
<br/>
<font color='#FF0000' size='18'>Tareas principales</font>
<br/>
- <font color='#00FFFF'>Tarea principal 1</font>: *** Breve descripci�n ***.
<br/>
- <font color='#00FFFF'>Tarea principal 2</font>: *** Breve descripci�n ***.
<br/><br/>
<font color='#FF0000' size='18'>Tasques secund�ria</font>
<br/>
- <font color='#00FFFF'>Tarea secundaria 1</font>: *** Breve descripci�n ***.
<br/>
- <font color='#00FFFF'>Tarea secundaria 2</font>: *** Breve descripci�n ***.
<br/><br/>
<font color='#FF0000' size='18'>Ejecuci�n</font>
<br/>
*** Descripci�n, por puntos, de como ejecutar la misi�nn. ***
"]];

//=======================================================================================================//
// NOTAS: MISI�N.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Misi�n","
<br/>
*** Descripci�n de la misi�n. ***
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
*** Descripci�n de las Fuerzas enemigas.***
<br/><br/>
<font color='#FF0000' size='18'>Fuerzas aliadas</font>
<br/>
*** Breve descripci�n de las Fuerzas aliadas.***
"]];

//=======================================================================================================//
// NOTAS: SITUACI�N.                                                                                     //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
<br/>
*** Breve descripci�n de la situaci�n.***
"]];

//============================================ FIN DEL FICHERO ===========================================//