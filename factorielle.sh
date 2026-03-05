#!/bin/bash

# 1. Vérification : Est-ce qu'il y a un argument ?
if [ $# -eq 0 ]; then
    echo "Usage: $0 <nombre>"
    exit 1  # On quitte avec une erreur
fi

# 2. Vérification : Est-ce que c'est un entier positif ?
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Erreur : '$1' n'est pas un nombre entier valide."
    exit 1
fi

# 3. Calcul si tout est OK
res=1
for (( i=1; i<=$1; i++ )); do
    res=$(( res * i ))
done

echo "La factorielle de $1 est $res"
exit 0 # Tout s'est bien passé
