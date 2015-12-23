## Scripts / comun

En esta carpeta se encuentran los siguientes archivos, que sirven para configurar variables comunes al resto de los scripts y funciones de la plantilla a excepción
de addons externos:

* * `ust_variables_comunes.sqf` *: es el único archivo que puede ser de interés para el creador de la misión. En este archivo se definen las variables `ust_var_gruposAC`
  y `ust_var_frecuenciasAC`. Estas variables son importantes a la hora de configurar, si se quiere, los canales y las frecuencias de las radios del ACRE2.

* * `Fn_procesarMods` *: Este archivo no se debería modificar a menos que se quiera añadir un mod que se quiera detectar de forma automática para después
  configurarlo mediante scripts. Se ejecuta durante la fase de `PostInit`. Actualmente los siguientes mods están soportados:
  * Advanced Combat Environment 3 (ACE 3).
  * Advanced Combat Radio Enviroment 2 (ACRE2).
  
* * `Fn_procesarParamsArray` *: Este archivo, que se ejecuta durante la fase de` PreInit`, no se debe modificar ya que procesa los diferentes parámetros de la misión
  (`class Params` al fichero` description.ext`) para que las variables definidas sean accesibles a todos los clientes y sean compatibles con el uso de
  servidores dedicados.