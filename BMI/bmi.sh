#!/bin/bash

echo B B B B B B B B B B B B B B 
echo M M M M M M M M M M M M M M 
echo I I I I I I I I I I I I I I
echo.
echo  		BY
echo       A  E  R  O   M OD S

read -p "Bitte geben Sie Ihr Gewicht in Kilogramm ein: " gewicht
read -p "Bitte geben Sie Ihre Größe in Metern ein: " groesse

bmi=$(echo "scale=2; $gewicht / ($groesse * $groesse)" | bc)

echo "Ihr BMI beträgt $bmi."

if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "Du Lauch!."
elif (( $(echo "$bmi >= 18.5 && $bmi <= 24.9" | bc -l) )); then
    echo "Dein Gewicht ist normal."
elif (( $(echo "$bmi >= 25 && $bmi <= 29.9" | bc -l) )); then
    echo "Du bist fett."
else
    echo "Du bist vieel zu fett."
fi
