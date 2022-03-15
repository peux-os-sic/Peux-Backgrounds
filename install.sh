#!/bin/bash

###########################################################
# Author - DN-debug
# Description - Peux OS wallpaper collections' copy script
###########################################################

if zenity --question --text="Want to copy the backgrounds?"
then
    echo "changing directory"
    cd ../
    mkdir $HOME/tmp
    cp -r Peux-Backgrounds/ $HOME/tmp/
    rm -rf $HOME/tmp/Peux-Backgrounds/install.sh
    rm -rf $HOME/tmp/Peux-Backgrounds/.git
    rm -rf $HOME/tmp/Peux-Backgrounds/details.md
    notify-send "Copied the configurations to $HOME/tmp/"
else
    notify-send "skipping the setup!"
fi

# cleanup

rm -rf /tmp/fetcher/Peux-Backgrounds
notify-send "Done!"
