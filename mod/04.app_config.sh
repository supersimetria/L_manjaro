#!/bin/bash
#titul---------------+
#
#ver.001.005
#
#--------------------+
#
#core_ignor---------------------------------------------------------------------------------------------------------+
sudo sed -i 's/#IgnorePkg   =/IgnorePkg   = linux/' /etc/pacman.conf
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JDZXK