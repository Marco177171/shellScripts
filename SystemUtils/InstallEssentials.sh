#!/bin/bash

echo INSTALLING BASIC MUST HAVE SOFTWARE

sudo apt update && sudo apt upgrade -y
echo SYSTEM UPDATED

sudo apt install -y ssh wget curl tree neofetch vim net-tools
echo ESSENTIAL INSTALLED
