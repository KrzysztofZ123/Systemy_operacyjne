#!/bin/bash

if [ -e $1 -a -e $2 ]; then
	echo "Oba pliki istnieją"
	if [ $1 -nt $2 ]; then
		echo "Plik $2 jest starszy"
	else
		echo "Plik $1 jest starszy"
	fi
else
	echo "Jeden lub oba pliki nie istnieją"
fi
