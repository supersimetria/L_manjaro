#!/bin/bash
#titul---------------+
#
#ver.001.002
#
#--------------------+
#
# ------------------------------------------------------------------------------
# Mirrors update
# ------------------------------------------------------------------------------
printf "%b Mirrors update\n" "${STR_INFO}"
sudo pacman-mirrors --fasttrack 9
# ------------------------------------------------------------------------------
# Database update
# ------------------------------------------------------------------------------
printf "%b DB update\n" "${STR_INFO}"
sudo pacman -Sy --noconfirm
# ------------------------------------------------------------------------------
# Blackarch repository
# ------------------------------------------------------------------------------
printf "%b Blackarch repository\n" "${STR_INFO}"
curl -O https://blackarch.org/strap.sh
echo 46f035c31d758c077cce8f16cf9381e8def937bb strap.sh | sha1sum -c
chmod +x strap.sh
sudo sed -i "/nameserver/i nameserver 8.8.8.8" /etc/resolv.conf
gpgconf --kill all
sudo ./strap.sh -v --noconfirm
sudo rm /var/lib/pacman/sync/blackarch.db.sig
sudo rm -r /var/lib/pacman/sync
rm strap.sh
# ------------------------------------------------------------------------------
# Update system
# ------------------------------------------------------------------------------
printf "%b Upgrading packages...\n" "${STR_INFO}"
sudo pacman -Syyuu --noconfirm
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JSYQg
