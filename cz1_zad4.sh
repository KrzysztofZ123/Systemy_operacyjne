#!/bin/bash

# ustawiamy ścieżkę na podaną przez użytkownika w argumencie
cd $1

echo "Ilość plików we wskazanym folderze:"
# znajdujemy wszystkie pliki oprócz ukrytych i je zliczamy
find -maxdepth 1 -type f | grep -v '^\./\.' | wc -l

echo "Ilość folderów we wskazanym folderze:"
# znajdujemy wszystkie foldery oprócz ukrytych i /. /.. i je zliczamy
find -maxdepth 1 -type d | grep -v '^\.$' | wc -l
