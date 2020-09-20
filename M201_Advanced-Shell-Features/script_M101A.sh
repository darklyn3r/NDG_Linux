#!/bin/bash
# Primer SCRIPT de automatizacion NDG Linux
echo Script NDG Linux
# ruta=/home/darklyn3r/Desktop
ruta=$HOME/Desktop
#touch $ruta/archivoNDG.txt
#touch $ruta/$1.txt
echo "Ingrese el nombre del archivo a crear"
read input
touch $ruta/$input.txt
