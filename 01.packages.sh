#!/bin/bash
#titul---------------+
#
#ver.001.006
#
#--------------------+
#
printf "# ------------------------------------------------------------------------------\n"
printf "# Download packeges\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman -Sw $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-2) --noconfirm
printf "# ------------------------------------------------------------------------------\n"
printf "# Install packeges\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman -S $(curl https://raw.githubusercontent.com/supersimetria/L_manjaro/main/mod/pl-2) --noconfirm
sudo modprobe vboxdrv
printf "# ------------------------------------------------------------------------------\n"
printf "# AUR packeges\n"
printf "# ------------------------------------------------------------------------------\n"
# оптимизировать сборку aur
# sudo sed -i '48s/.*/MAKEFLAGS="-j$(nproc)/' /etc/makepkg.conf

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -

yay -S anydesk-bin \
  figma-linux \
  flat-remix \
  flat-remix-gtk \
  spotify \
  virtualbox-ext-oracle \
  --noconfirm

  #archtorify-git \
  #czkawka-gui-bin \
  #drawio-desktop-bin \
  #freefilesync-bin \
  #iwscanner \
  #megasync \
  #nerd-fonts-fira-code \
  #obsidian \
  #quickhash-gui-bin \
  #trilium-bin \

# dupeguru
# joplin-desktop
# oomox
# szyszka

# link_file---------------------------------------------------------------------
# https://git.io/JuBTc
