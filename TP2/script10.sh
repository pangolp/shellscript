#!/bin/bash

# Tomar el archivo passwd copiado en el tp1 y utilizarlo en un script que permita simular dar de alta un
# usuario en términos de:
# 	Info01:x:uid:guid: :/home/info01:/bin/bash
# El usuario info01 debe ser pasado como argumento.

if [ $1 ]; then
	# Realizamos la copia del passwd al lugar donde se ejecuta el script
	cp /etc/passwd .

	# Cortamos el Id de usuario y Id de grupo, para almacenarlo en 2 variables
	IDUSUARIO=$(tail -1 passwd | cut -d: -f3)
	IDGRUPO=$(tail -1 passwd | cut -d: -f4)

	# Aumentamos ambas variables en 1 unidad
	let IDUSUARIO=IDUSUARIO+1
	let IDGRUPO=IDGRUPO+1

	# Vamos a ingresar el supuesto usuario en la copia del archivo passwd previamente realizada
	echo "$1:x:$IDUSUARIO:$IDGRUPO: :/home/$1:/bin/bash" >> passwd
else
	echo "El script requiere un parametro, el nombre de usuario"
fi

