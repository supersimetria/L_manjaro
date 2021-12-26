#!/bin/bash
#titul---------------+
#
#ver.001.018
#
#--------------------+
#
#download-packeges--------------------------------------------------------------------------------------------------+
sudo pacman -Sw $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-1) --noconfirm
#install-packeges---------------------------------------------------------------------------------------------------+
sudo pacman -S $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-1) --noconfirm
#AUR-packeges-------------------------------------------------------------------------------------------------------+
yay -S anydesk-bin \
  archtorify-git \
  czkawka-gui-bin \
  drawio-desktop-bin \
  figma-linux \
  flat-remix \
  flat-remix-gtk \
  freefilesync-bin \
  nerd-fonts-fira-code \
  quickhash-gui-bin \
  spotify \
  trilium-bin \
  virtualbox-ext-oracle \
  obsidian \
--noconfirm

# dupeguru
# joplin-desktop
# megasync
# oomox
# szyszka

#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBTc
