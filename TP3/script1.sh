#!/bin/bash

# Usando el comando “set” o “env” guardar las variables de entorno HOSTNAME, HOME,
# LOGNAME Y PATH en un archivo de nombre var-set ordenado por nombre de variable.

set | grep HOSTNAME > temporal
set | grep HOME >> temporal
set | grep LOGNAME >> temporal
set | grep PATH >> temporal

cat temporal | sort > var-set
rm temporal
