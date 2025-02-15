# Pokémon Information Fetcher

Este script de Bash permite obtener información básica de un Pokémon utilizando la [PokeAPI](https://pokeapi.co) y guarda los resultados en un archivo CSV.

## Descripción
El script realiza lo siguiente:
1. Recibe un nombre o ID de Pokémon como parámetro
2. Consulta la PokeAPI para obtener datos del Pokémon
3. Muestra información relevante en la consola
4. Almacena los datos en un archivo `pokemons.csv`

## Prerrequisitos
- `bash` (entorno Unix/Linux/MacOS)
- `curl` instalado
- `jq` instalado (procesador JSON)