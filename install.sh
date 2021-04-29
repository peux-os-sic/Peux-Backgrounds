#!/bin/bash

PASSWD="$(zenity --password --title=Authentication)\n"

echo "changing directory"
cd ../
echo -e $PASSWD | sudo -S cp -r Peux-Backgrounds/backgrounds/* /usr/share/backgrounds
rm -rf Peux-Backgrounds


