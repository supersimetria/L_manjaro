#!/bin/bash
#titul---------------+																								#
#																													#
#ver.001.001																										#
#																													#
#--------------------+																								#
#																													#
#folders------------------------------------------------------------------------------------------------------------+
cd /opt/ && sudo mkdir -pm 777 dpkg && cd dpkg; sudo mkdir -pm 777 intercepter-ng librefox osiig routerscaner		#
#intercepter-ng-----------------------------------------------------------------------------------------------------+
cd /opt/dpkg/intercepter-ng																							#
wget https://github.com/intercepter-ng/mirror/blob/master/wine_pcap_dlls.tar.gz?raw=true -O wine_pcap_dlls.tar.gz	#
tar xvzf wine_pcap_dlls.tar.gz																						#
sudo cp wpcap/wpcap.dll.so /usr/lib32/wine/; sudo cp packet/packet.dll.so /usr/lib32/wine/							#
rm -rf wine_pcap_dlls.tar.gz wpcap/ packet/																			#
sudo winetricks cc580																								#
sudo ethtool --offload eno1 rx off tx off																			#
wget https://github.com/intercepter-ng/mirror/blob/master/Intercepter-NG.v1.0.zip?raw=true -O Intercepter-NG.zip	#
unzip Intercepter-NG.zip; rm wpcap.dll; rm Packet.dll																#
sudo ln -s /usr/lib32/libpcap.so /usr/lib32/libpcap.so.0.8															#
#librefox-----------------------------------------------------------------------------------------------------------+
killall -i -v -w firefox																							#
sudo mkdir /var/tmp/librefox_temporarily; cd /var/tmp/librefox_temporarily											#
sudo wget https://github.com/intika/Librefox/releases/download/Librefox-v2.1-v64.0.0/Librefox-2.1-Firefox-Linux-64.0.0.zip -N	#
sudo unzip -n Librefox*																								#
sudo rm -r /usr/lib/firefox/defaults/ /usr/lib/firefox/distribution/												#
sudo cp -r defaults/ distribution/ mozilla.cfg Readme.Installation.Instructions.txt /usr/lib/firefox/				#
sudo rm -r /var/tmp/librefox_temporarily																			#
#osiig--------------------------------------------------------------------------------------------------------------+
cd /opt/dpkg/osiig																									#
git clone https://github.com/th3unkn0n/osi.ig.git && cd osi.ig														#
python3 -m pip install -r requirements.txt																			#
#routerscaner-------------------------------------------------------------------------------------------------------+
cd /opt/dpkg/routerscaner																							#
wget http://msk1.stascorp.com/routerscan/prerelease.7z -O routerscaner.7z											#
7z x *.7z; rm *.7z																									#
#link-file----------------------------------------------------------------------------------------------------------+
#link to git.io																										#