//=======================================================================================================
// Archivo: ust_componentes.hpp                                                                       	 
// Autor: CC_Magnetar                                                                                    
// Adaptado por: [UST] Artur																			 
// Versión: 1.0                                                                                          
// Creación del Documento: 2015/11/26                                                                    
// Descripción: Este fichero sirve para cargar los diferentes componentes de la plantilla de forma 		 
//              modular. Este fichero no debe ser modificado bajo ninguna circunstancia ya que puede     
//              afectar gravemente el funcionamiento de scripts y funciones incluidos en la plantilla	 
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                              
//=======================================================================================================

// Genarales.
#include "src\comun\ust_comu.hpp"                       	// Funciones comunes y esenciales para el funcionamiento de los scripts.
#include "src\configEquipacion\ust_configEquipacion.hpp" 	// Funciones para equipar los distintos roles.
#include "src\configGrupo\ust_configGrupo.hpp"           	// Funciones para configurar los grupos de unidad y su identificador.
#include "src\configUnidad\ust_configUnidad.hpp"       		// Función para configurar las unidades.
#include "src\misc\ust_misc.hpp"                       		// Funciones miscelanea.
#include "src\zeus\ust_zeus.hpp"                       		// Añadir a Zeus los distintos objetos a la misión que se han añadido con el editor u otros Zeus.

// Declaraciones específicas de cada misión.
#include "configMision\comun\ust_comun.hpp"
#include "configMision\finalizarMision\ust_finalizarMision.hpp"

// Declaraciones dependientes de modificaciones externas.
#include "configMision\ust_componentes_addons.hpp"

//=========================================== FIN DEL FICHERO ==========================================//
