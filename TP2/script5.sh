#!/bin/bash

# Hacer un script que realice los siguientes pasos:
# - Descomprimir el directorio practicas en un directorio llamado nuevo
# - Del archivo cmd.txt sacar las líneas que corresponden al comando ls y guardarlas en el archivo listado
# - Comprimir el archivo listado.

# Para el primer punto, dependera de donde este ubicado el directorio practicas, yo supongo que esta dentro del home del usuario
mkdir $HOME/nuevo # Previamente hay que crear el directorio donde se quiere descomprimir
tar -xvf $HOME/practicas -C $HOME/nuevo

# El archivo cmd.txt fue renombrado en la practica 1 como hist.txt, asi que utilizaremos dicho archivo
cat $HOME/practicas/tp1/hist.txt | grep ls > listado

# Para comprimir se utiliza el gzip, para comprimir y empaquetar solo usamos el tar con el parametro -z, note la diferencia
gzip listado

