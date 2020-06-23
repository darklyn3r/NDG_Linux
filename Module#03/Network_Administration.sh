#!/bin/bash
opcion=9 

while [[ $opcion != 0 ]]
do
clear 
echo "..:ADMINISTRACION DE RED:.."
echo " "
echo "1) Hacer ping"
echo "2) Trazar ruta"
echo "3) Cambiar IP"
echo "4) Consultar IP"
echo "5) Cambiar mascara"
echo "6) Sniffear (captura de trafico en la red)"
echo "0) Salir"
echo -n "SELECCIONE LA OPCION DESEADA:"
read opcion
case $opcion in 
1) clear
echo "..:HACER PING:.."
echo "Ingrese la IP a realizarle el ping: "
read ip
ping -c 5 $ip
read
;;
2) clear
echo "..:TRAZAR RUTA A UNA IP:.."
echo "Ingrese la IP:"
read ip
traceroute $ip
read
;;
3) clear
echo "..:CAMBIAR IP:.."
echo "Ingrese la interfaz:"
read eth
echo "Ingrese la nueva IP:"
read ip
ifconfig $eth $ip
echo "La nueva IP de la interface $eth es $ip"
read
;;
4) clear
echo "..:CONSULTA DE IP:.."
echo "Ingrese la interfaz: "
read eth
echo -e "Su IP es: "
ipconfig $eth | grep "inet"
read
;;
5)clear
echo "..:CAMBIAR MASCARA DE RED:.."
echo "Ingrese la interfaz: "
read eth
echo "Ingrese la nueva mascara:"
read masc
ifconfig $eth netmask $masc
echo "La nueva mascara de la interfaz $eth es $masc"
;;
6) clear 
echo "..:CAPTURAR PAQUETES EN LA RED:.."
echo "Presione Ctrl+c para detener"
read
tcpdump
;;
0) 
echo "FIN"
echo "Precione ENTER para salir"
read
break
;;
*) 
echo "ERROR!!! opcion incorrecta, vuelva a intentarlo"
echo "Precione ENTER para salir"
read
esac
done
