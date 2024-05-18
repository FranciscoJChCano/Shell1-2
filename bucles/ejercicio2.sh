#!/bin/bash

echo "Ingrese el nombre del archivo a agregar:"
read nombre_archivo

touch "$nombre_archivo"
echo "Archivo '$nombre_archivo' creado."

sleep 3

echo "Lista de archivos actual:"
ls

echo "¿Desea borrar un archivo? (Sí/No):"
read respuesta

if [ "$respuesta" = "Sí" ]; then
    echo "Ingrese el nombre del archivo a borrar:"
    read archivo_borrar
    echo "Ingrese el formato del archivo a borrar:"
    read formato_borrar

    if [ -f "$archivo_borrar.$formato_borrar" ]; then
        rm "$archivo_borrar.$formato_borrar"
        echo "El archivo '$archivo_borrar.$formato_borrar' fue encontrado y borrado."
    else
        echo "El archivo '$archivo_borrar.$formato_borrar' no fue encontrado."
    fi
else
    echo "Ok, no borraremos ningún archivo."
fi
