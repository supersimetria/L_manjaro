#!/bin/bash
#titul---------------+
#
#ver.001.001
#
#--------------------+
#

#github_project-----------------------------------------------------------------------------------------------------+
sudo mkdir -v /opt/github_project
sudo chown 9165:6941 -R /opt/github_project
  #adbwebkit----------------------------------------------------------------------------------------------------------+
    git  -C /opt/github_project clone https://github.com/jxroot/adbwebkit.git

#intercepter-ng-----------------------------------------------------------------------------------------------------+
  #cd /opt/dpkg/intercepter-ng
  #wget https://github.com/intercepter-ng/mirror/blob/master/wine_pcap_dlls.tar.gz?raw=true -O wine_pcap_dlls.tar.gz
  #tar xvzf wine_pcap_dlls.tar.gz
  #sudo cp wpcap/wpcap.dll.so /usr/lib32/wine/; sudo cp packet/packet.dll.so /usr/lib32/wine/
  #rm -rf wine_pcap_dlls.tar.gz wpcap/ packet/
  #sudo winetricks cc580
  #sudo ethtool --offload eno1 rx off tx off
  #wget https://github.com/intercepter-ng/mirror/blob/master/Intercepter-NG.v1.0.zip?raw=true -O Intercepter-NG.zip
  #unzip Intercepter-NG.zip; rm wpcap.dll; rm Packet.dll
  #sudo ln -s /usr/lib32/libpcap.so /usr/lib32/libpcap.so.0.8
#osiig--------------------------------------------------------------------------------------------------------------+
  #cd /opt/dpkg/osiig
  #git clone https://github.com/th3unkn0n/osi.ig.git && cd osi.ig
  #python3 -m pip install -r requirements.txt
#powerline-fonts----------------------------------------------------------------------------------------------------+
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JPFWA
