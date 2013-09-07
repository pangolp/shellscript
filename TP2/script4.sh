#!/bin/bash
DIRECTORIOS=0
ARCHIVOS=0
if [ $1 ]; then # Chequeamos que se le pase un parametro al script
	if [ -d $1 ]; then # Chequeamos que sea un directorio
		for I in $1/*; do
			if [ -d $I ]; then
				let DIRECTORIOS=DIRECTORIOS+1
			else
				if [ -f $I ]; then
					let ARCHIVOS=ARCHIVOS+1
				fi
			fi
		done
		echo "Cantidad de archivos en $1 es: $ARCHIVOS"
		echo "Cantidad de directorios en $1 es: $DIRECTORIOS"
	else
		echo "El parametro no es un directorio"
	fi
else
	echo "El script requiere un parametro"
fi

# Nota: Los enlaces los toma como archivos o directorios
# Dependiendo de lo que los mismos representen.
