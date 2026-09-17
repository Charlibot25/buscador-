#!/bin/bash


if [ -z "$1" ]; then
    echo "Uso: $0 <carpeta>"
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "Error: '$1' no es una carpeta"
    exit 1
fi

carpeta=$1
resultado=$(grep -rl home $carpeta)



if [ -z "$resultado" ]; then
    echo "No se encontraron resultados"
else
    echo "$resultado"
fi
