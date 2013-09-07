#!/bin/bash

#Realizar un script que evalúe 2 archivos pasados como argumentos indicando adecuadamente entre
#ambos cual posee más cantidad de líneas.

ARCHIVO1=$(cat $1 | wc -l)
ARCHIVO2=$(cat $2 | wc -l)

if [ $ARCHIVO1 -gt $ARCHIVO2 ]; then
	echo "$1 y $2 tienen la misma cantidad de lineas"
else
	if [ $ARCHIVO1 -eq $ARCHIVO2 ]; then
		echo "$1 tiene mas lineas que $2"
	else
		echo "$2 tiene mas lineas que $1"
	fi
fi

# 1). Primero almacenamos las lineas de los archivos pasados en 1 variables
# 2). Luego las comparamos dentro de un if, -gt = mayor que, -eq = igual que
# 3). Imprimimos por pantalla los correspondientes mensajes

# Para que funcione el script debe tener 2 parametros, es decir:
# A la hora de ejecutarlo: ./script3.sh debemos pasarle 2 archivos
# Por ejemplo: ./script3.sh /etc/passwd /etc/group
