## Scripts / config Equipación
En esta carpeta se encuentran los diferentes archivos para equipar tanto las unidades jugables como vehículos y cajas de munición. Cada una de las facciones soportadas tiene un archivo de configuración propio al que se accede a través del fichero 'fn_configEquipacion.sqf`.

Adicionalmente, el fichero 'ust_configEquipacion_perfiles.sqf` equipa la unidad con uno de los perfiles de Virtual Arsenal de Academia (AC).

#### Los ficheros `ust_configEquipacion _ *. Sqf`

Para equipar, dependiendo de mods de realismo como ACE3 y / o del sistema médico que se utilice de forma automática, una de las unidades jugables o vehículo que pertenezcan a una facción hay que poner la siguiente entrada en la línea de init de la unidad.

`[" ROL_JUGADOR ", this] call ust_fnc_configEquipacio;`

donde `ROL_JUGADOR` es una de las entradas, en minúscula, que soporta la facción en sí. Para saber qué roles soporta una facción específica sólo hay que mirar en la cabecera del archivo de configuración de la facción en esta misma carpeta.

En caso de cajas de munición, que no tienen ninguna facción asignada, hay que modificar la línea de código anterior y añadir un tercer parámetro a la llamada de la función:

`[" ROL_JUGADOR ", this," FACCION "] call ust_fnc_configEquipacio;`

Este tercer parámetro, `FACCION`, se utiliza para forzar una cierta facción a la unidad y también se podría utilizar para sobrescribir la facción de la unidad. Esto da la posibilidad de equipar unidades militares con ropas civiles que estén definidas en `ust_configEquipacion_civ_f.sqf` por ejemplo.

Los ficheros `ust_configEquipacion_rhs * .sqf` dependen del mod RHS.

#### La carpeta 1RA_Perfils

En esta carpeta se puede encontrar el archivo que se utiliza para configurar los perfiles `AC_Perfiles.sqf`. Este archivo no debe modificarse por una misión específica ya que afecta a todos los perfiles guardados en Virtual Arsenal del grupo.

Se incluye en la plantilla para que se tenga la posibilidad de incluir alguna forma de poder guardar los perfiles del grupo AC en caso de que algún jugador no los tenga y la misión dependa de estos perfiles.

En caso de que se quiera dar la opción de guardar los perfiles predefinidos es recomendable introducir un objeto en la partida con la siguiente línea de código:

`this Addaction [" <t color = '# 027CE7'> Guardar perfiles AC </ p> "," scripts \ configEquipacion \ AC_Perfiles \ ACPerfils.sqf "];`

que hará que el objeto tenga una opción, resaltadas en color rojo, que permitirá al jugador guardar los perfiles del grupo AC.

#### Creación de nuevas entradas

No hay nada que prohíba la creación de nuevas entradas para misiones específicas. La única norma a seguir a la hora de crear una entrada es que esta debe ser siempre en ** minúsculas **.

El único archivo que no puede contener entradas adicionales es el `ust_configEquipacion_perfiles.sqf`.