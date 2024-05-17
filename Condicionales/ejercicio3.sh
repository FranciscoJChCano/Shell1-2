#!/bin/bash

echo "Ingrese un número:"
read numero

if [ $((numero % 2)) -eq 0 ]; then
    echo "$numero es divisible por 2"
else
    echo "$numero no es divisible por 2"
fi
