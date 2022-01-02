#!/bin/bash
#titul---------------+
#
#ver.001.002
#
#--------------------+
#
# Folders-----------------------------------------------------------------------
cd /opt/ && sudo mkdir -pm 777 dpkg && cd dpkg; sudo mkdir -pm 777 routerscaner
printf "# ------------------------------------------------------------------------------\n"
printf "# Librefox\n"
printf "# ------------------------------------------------------------------------------\n"
killall -i -v -w firefox
sudo mkdir /var/tmp/librefox_temporarily; cd /var/tmp/librefox_temporarily
sudo wget https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0.zip -N
sudo unzip -n Librefox*
sudo rm -r /usr/lib/firefox/defaults/ /usr/lib/firefox/distribution/
sudo cp -r defaults/ distribution/ mozilla.cfg Readme.Installation.Instructions.txt /usr/lib/firefox/
sudo rm -r /var/tmp/librefox_temporarily
printf "# ------------------------------------------------------------------------------\n"
printf "# Routerscaner\n"
printf "# ------------------------------------------------------------------------------\n"
cd /opt/dpkg/routerscaner
wget http://msk1.stascorp.com/routerscan/prerelease.7z -O routerscaner.7z
7z x *.7z; rm *.7z; cd
#*******************************************************************************************************************+
#                                                                                                                   +
#                                                      github                                                       +
#                                                                                                                   +
#*******************************************************************************************************************+
#graphite-theme-----------------------------------------------------------------------------------------------------*
#git clone https://github.com/vinceliuice/Graphite-gtk-theme.git
#sh Graphite-gtk-theme/install.sh --tweaks rimless
#sudo rm -r Graphite-gtk-theme
#graphite-cursors---------------------------------------------------------------------------------------------------*
#git clone https://github.com/vinceliuice/Graphite-cursors.git
#sh Graphite-cursors/install.sh
#sudo rm -r Graphite-cursors
# link_file---------------------------------------------------------------------
# https://git.io/JuBUw
