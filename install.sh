#!/usr/bin/env bash

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.ci commit
git config --global core.editor vim

sudo apt-get update
sudo apt-get install -y vim tmux

# Installing universal ctags from source since it doesn't seem like there's way using apt
# From https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst
sudo apt-get install -y \
  gcc make \
  pkg-config autoconf automake \
  python3-docutils \
  libseccomp-dev \
  libjansson-dev \
  libyaml-dev \
  libxml2-dev
git clone https://github.com/universal-ctags/ctags.git ~/ctags
cd ~/ctags
./autogen.sh
./configure
make
sudo make install
cd -

git clone https://github.com/msrose/dotvim ~/.vim
bash ~/.vim/install.sh

# Doesn't work outside a tty
# vim --not-a-term -c ':PlugInstall' -c ':PlugClean' -c ':qa'
