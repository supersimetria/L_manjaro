#!/bin/bash
#titul---------------+
#
#ver.001.011
#
#--------------------+
#
#download-packeges--------------------------------------------------------------------------------------------------+
sudo pacman -Sw $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-0) --noconfirm
#install-packeges---------------------------------------------------------------------------------------------------+
sudo pacman -S $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-0) --noconfirm
#AUR-packeges-------------------------------------------------------------------------------------------------------+
yay -S anydesk-bin archtorify-git czkawka-gui-bin \
  drawio-desktop-bin dupeguru figma-linux \
  flat-remix flat-remix-gtk freefilesync-bin \
  joplin-desktop megasync nerd-fonts-fira-code \
  python-hsaudiotag3k python-polib quickhash-gui-bin \
  spotify oomox trilium-bin \
--noconfirm
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBTc
