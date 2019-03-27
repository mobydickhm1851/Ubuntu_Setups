#!/bin/bash
###-- this file mainly set the environment for 'vim' --### 

# ============== install vim ================= #
sudo apt-get install vim-gnome # (with clipboard function)

# ======== change some contents in .vimrc ======== #
# enable the clipboard among all terminal
echo 'set clipboard^=unnamed' >> ~/.vimrc  

# change indent for 4 spaces
# Source: https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
echo 'filetype plugin indent on' >> ~/.vimrc
echo '" show existing tab with 4 spaces width ' >> ~/.vimrc
echo 'set tabstop=4' >> ~/.vimrc
echo '" when indenting with '>', use 4 spaces width' >> ~/.vimrc
echo 'set shiftwidth=4' >> ~/.vimrc
echo '" On pressing tab, insert 4 spaces' >> ~/.vimrc
echo 'set expandtab' >> ~/.vimrc
