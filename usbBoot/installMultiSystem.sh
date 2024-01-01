echo /// INSTALL MULTISYSTEM USB BOOT MANAGER
sudo apt install software-properties-common
echo /// IMPORTING REPOSITORY PUBLIC KEY...
wget -q -O - http://liveusb.info/multisystem/depot/multisystem.asc | sudo apt-key add -
echo /// ADDING MULTISYSTEM TO APT REPOS FOR UPDATES...
sudo apt-add-repository 'deb http://liveusb.info/multisystem/depot all main'
echo /// UPDATING SYSTEM...
sudo apt update
echo /// INSTALLING MULTISYSTEM
sudo apt install multisystem
