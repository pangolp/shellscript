#!/bin/bash

# Hacer un script que realice los siguientes pasos:
# - Copiar el archivo solo-archivos.txt de la práctica anterior como solo-archivo.
# - Cambiar los permisos del archivo solo-archivo para que pueda ser modificado por otros
# - Adicionar al archivo anterior el contenido del archivo perfil.txt.

# Recordar el que "." hace referecia al directorio actual, donde se ejecuta el script en este caso
cp $HOME/practicas/tp1/solo-archivos.txt ./solo-archivo

# Para modificar permisos, utilizamos el comando chmod, hay 2 formas de hacerlo, con + - rwx o con octal
chmod o+w ./solo-archivo

# Para adicionar el contenido de otro fichero, sin pisar la informacion, utilizamos redirecion doble (>>)
cat $HOME/practicas/tp1/perfil.txt >> ./solo-archivo

# Nota: Todo depende de la ubicacion que cada uno le de a sus archivos.
# En este caso yo elegi guardar los archivos en directorio corriente.
