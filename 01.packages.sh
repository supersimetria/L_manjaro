#!/bin/bash
#titul---------------+
#
#ver.001.005
#
#--------------------+
#
#download-packeges--------------------------------------------------------------------------------------------------+
sudo pacman -Sw $(cat ~/Desktop/tmp_Lunar/mod/01.1.pl-0) --noconfirm
#install-packeges---------------------------------------------------------------------------------------------------+
sudo pacman -S $(cat ~/Desktop/tmp_Lunar/mod/01.1.pl-0) --noconfirm
#AUR-packeges-------------------------------------------------------------------------------------------------------+
yay -S anydesk-bin archtorify-git dirsyncpro drawio-desktop-bin dupeguru figma-linux --noconfirm
yay -S flat-remix flat-remix-gtk fslint iwscanner joplin megasync-bin nerd-fonts-fira-code --noconfirm
yay -S onioncircuits openoffice-bin spotify themix-full-git --noconfirm
#link-AUR-packeges--------------------------------------------------------------------------------------------------+
#-----  anydesk-bin           #-----link  https://aur.archlinux.org/packages/anydesk-bin/
#-----  archtorify-git        #-----link  https://aur.archlinux.org/packages/archtorify-git/
#-----  dirsyncpro            #-----link  https://aur.archlinux.org/packages/dirsyncpro/
#-----  drawio-desktop-bin    #-----link  https://aur.archlinux.org/packages/drawio-desktop-bin/
#-----  dupeguru              #-----link  https://aur.archlinux.org/packages/dupeguru/
#-----  figma-linux           #-----link  https://aur.archlinux.org/packages/figma-linux/
#-----  flat-remix            #-----link  https://aur.archlinux.org/packages/flat-remix/
#-----  flat-remix-gtk        #-----link  https://aur.archlinux.org/packages/flat-remix-gtk/
#-----  fslint                #-----link  https://aur.archlinux.org/packages/fslint/
#-----  iwscanner             #-----link  https://aur.archlinux.org/packages/iwscanner/
#-----  joplin                #-----link  https://aur.archlinux.org/packages/joplin/
#-----  megasync-bin          #-----link  https://aur.archlinux.org/packages/megasync-bin/
#-----  nerd-fonts-fira-code  #-----link  https://aur.archlinux.org/packages/nerd-fonts-fira-code/
#-----  onioncircuits         #-----link  https://aur.archlinux.org/packages/onioncircuits/
#-----  openoffice-bin        #-----link  https://aur.archlinux.org/packages/openoffice-bin/
#-----  spotify               #-----link  https://aur.archlinux.org/packages/spotify/
#-----  themix-full-git       #-----link  https://aur.archlinux.org/packages/themix-full-git/
#-----  trilium-bin           #-----link  https://aur.archlinux.org/packages/trilium-bin/
#pip----------------------------------------------------------------------------------------------------------------+
pip install b0mb3r archivebox xion
#systenctl----------------------------------------------------------------------------------------------------------+
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo systemctl mask NetworkManager
sudo systemctl unmask NetworkManager
sudo systemctl start NetworkManager
sudo systemctl enable sshd.service
sudo systemctl start sshd.service
sudo systemctl enable tor.service
sudo systemctl start tor.service
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBTc
