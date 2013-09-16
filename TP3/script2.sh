#!/bin/bash

# 2- Guardar solo los nombres de aquellos archivos que tengan permisos igual a 644
# pertenecientes al directorio raíz de su perfil de usuario.

find $HOME -maxdepth 1 -type f -perm 644 > archivosperm644

# $HOME es una variable de entorno que almacena la ruta asi el directorio personal del usuario
# -maxdepth es un parametro del find para evitar la recursividad, diciendo la cantidad de niveles hacia adelante
# -type especifica el tipo de fichero que se busca, -f es de fichero regular = archivos
# -perm especifica los permisos, en este caso 644
