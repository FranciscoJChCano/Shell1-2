#!/bin/bash

echo "Ingrese el primer número:"
read n1
echo "Ingrese el segundo número:"
read n2

if [ "$n1" -eq "$n2" ]; then
    echo "Los números ingresados son iguales"
elif [ "$n1" -gt "$n2" ]; then
    echo "$n1 es mayor que $n2"
else
    echo "$n2 es mayor que $n1"
fi
