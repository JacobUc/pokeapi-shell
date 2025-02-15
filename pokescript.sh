#!/bin/bash

if [ -z $1 ]; then
    echo "No se pasó ningún Pokémon"
    exit 1
fi

POKEMON=$1;
URL="https://pokeapi.co/api/v2/pokemon/$POKEMON"
response=$(curl -s $URL);

if [[ $response == "Not Found" ]]; then
    echo "Pokémon no encontrado"

else

    id=$(echo $response | jq '.id')
    order=$(echo $response | jq '.order')
    name=$(echo $response | jq -r '.name')
    weight=$(echo $response | jq '.weight')
    height=$(echo $response | jq '.height')

    echo "$name (No. $order)"
    echo "Id = $id"
    echo "Weight $weight"
    echo "Height $height"

    # Guardar en archivo CSV
    FILE="pokemons.csv"

    if [ ! -f "$FILE" ]; then
        echo "id,name,weight,height,order" > "$FILE"
    fi

    echo "$id,$name,$weight,$height,$order" >> $FILE
fi