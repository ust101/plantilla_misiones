## Scripts / briefing

En esta carpeta se encuentran los diferentes archivos para escribir el briefing a las diversas facciones soportadas en la Plantilla Básica para Misiones (PBM) y un especial por el administrador. Cada uno de los ficheros de tiene la siguiente estructura a excepción de `ust_briefing_admin.sqf`. Cabe destacar que los apartados aparecen en orden inverso a Arma 3: la sección que primero se introduce aparece en última posición en el listado.

#### Admin

Este apartado sólo aparece el jugador que esté como administrador del servidor. Contiene los siguientes apartados:

* * Información para el administrador *: Contiene el listado de addons necesario para jugar la misión de forma correcta.
* * Notas del creador de la misión *: Diferentes comentarios del creador de la misión que pueden interesar al administrador:
  * ** Nombre de la misión **: Nombre de la misión.
  * ** Versión **: 1.0.
  * ** Autor **: Nombre del autor de la misión.
  * ** Colaboradores **: Listado de personas que han colaborado en la misión.
  * ** Número mínimo de jugadores **: xx.
  * ** Número máximo de jugadores **: yy.
  * ** Respawn **: Tipo de respawn en la misión (pájaro, base, deshabilitado, ...)
  * ** Dificultad **: Dificultad de la misión según el autor.
  * ** Resumen de la misión: Breve resumen de la misión.
* * Diferentes finales de la misión *: Esta sección permite al administrador terminar la misión de la forma que se desee. Seleccionar una de las entradas hará que la misión finalice de forma automática.

#### Créditos

En esta sección se han de mencionar de forma obligatoria todas aquellas personas que han colaborado de alguna forma a la creación de la misión.

#### Radio

Esta entrada mostrará las diferentes frecuencias de radio que utilizarán las diversas escuadras o equipos de fuego. Se recomienda la siguiente estructura:

* Mando de misión: 41 kHz.
* Soporte: 51 kHz.
* Artillería: 61 kHz.
* ** Nombre de la escuadra 1 **:
* Escuadra 1: 200 khz.
  * Equipo de fuego 1: 201 khz.
  * Equipo de fuego 2: 202 khz.
  * Equipo de fuego 3: 203 khz.
* Escuadra 2: 210 khz.
  * Equipo de fuego 1: 211 khz.
  * Equipo de fuego 2: 212 khz.
  * Equipo de fuego 3: 213 khz.

Hay que recordar que configurar las frecuencias de las radios por cada escuadra y equipo de fuego a los documentos `ust_acre2_configuracion.sqf` en el caso de utilizar ACRE2. Los archivos se pueden encontrar en la carpeta `/ scripts / radios / acre2`i` scripts / radios / tfar` respectivamente.

#### Administración / Logística

En esta sección se informa a los jugadores de las diferentes unidades de apoyo (artillería, CAS, extracción) que hay a su disponibilidad así como la posibilidad de reequiparse.

#### Ejecución

En este apartado se elabora en cómo realizar la misión y la prioridad de las tareas en caso de haberlas. Se recomienda también que se inserten enlaces a las diversas marcas en el mapa, utilizando los comandos `<marker>` para facilitar la lectura.

#### Misión

En esta sección se deberá explicar en líneas generales de que va la misión. Es necesario que la información sea breve y concisa. Hay que cubrir las diferentes fases de la misión: inserción, información general y extracción. Si es necesario, se pueden incluir imágenes, especialmente si se debe eliminar o rescatar a alguien en concreto o hay objetivos muy concretos.

#### Inteligencia

La sección de inteligencia debe dar información, en caso de haberlas, sobre las tropas enemigas y aliadas en la zona.

#### Situación

El apartado de informe de situación, SITREP (Situational Report en inglés), debe dar una visión general de que se hace en la misión. Esta sección puede ser más elaborada y cubrir aspectos que no sean relevantes para la misión. Aunque para misiones únicas y sin continuación, al contrario que en campañas, este apartado puede resultar poco útil.