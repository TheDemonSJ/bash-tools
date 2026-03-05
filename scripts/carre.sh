#!/bin/bash

echo "Entrez un nombre :"
read nombre

if [[ "$nombre" =~ ^-?[0-9]+$ ]]; then
	carre=$((nombre * nombre))
	echo "Le carré de $nombre est $carre"
else
	echo "Erreur : vous devez entrer un entier."
fi
