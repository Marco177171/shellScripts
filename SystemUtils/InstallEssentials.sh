#!/bin/bash

echo INSTALLING BASIC MUST HAVE SOFTWARE

sudo apt update && sudo apt upgrade -y
echo SYSTEM UPDATED

sudo apt install -y ssh git wget curl tree neofetch vim net-tools powertop htop

sudo snap install brave discord insomnia mailspring slack spotify code loupe onlyoffice-desktopeditors trello-desktop

echo ESSENTIALS INSTALLED
