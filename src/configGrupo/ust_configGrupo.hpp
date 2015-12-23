//=======================================================================================================//
// Archivo: ust_configGrup.hpp                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se utiliza este   //
//              módulol durante la misión. En este caso, declara funciones que configuran al grupo de la //
//              unidad jugable.                                                                          //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que el componente ha sido cargado
#ifdef UST_COMPONENTES
    class configGrupo {};
#endif

// Define las funciones que tiene el componente.
#ifdef UST_FUNCIONES
    class configGrupo {
        file = "src\configGrupo\funciones";
        class configGrupo{};
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
