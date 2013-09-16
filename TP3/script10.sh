#!/bin/bash

# 10- Hacer un script que pida continuamente una palabra clave, si la palabra introducida es
# “secreto” que nos muestre un mensaje de Bienvenida.

echo "Ingrese una palabra"
read PALABRA

while [ "$PALABRA" != "secreto" ]; do
	echo "Ingrese una palabra"
	read PALABRA
done
echo "Bienvenido!"

# El bucle solo termina si se pone la palabra secreto en minuscula.
# El mas minimo cambio no coincide y sigue dentro del bucle.
# Si se quiere modificar dicha condicion, queda a criterio de cada uno.
