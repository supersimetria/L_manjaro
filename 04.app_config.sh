#!/bin/bash
#titul---------------+
#
#ver.001.001
#
#--------------------+
#
#core_ignor---------------------------------------------------------------------------------------------------------+
sudo sed -i 's/#IgnorePkg   =/IgnorePkg   = linux/' /etc/pacman.conf
#syncthing----------------------------------------------------------------------------------------------------------+
touch /etc/systemd/system/syncthing@.service
echo -e "[Unit]
Description=Syncthing - Open Source Continuous File Synchronization for %I
Documentation=man:syncthing(1)
After=network.target
Wants=syncthing-inotify@.service

[Service]
User=%i
ExecStart=/usr/bin/syncthing -no-browser -no-restart -logflags=0
Restart=on-failure
SuccessExitStatus=3 4
RestartForceExitStatus=3 4

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/syncthing@.service

sudo systemctl enable syncthing@user_03.service
sudo systemctl enable syncthing@user_02.service
sudo systemctl enable syncthing@user_01.service
sudo systemctl enable syncthing@user_00.service

sudo systemctl start syncthing@user_03.service
sudo systemctl start syncthing@user_02.service
sudo systemctl start syncthing@user_01.service
sudo systemctl start syncthing@user_00.service

syncthing
killall syncthing

sed -i '91 s/<gui enabled="true" tls="false">/<gui enabled="true" tls="true">/g' ~/.config/syncthing/config.xml

#cd ~/.config/; sudo cp -R syncthing/ /home/user_03/.config/
#sudo cp -R syncthing/ /home/user_02/.config/
#sudo cp -R syncthing/ /home/user_01/.config/
#sudo cp -R syncthing/ /home/user_00/.config/
#cd ..
#link-file----------------------------------------------------------------------------------------------------------+
#link to git.io
