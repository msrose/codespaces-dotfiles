#!/usr/bin/env bash

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.ci commit

sudo apt-get update
sudo apt-get install -y vim tmux

git clone https://github.com/msrose/dotvim ~/.vim
bash ~/.vim/install.sh
