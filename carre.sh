#!/bin/bash

# Vérification que l'entrée est un entier (Gestion d'erreur)
if [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Le carré de $1 est $(( $1 * $1 ))"
else
    echo "Erreur : Veuillez entrer un nombre entier."
    exit 1
fi
