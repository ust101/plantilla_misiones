## Scripts / intro

En esta carpeta se encuentran los diferentes archivos para crear una introducción a la partida. El archivo `ust_intro.sqf` es el archivo al que se debe acceder desde `init.sqf` y por norma general no se debe modificar.

Cada una de las facciones soportadas tiene un archivo propio que debe customizar si alguno de los jugadores forma parte de esta facción y el efecto que de momento está configurado es el de una pantalla en negro donde van apareciendo las siguientes entradas:

* Una frase de bienvenida sobre un fondo negro (línea 26). Por defecto: `UST101 - El camino a la simulación`.
* Nombre de la misión (línea 38), hora (línea 39) y localización (línea 40) a la derecha de la pantalla con un efecto blur.