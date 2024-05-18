#!/bin/bash

echo "Ingrese su fecha de nacimiento (YYYY-MM-DD):"
read fecha_nacimiento

fecha_actual=$(date +"%Y-%m-%d")
edad=$(echo $((($(date -d $fecha_actual +%s) - $(date -d $fecha_nacimiento +%s)) / 31536000)))
echo "Tienes $edad años."
