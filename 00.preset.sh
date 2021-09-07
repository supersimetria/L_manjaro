#!/bin/bash
#titul---------------+																								#
#																													#
#ver.001.001																										#
#																													#
#--------------------+																								#
#																													#
#mirrors------------------------------------------------------------------------------------------------------------+
sudo pacman-mirrors --fasttrack 9; sudo pacman -Sy --noconfirm														#
#blackarch-repo-----------------------------------------------------------------------------------------------------+
curl -O https://blackarch.org/strap.sh																				#
echo 46f035c31d758c077cce8f16cf9381e8def937bb strap.sh | sha1sum -c													#
chmod +x strap.sh																									#
sudo sed -i "/nameserver/i nameserver 8.8.8.8" /etc/resolv.conf														#
gpgconf --kill all																									#
sudo ./strap.sh -v --noconfirm																						#
sudo rm /var/lib/pacman/sync/blackarch.db.sig																		#
sudo rm -r /var/lib/pacman/sync																						#
rm strap.sh																											#
#xfconf-query-------------------------------------------------------------------------------------------------------+
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/blank-on-ac' -t 'int' -s '0'							#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/brightness-step-count' -t 'int' -s '10'				#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/dpms-enabled' -t 'bool' -s 'false'					#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/dpms-on-ac-off' -t 'int' -s '0'						#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/dpms-on-ac-sleep' -t 'int' -s '0'						#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/general-notification' -t 'bool' -s 'false'			#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/lock-screen-suspend-hibernate' -t 'bool' -s 'false'	#
xfconf-query -c xfce4-power-manager -np '/xfce4-power-manager/logind-handle-lid-switch' -t 'bool' -s 'false'		#
#firs-update--------------------------------------------------------------------------------------------------------+
sudo pacman -Syu --noconfirm																						#
#link-file----------------------------------------------------------------------------------------------------------+
#link to git.io																										#