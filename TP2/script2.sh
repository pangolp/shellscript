#!/bin/bash
# cp <origen> <destino>
cp /etc/fstab $HOME/practicas/tp2/dispositivos
clear # Limpia la pantalla
grep "floppy" $HOME/practicas/tp2/dispositivos
# Me muevo al directorio que deseo empaquetar
cd $HOME/practicas/
tar -czvf "$HOME/practicas/tp1.tar.gz" tp1
