#!/bin/bash

# 3- Usando el comando find, generar un script que al pasarle un directorio cualquiera pasado
# como parámetro:
# a) Guarde en el archivo name los nombres de archivos que comienzan con la letra a.
# b) Guarde en el archivo extend los nombres de archivos que tienen extensión .txt
# c) Guarde en el archivo perm los nombre de archivos que tienen permisos iguales a 644

if [ $1 ]; then
	if [ -d $1 ]; then
		find $1 -maxdepth 1 -type f -name "a*" > name
		find $1 -maxdepth 1 -type f -name "*.txt" > extend
		find $1 -maxdepth 1 -type f -perm 644 > perm
	else
		echo "el parametro debe ser un directorio"
	fi
else
	echo "El script requiere un parametro"
fi
