#!/bin/bash
if [$# -lt 3]; then
    echo "Incorrecto , Es necesario realizar 3 parámetros"
    exit 1
fi

echo "El primer parámetro es: $1"
echo "El tercer parámetro es: $3"
