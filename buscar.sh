#!/bin/bash

resultado=$(grep -rl "home" "$1")
if [ -z "$resultado" ]; then 
	echo "No se encontraron resultados "
else
	echo "$resultado"
fi

