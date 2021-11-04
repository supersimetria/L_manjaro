#!/bin/bash
#titul---------------+
#
#ver.001.006
#
#--------------------+
#
#folders------------------------------------------------------------------------------------------------------------+
cd /opt/ && sudo mkdir -pm 777 dpkg && cd dpkg; sudo mkdir -pm 777 librefox routerscaner
#librefox-----------------------------------------------------------------------------------------------------------+
killall -i -v -w firefox
sudo mkdir /var/tmp/librefox_temporarily; cd /var/tmp/librefox_temporarily
sudo wget https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0.zip -N
sudo unzip -n Librefox*
sudo rm -r /usr/lib/firefox/defaults/ /usr/lib/firefox/distribution/
sudo cp -r defaults/ distribution/ mozilla.cfg Readme.Installation.Instructions.txt /usr/lib/firefox/
sudo rm -r /var/tmp/librefox_temporarily
#routerscaner-------------------------------------------------------------------------------------------------------+
cd /opt/dpkg/routerscaner
wget http://msk1.stascorp.com/routerscan/prerelease.7z -O routerscaner.7z
7z x *.7z; rm *.7z; cd
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBUw
