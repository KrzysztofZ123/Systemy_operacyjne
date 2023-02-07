#!/bin/bash

# rozbiłem obliczenia na 2 części żeby skrócić długość bc
a=$((2*(8-3*2)))
b=$((5*5-15))

# wypisujemy na terminal wynik dzielenia przekierowany do bc z 3 miejscami po przecinku
echo "scale=3; $a / $b" | bc
