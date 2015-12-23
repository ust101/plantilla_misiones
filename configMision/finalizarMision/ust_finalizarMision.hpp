//=======================================================================================================
// Archivo: ust_finalizarMision.hpp                                                                        
// Autor: CC_Magnetar                                                                                    
// Versión: 1.0                                                                                           
// Creación del Documento: 2015/11/26                                                                      
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se utiliza este 
//              módulo durante la misión. En este caso declara funciones que dependen de la misión y que 
//              sirven para finalizar la misión dependiendo de los objetivos.                   
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                              
//=======================================================================================================

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTES
    class configMision_finalizarMision {};
#endif

// Define las funciones que tienen este componente.
#ifdef UST_FUNCIONES
    class configMisio_finalizarMision {
        file = "configMision\finalizarMision\funciones";
        class finalizarMision{};
    };
#endif

// Especifica los permisos de la función en multijugador.
#ifdef UST_REMOTEEXEC_FUNCIONES
    class ust_fnc_finalizarMision { allowedTargets = 0; }; // A esta función puede acceder todo el mundo.
#endif

//=========================================== FIN DEL FICHERO ==========================================//
