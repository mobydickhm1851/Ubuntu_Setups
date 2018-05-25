#!/bin/bash
###-- this file mainly set up config in git --### 

###-----------------###
###-- install git --###
###-----------------###
sudo apt-get install git-all

###------------------------###
###-- settings in config --###
###------------------------###
git config --global  user.name "mobydickhm1851"
git config --global  user.email "liuyc@solab.me.ntu.edu.tw"
# add color to git #
git config --global  color.ui true
# set vim as editor #
git config --global  core.editor vim
# DONT ignore the case (for Linux) #
git config --global  core.ignorecase false 
# change the default setting for some command #
#git config --global  alias.br   branch
#git config --global  alias.co   checkout
#git config --global  alias.cp   cherry-pick
#git config --global  alias.st   stash
#git config --global  alias.sub  submodule
