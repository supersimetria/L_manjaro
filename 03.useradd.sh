#!/bin/bash
#titul---------------+
#
#ver.001.002
#
#--------------------+
#
#user-group-create--------------------------------------------------------------------------------------------------+
sudo groupadd -g 109 vboxsf
sudo groupadd -g 6941 user_03
sudo useradd -m -u 1214 -g 6941 -G 3,11,90,98,108,109,991,998 -s /bin/zsh user_00 #alan_smithee
sudo useradd -m -u 2897 -g 6941 -G 3,11,90,98,108,109,991,998 -s /bin/zsh user_01 #brigid_tenenbaum
sudo useradd -m -u 3180 -g 6941 -G 3,11,90,98,108,109,991,998 -s /bin/zsh user_02 #martin_margiela
sudo useradd -m -u 9165 -g 6941 -G 3,11,90,98,108,109,991,998 -s /bin/zsh user_03 #super_simetria
#password-----------------------------------------------------------------------------------------------------------+
(
 echo 1234;
 echo 1234;
) | sudo passwd user_00
(
 echo 1234;
 echo 1234;
) | sudo passwd user_01
(
 echo 1234;
 echo 1234;
) | sudo passwd user_02
(
 echo 1234;
 echo 1234;
) | sudo passwd user_03
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBUd
