#!/bin/bash

# Crear un archivo de nombre informa en el directorio tp2 donde se describa lo siguiente.
# - Cantidad de usuarios conectados.
# - Cantidad de puertos abiertos.
# - Guardar los procesos que se están ejecutando en el sistema.
# - Comprimir el archivo informa

# Para los usuario, utilizaremos el who pero con algunos otros comandos para eliminar repetidos
# Dado que podria haber 1 mismo usuario utilizando mas de una terminal

# Cortamos la fila de usuario, luego ordenamos, eliminamos repetidos y contamos lineas
USUARIOS=$(who | cut -d" " -f1 | sort | unique | wc -l)

# Para saber los puertos, usaremos netstat -tunlp
# -t = TCP, -u = UDP
PUERTOS=$(netstat -tunl | wc -l)
# Tenemos que eliminarlas las primera 2 lineas que son de comentarios,
# Visualizar lo dicho en la terminal para verificar.
let PUERTOS=PUERTOS-2 # Quizas no es fundamental, pero para ser exacto.

# Para Guardar los procesos, utilizamos el comando ps aux
# a = todos, u = usuarios,  x = en ejecucion
PROCESOS=$(ps aux | wc -l)
# Nuevamente tenemos una linea de comentario
let PROCESOS=PROCESOS-1

# Por ultimo, mandamos la informacion al archivo:
echo "Cantidad de usuarios conectados: $USUARIOS" > $HOME/practicas/tp2/informa
echo "Cantidad de puertos abiertos: $PUERTOS" >> $HOME/practicas/tp2/informa
echo "Cantidad de procesos en ejecucion: $PROCESOS" >> $HOME/practicas/tp2/informa

# Para comprimir, utilizamos el gzip
gzip $HOME/practicas/tp2/informa
