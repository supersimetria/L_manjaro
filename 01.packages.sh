#!/bin/bash
#titul---------------+
#
#ver.001.011
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

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -

yay -S anydesk-bin \
  archivebox \
  figma-linux \
  flat-remix \
  flat-remix-gtk \
  obsidian-appimage \
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
  #quickhash-gui-bin \
  #trilium-bin \

# dupeguru
# joplin-desktop
# oomox
# szyszka

printf "# ------------------------------------------------------------------------------\n"
printf "# xfconf-query | theme\n"
printf "# ------------------------------------------------------------------------------\n"
xfconf-query --channel xsettings --property /Net/ThemeName --set "Flat-Remix-GTK-Red-Darkest-Solid"
xfconf-query --channel xsettings --property /Net/IconThemeName --set "Flat-Remix-Red-Dark"
xfconf-query --channel xsettings --property /Gtk/FontName --set "Source Code Pro Regular 10"
xfconf-query --channel xsettings --property /Gtk/MonospaceFontName --set "Source Code Pro Regular 10"
xfconf-query --channel xfwm4 --property /general/theme --set "Flat-Remix-Darkest-XFWM"
xfconf-query --channel xfwm4 --property /general/title_font --set "Source Code Pro Regular 10"
xfconf-query -c xfwm4 -p /general/show_dock_shadow -s false

# link_file---------------------------------------------------------------------
# https://git.io/JuBTc
