#!/bin/bash

# 11- Hacer un script que compare dos cadenas introducidas como parámetros, previamente
# comprobar si el número de parámetros es correcto.

if [ "$1" -a "$2" ]; then
	if [ "$1" = "$2" ]; then
		echo "Las cadenas son iguales"
	else
		echo "Las cadenas no coinciden"
	fi
else
	echo "El script requiere 2 parametros"
fi
