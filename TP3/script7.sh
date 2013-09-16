#!/bin/bash

# 7- Muestre los números naturales del 1-20
A=1
while [ $A -le 20 ]; do
	echo $A
	let A=A+1
done

# Otra forma seria:
# for I in `seq 1 20`; do
# 	echo $I
# done

# Al comando seq se le puede especificar el paso:
# ejemplo: seq 1 2 20
# Me imprime los numeros impares entre 1 y 20
# Probar en la consola.
