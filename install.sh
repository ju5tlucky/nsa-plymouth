#!/bin/bash
# a simple list commmands to set the nsa-plymouth as the default boot splash screen theme
# change "nsa-plymouth" to any other custom theme you wish to install
# INSTALLATION INSTRUCTIONS:
# make install.sh executable and run it from the terminal

# make a new directory for storing the theme
sudo mkdir /usr/share/plymouth/themes/nsa

# copy the contents
sudo cp --recursive {images,nsa.plymouth,nsa.script,README.md} /usr/share/plymouth/themes/nsa 
#set as default theme
sudo ln -sf /lib/plymouth/themes/nsa-plymouth/nsa.plymouth /etc/alternatives/default.plymouth
