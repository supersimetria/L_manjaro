#!/bin/bash
#titul---------------+
#
#ver.001.010
#
#--------------------+
#
# sudo_timeout_off--------------------------------------------------------------
sudo sed -i -e '$aDefaults        env_reset,timestamp_timeout=-1    # timeout in minutes' /etc/sudoers
# ------------------------------------------------------------------------------
printf "# ------------------------------------------------------------------------------\n"
printf "# Mirrors update\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman-mirrors --fasttrack 9
printf "# ------------------------------------------------------------------------------\n"
printf "# Database update\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman -Sy --noconfirm
printf "# ------------------------------------------------------------------------------\n"
printf "# Blackarch repository\n"
printf "# ------------------------------------------------------------------------------\n"
curl -O https://blackarch.org/strap.sh
echo 8bfe5a569ba7d3b055077a4e5ceada94119cccef strap.sh | sha1sum -c
chmod +x strap.sh
sudo sed -i "/nameserver/i nameserver 8.8.8.8" /etc/resolv.conf
gpgconf --kill all
sudo ./strap.sh -v --noconfirm
sudo rm /var/lib/pacman/sync/blackarch.db.sig
sudo rm -r /var/lib/pacman/sync
rm strap.sh
printf "# ------------------------------------------------------------------------------\n"
printf "# Update system\n"
printf "# ------------------------------------------------------------------------------\n"
sudo pacman -Syyuu --noconfirm
printf "# ------------------------------------------------------------------------------\n"
printf "# systemctl\n"
printf "# ------------------------------------------------------------------------------\n"
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo systemctl mask NetworkManager
sudo systemctl unmask NetworkManager
sudo systemctl start NetworkManager
sudo systemctl enable sshd.service
sudo systemctl start sshd.service
printf "# ------------------------------------------------------------------------------\n"
printf "# xfconf-query | power presets\n"
printf "# ------------------------------------------------------------------------------\n"
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/blank-on-ac' -t 'int' -s '0'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/brightness-step-count' -t 'int' -s '10'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/dpms-enabled' -t 'bool' -s 'false'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/dpms-on-ac-off' -t 'int' -s '0'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/dpms-on-ac-sleep' -t 'int' -s '0'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/general-notification' -t 'bool' -s 'false'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/lock-screen-suspend-hibernate' -t 'bool' -s 'false'
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/logind-handle-lid-switch' -t 'bool' -s 'false'# link_file---------------------------------------------------------------------

# link_file---------------------------------------------------------------------
# https://git.io/JSOW7
