## Scripts / zeus

En esta carpeta se encuentran los archivos que sirven para añadir al Zeus las unidades que se han puesto mediante el editor,
los jugadores y las unidades puestas durante la partida para otras Zeus. Consta de cuatro ficheros, que no son necesarios que
se modifiquen por la misión:

* `ust_zeus_init.sqf`: se ejecuta sólo en el servidor y añade a Zeus todas las unidades añadidas en el mapa mediante el editor,
  así como los objetos y los vehículos con su tripulación. Se ejecuta desde el archivo `init.sqf`.
* `Fn_zeus_eventHandlers.sqf`: se ejecuta durante la fase de` PostInit` y crea un "EventHandler" que se ejecuta cada vez que uno de los
  Zeus en la partida pone un objeto (`fn_zeus_anadirObjetos.sqf`) o un grupo con unidades (` fn_zeus_anadirGrupos.sqf`).
  * `fn_zeus_anadirObjetos.sqf`: Añadir un objeto, colocado mediante el Zeus, como objeto editable los demás Zeus.
  * `fn_zeus_anadirGrupos.sqf`: Añade un grupo, con la tripulación en caso de que sea un vehículo, que se haya colocado mediante
    Zeus al resto de Zeus.
