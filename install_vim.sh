#!/bin/bash

sudo apt update && sudo apt install -y vim

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm -f ./installer.sh

echo "Please launch vim and enter ':call dein#install()'"
