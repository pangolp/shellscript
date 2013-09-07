#!/bin/bash

# Implementar un script usando la sentencia while, en donde se lea el archivo passwd
# línea por línea y se imprima el mismo por Terminal.

while read LINEA; do
	echo $LINEA
	sleep 1 # Una pausa de 1 segundo
done < /etc/passwd
