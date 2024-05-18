#!/bin/bash

pid_script=$$
intentos=0

echo "Adivina el PID del script:"
read intento
intentos=$((intentos + 1))

while [ "$intento" != "$pid_script" ]; do
    if [ "$intento" -gt "$pid_script" ]; then
        echo "El PID ingresado es mayor"
    else
        echo "El PID ingresado es menor"
    fi
    echo "Intenta de nuevo:"
    read intento
    intentos=$((intentos + 1))
done

echo "¡Felicidades! Has adivinado el PID del script: $pid_script"
echo "Número de intentos: $intentos"

