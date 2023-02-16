#!/bin/bash

# Skrypt działa tylko z pełnymi ścieżkami!
# skróty typu ~/ nie działają

echo "Podaj ścieżkę do wyszukiwania:"
read sciezka
echo "Podaj szukaną frazę:"
read fraza

if [ -d $sciezka ]; then
        echo "Podano ścieżkę do folderu."
        echo "przeszukiwanie folderu w poszukiwaniu"
        echo "plików o nazwach zgodnych z podaną frazą:"
        ls $sciezka | grep $fraza

elif [ -f $sciezka ]; then
        echo "Podano ścieżkę do pliku."
        echo "Przeszukiwanie podanego pliku"
        echo "w celu odnalezienia podanej frazy:"
        cat $sciezka | grep $fraza

else
        echo "Błędna ścieżka"
fi


