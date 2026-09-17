#!/bin/bash

palabra=$1

carpeta=$2
if [ -z "$carpeta" ]; then
    carpeta="."
fi

if [ -z "$palabra" ]; then
    echo "Uso: $0 <palabra> [carpeta]"
    exit 1
fi
resultado=$(grep -rl "$palabra" "$carpeta")

if [ -z "$resultado" ]; then
    echo "No se encontraron resultados"
else
    echo "$resultado"
fi
