#!/bin/bash

###########################################################
# Author - DN-debug
# Description - Peux OS wallpaper collections' copy script
###########################################################

if zenity --question --text="Want to proceed?"
then 
    PASSWD="$(zenity --password --title=Authentication)\n"

    echo "changing directory"
    cd ../
    echo -e $PASSWD | sudo -S cp -r Peux-Backgrounds/backgrounds/* /usr/share/backgrounds
    rm -rf Peux-Backgrounds
    notify-send "Copied the images"

else
    notify-send "Operation skipped!"
fi