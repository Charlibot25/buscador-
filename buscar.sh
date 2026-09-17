#!/bin/bash
echo "Buscando archivos en home..."

palabra=$1
grep -rl home $palabra
