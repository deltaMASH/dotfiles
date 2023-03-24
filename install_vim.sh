#!/bin/bash

sudo apt update && sudo apt install -y vim

mkdir -p ~/.vim
curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
cp .vimrc ~/.vim/vimrc
