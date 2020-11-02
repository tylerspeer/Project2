#!/usr/bin/bash

greeting="hola"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, have a gvreat week!"
echo "Your Bash shell version is : $BASH_VERSION. Enjoy!"

