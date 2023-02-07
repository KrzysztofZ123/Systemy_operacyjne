#!/bin/bash

a=6
b=25
# sposób 1, 6 do kwadratu
declare -i c=$a*$a
echo $c
# sposób 2, 25 do kwadratu
echo `expr $b \* $b`
