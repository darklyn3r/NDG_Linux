#!/bin/bash

# Declaramos la función
Funcion () {
    FECHA_HORA=$(date)
    sleep 4
    echo "La tarea $1 se encuentra ahora completa - $FECHA_HORA"
}

# Primera tarea
Funcion desayuno

# Segunda tarea
Funcion almuerzo

# Tercera tarea 
Funcion cena
