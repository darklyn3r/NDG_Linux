#!/bin/bash

# Declaramos la funcion
agenda01 () {
    FECHA_HORA=$(date)
    sleep 4
    echo "La tarea $1 esta completa - $FECHA_HORA"
}

# Primera tarea
agenda01 desayuno

# Segunda tarea
agenda01 almuerzo

# Tercera tarea 
agenda01 cena
