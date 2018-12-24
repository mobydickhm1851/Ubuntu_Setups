#!/bin/bash
###-- this file mainly set the environment for 'vim' --### 

# ============== install vim ================= #
sudo apt-get install vim-gnome # (with clipboard function)

# ======== change some contents in .vimrc ======== #
# enable the clipboard among all terminal
echo 'set clipboard^=unnamed2' >> ~/.vimrc  

# change indent for 4 spaces
echo 'filetype plugin indent on' >> ~/.vimrc
echo '" show existing tab with 4 spaces width ' >> ~/.vimrc
echo 'set tabstop=4' >> ~/.vimrc
echo '" when indenting with '>', use 4 spaces width' >> ~/.vimrc
echo 'set shiftwidth=4' >> ~/.vimrc
echo '" On pressing tab, insert 4 spaces' >> ~/.vimrc
echo 'set expandtab' >> ~/.vimrc
