#!/bin/bash

# 8- Hacer un script que visualice un menú de tres opciones, la primera borra un fichero
# cualquiera, la segunda visualiza un fichero, la tercera copia un archivo al directorio actual y la
# cuarta sale del script.

echo "1- Borra un fichero: "
echo "2- Visualizar un fichero: "
echo "3- Copiar un archivo al directorio actual: "
echo "4- Salir del script"

echo "Ingrse una opcion del 1 al 4"
read OPCION

case $OPCION in
	1)
		echo "Ingrese la ruta absoluta hacia el fichero a borrar"
		echo 'No se puede utlizar "$HOME" en el read'
		read RUTA
		rm $RUTA
		;;
	2)
		echo "Ingrese la ruta absoluta hacia el fichero a visualizar"
		echo 'No se puede utlizar "$HOME" en el read'
		read RUTA
		cat $RUTA
		;;
	3)
		echo "Ingrese la ruta absoluta hacia el fichero a copiar"
		echo 'No se puede utlizar "$HOME" en el read'
		read RUTA
		cp $RUTA .
		;;
	4)
		echo "Adios"
		exit
		;;
	*)
		echo "Debe ingresar un numero entre 1 y 4"
esac
