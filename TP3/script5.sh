#!/bin/bash

# 5- Hacer un script que luego de ejecutarse pida al usuario 2 números y después presente la
# suma, resta, producto y división de los mismos

echo "Ingrese el primer numero: "
read NUMERO1
echo "Ingrese otro numero: "
read NUMERO2
clear # Limpio la pantalla, es opcional
echo "El primer numero es: $NUMERO1"
echo "El segundo numero es: $NUMERO2"
echo "La suma es: $(($NUMERO1+$NUMERO2))"
echo "La resta es: $(($NUMERO1-$NUMERO2))"
echo "La multiplicacion es: $(($NUMERO1*$NUMERO2))"
if [ $NUMERO2 -ne 0 ]; then
	echo "La division es: $(($NUMERO1/$NUMERO2))"
else
	echo "No existe la division por cero"
fi
