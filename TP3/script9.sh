#!/bin/bash

# 9- Hacer un script que acepte un fichero como parámetro, comprobar si este existe, en caso que
# si exista convertir todas sus letras minúsculas en mayúsculas en lo que respecta al contenido
# del mismo.

if [ $1 ]; then
	if [ -f $1 ]; then
		cat $1 | tr "a-z" "A-Z"
	else
		echo "El parametro debe ser un fichero"
	fi
else
	echo "El script requiere un parametro"
fi
