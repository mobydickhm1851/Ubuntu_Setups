#!/bin/bash
###-- this file mainly install applications for liuyc's devices --### 


###-- update and upgrade --###
sudo apt-get update
sudo apt-get upgrade

###-- install snapd --###
# after Ubuntu 16.04 snapd is included
# sudo apt update
# sudo apt install snapd

###-- chromium --###
sudo snap install chromium

###-- visual studio code --###
sudo snap install vscode --classic

###-- slack --###
sudo snap install slack --classic

###-- LaTex (Texmaker) --###
sudo apt-get install texlive-full
sudo apt-get install texmaker

###--LaTeX equation on LibreOffice Impress--###
###-----------------------------------------###
#https://extensions.libreoffice.org/extensions/texmaths-1
#Note:restart after adding the extenstion

###-- mendeley --###
#https://www.mendeley.com/download-desktop/Linux/#downloading
#sudo apt-get install mendeleydesktop #update automatically

###-- minecraft --###
sudo snap install minecraft

###-- chinese text input --###
sudo apt-get install ibus-chewing #新酷音輸入法
