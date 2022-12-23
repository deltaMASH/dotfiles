#!/bin/bash

sudo apt update && sudo apt install -y vim

mkdir -p ~/.vim

wget https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh
sh ./installer.sh ~/.vim/dein
rm -f ./installer.sh
