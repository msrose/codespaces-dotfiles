#!/usr/bin/env bash

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.ci commit

sudo apt-get update
sudo apt-get install vim
sudo apt-get install tmux

git clone https://github.com/msrose/dotvim ~/.vim
bash ~/.vim/install.sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 16.17.0
