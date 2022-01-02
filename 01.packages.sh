#!/bin/bash
#titul---------------+
#
#ver.001.001
#
#--------------------+
#
printf "# ------------------------------------------------------------------------------\n"
printf "# Download packeges\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman -Sw $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-1) --noconfirm
printf "# ------------------------------------------------------------------------------\n"
printf "# Install packeges\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman -S $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-1) --noconfirm
printf "# ------------------------------------------------------------------------------\n"
printf "# AUR packeges\n"
printf "# ------------------------------------------------------------------------------\n"
sudo sed -i '48s/.*/MAKEFLAGS="-j$(nproc)/' /etc/makepkg.conf
yay -S anydesk-bin \
  archtorify-git \
  czkawka-gui-bin \
  drawio-desktop-bin \
  figma-linux \
  flat-remix \
  flat-remix-gtk \
  freefilesync-bin \
  iwscanner \
  nerd-fonts-fira-code \
  obsidian \
  quickhash-gui-bin \
  spotify \
  trilium-bin \
  virtualbox-ext-oracle \
--noconfirm

# dupeguru
# joplin-desktop
# megasync
# oomox
# szyszka

# link_file---------------------------------------------------------------------
# git.io
