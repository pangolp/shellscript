#!/bin/bash

# 4- Usando el comando “stat” listar todos los archivos del directorio corriente modificados en el
# mes de mayo del 2012.

for I in `pwd`/*; do
	MES=$(stat $I -c%y | cut -c1-7) # Esto nos devolvieria 2012-05, 2012-06 .. dependiendo del mes y año
	if [ "$MES" = "2012-05" ]; then
		echo $I
	fi
done

# Utilizo pwd para que me liste los archivos del directorio corriente, se podria utilizar . tambien
# -c del cut corta caracteres, en este caso del 1 al 7. No es la unica forma de hacerlo
# con `pwd`/* generamos la lista sobre la que vamos a iterar
# `pwd` nos muestra el directorio actual, con /* listo todos los archivos del directorio corriente
