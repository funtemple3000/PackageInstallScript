#!/usr/bin/bash

#Package install script
#This will guide a user through installing packages through apt.

dialog --msgbox "Welcome to Package Install!" 0 0
clear
dialog --msgbox "Updating your system..." 0 0
clear
sudo apt update
echo "Type anything to continue."
read
clear

packagename=$(dialog --title "Package Install" --inputbox "Enter the name of the package you want to install." 0 0 \
3>&1 1>&2 2>&3 3>&- \
)
clear

sudo apt install $packagename
clear
echo "Type anything to continue."
read
dialog --msgbox "Done! Thank you for using this script!" 0 0
clear