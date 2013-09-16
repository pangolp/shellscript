#!/bin/bash

# 6- Compruebe si un directorio cualquiera pasado como argumento existe, en tal caso contabilizar
# la cantidad de archivos y directorios, guardar ambos contadores en un archivo. Usar una
# estructura repetitiva para resolverlo.

if [ $1 ]; then
	if [ -d $1 ]; then
		for I in $1/*; do
			if [ -f "$I" ]; then
				let FICHEROS=FICHEROS+1
			else
				if [ -d "$I" ]; then
					let DIRECTORIOS=DIRECTORIOS+1
				fi
			fi
		done
		echo "cantidad de ficheros en $1 es: $FICHEROS" > contadores
		echo "Cantidad de directorios en $1 es: $DIRECTORIOS" >> contadores
	else
		echo "El parametro no es un directorio"
	fi
else
	echo "el script requiere un parametro"
fi

# Tuve que ponerle comillas al $I por las dudas que exista un fichero o directorio con nombre compuesto
# Por ejemplo: Ubuntu One
# La otra vez, lleva redirecion simple (>), luego doble (>>) para no pisar lo anterior.
# El let se utiliza para operaciones aritmeticas
