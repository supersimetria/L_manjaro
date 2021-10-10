#!/bin/bash
#titul---------------+
#
#ver.001.007
#
#--------------------+
#
#download-packeges--------------------------------------------------------------------------------------------------+
sudo pacman -Sw $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-0) --noconfirm
#install-packeges---------------------------------------------------------------------------------------------------+
sudo pacman -S $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-0) --noconfirm
#AUR-packeges-------------------------------------------------------------------------------------------------------+
yay -S anydesk-bin archtorify-git dirsyncpro \
  drawio-desktop-bin dupeguru figma-linux \
  flat-remix flat-remix-gtk fslint \
  iwscanner joplin megasync-bin \
  nerd-fonts-fira-code onioncircuits spotify \
  themix-full-git trilium-bin \
--noconfirm
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBTc
