 #!/bin/bash

suma=0
ilosc=0

while [ 1 ]
do
        echo "Podaj liczbę:"
        read liczba

        if [ $liczba == "Q" ] || [ $liczba == "q" ]; then
                echo "Wychodzenie ze skryptu"
                break
        else
                ((suma=suma+liczba))
                ((ilosc+=1))
        fi
done

echo "scale=2;$suma/$ilosc" | bc
