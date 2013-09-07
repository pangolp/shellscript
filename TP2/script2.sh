#!/bin/bash
# cp <origen> <destino>
cp /etc/fstab $HOME/practicas/tp2/dispositivos
# Limpia la pantalla
clear
# Con el grep busco a traves de la palabra clave floppy
grep "floppy" $HOME/practicas/tp2/dispositivos
# Me muevo al directorio que deseo empaquetar
cd $HOME/practicas/
tar -czvf "$HOME/practicas/tp1.tar.gz" tp1
