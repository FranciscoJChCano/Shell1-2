#!/bin/bash
function parametros()
{
    fichero="carpeta personal"
    echo "En el fichero $fichero existen" $# "parametros"
}

texto=$(parametros 1 2 3 4 5)
echo $texto
