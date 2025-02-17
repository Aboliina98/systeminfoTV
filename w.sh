#!/bin/bash
read -p "Full screen and ENTER . . ." reg
if [[ -z "$reg" ]]
then
    clear
    read -p "Your location : " loc
    weather=$(curl wttr.in/$loc)
    echo "${weather}"
elif [[ "$reg" == "0" ]]
then
    echo "programm colsed . "
    exit 0
else
    echo "try agian for currectly input."
fi