#!/bin/bash
#titul---------------+
#
#ver.001.012
#
#--------------------+
#
#download-packeges--------------------------------------------------------------------------------------------------+
sudo pacman -Sw $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-0) --noconfirm
#install-packeges---------------------------------------------------------------------------------------------------+
sudo pacman -S $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-0) --noconfirm
#AUR-packeges-------------------------------------------------------------------------------------------------------+
yay -S anydesk-bin \
 archtorify-git \
 czkawka-gui-bin \
 drawio-desktop-bin \
 figma-linux \
 flat-remix \
 flat-remix-gtk \
 freefilesync-bin \
 joplin-desktop \
 nerd-fonts-fira-code \
 quickhash-gui-bin \
 spotify \
 trilium-bin \
--noconfirm

# oomox
# szyszka
# megasync
# dupeguru

#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBTc
