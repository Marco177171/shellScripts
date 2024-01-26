#!/bin/bash

echo INSTALLING BASIC MUST HAVE SOFTWARE

sudo apt update && sudo apt upgrade -y
echo SYSTEM UPDATED

sudo apt install -y ssh git wget curl tree neofetch vim net-tools powertop htop gnome-tweaks gnome-shell-extension-manager tilix filezilla

sudo snap install brave discord insomnia mailspring slack spotify loupe onlyoffice-desktopeditors trello-desktop inkscape laidout gimp

echo ESSENTIALS INSTALLED
