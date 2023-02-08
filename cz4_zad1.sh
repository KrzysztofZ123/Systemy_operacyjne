#!/bin/bash

num_do_odgadniecia=100

while [ 1 ]
do
	echo "Podaj liczbę"
	read liczba

	if [ $liczba -lt $num_do_odgadniecia ]; then
		echo "Liczba za mała"
	elif [ $liczba -gt $num_do_odgadniecia ]; then
		echo "Liczba za duża"
	else
		echo "Prawidłowa liczba"
		break
	fi
done

