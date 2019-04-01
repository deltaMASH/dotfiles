#!/bin/bash

sudo apt update && sudo apt install -y vim

mkdir -p ~/.vim
cp .vimrc ~/.vim/vimrc

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein
rm -f ./installer.sh

echo "Please launch vim and enter ':call dein#install()'"
