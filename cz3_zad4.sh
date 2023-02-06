#!/bin/bash

echo "Podaj nazwę pliku, którego zawartość chcesz skopiować:"
read nazwa_pliku

if [ -e $nazwa_pliku ]; then
	
	echo "Podaj ścieżkę do pliku docelowego:"
	read nazwa_pliku_docelowego
	
	if [ -e $nazwa_pliku_docelowego ] && [ -w $nazwa_pliku_docelowego ]; then
		cat $nazwa_pliku >> $nazwa_pliku_docelowego
	
	elif [ -e $nazwa_pliku_docelowego ]; then
		echo "Nie masz prawa do zapisu"
	
	else
		cat $nazwa_pliku > $nazwa_pliku_docelowego
	fi

else
	echo "Plik nie istnieje"
fi


