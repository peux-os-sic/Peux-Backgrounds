#!/bin/bash

PASSWD="$(zenity --password --title=Authentication)\n"

echo "changing directory"
cd ../
echo -e $PASSWD | sudo -S cp -r Peux-Backgrounds/*/ /usr/share/
rm -rf Peux-Startpages


