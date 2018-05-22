#!/bin/bash
###-- this file mainly set the terminal environment to 'tmux' --### 
###-- powerline make the UI better --###

###----------###
###-- tmux --###
###----------###
sudo apt-get install -y tmux

###---------------###
###-- powerline --###
###---------------###
sudo apt-get -y install powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
# change some contents in .bashrc #
echo 'POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
echo 'if [ -f $POWERLINE_SCRIPT ]; then' >> ~/.bashrc
echo '  source $POWERLINE_SCRIPT' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
# change some contents in .vimrc #
echo 'set laststatus=2' >> ~/.vimrc
echo 'set t_Co=256' >> ~/.vimrc
echo 'python3 from powerline.vim import setup as powerline_setup' >> ~/.vimrc
echo 'python3 powerline_setup()' >> ~/.vimrc
echo 'python3 del powerline_setup' >> ~/.vimrc



