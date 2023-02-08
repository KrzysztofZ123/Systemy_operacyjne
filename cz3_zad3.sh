#!/bin/bash

echo "Podaj kierunek sortowania: rosnaco/malejaco"
read kierunek

if [ $kierunek == "rosnaco" ]; then
        echo "rosnaco"
        cat $1 | sort > "$1"
elif [ $kierunek == "malejaco" ]; then
        echo "malejaco"
        cat $1 | sort -r > "$1"
else
        echo "nie rozpoznano podanego kierunku sortowania"
fi

