#!/bin/bash
#titul---------------+
#
#ver.001.001
#
#--------------------+
#
#ZSH----------------------------------------------------------------------------------------------------------------+
(
 echo n;
) | sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i '11 s/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i '73 s/plugins=(git)/plugins=(npm git npm osx rake sudo dotenv vagrant bundler composer web-search)/g' ~/.zshrc
git clone https://github.com/powerline/fonts.git
sh fonts/install.sh; rm -rf fonts/
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuBUp
