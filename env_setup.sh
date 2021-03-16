#!/bin/bash

# install command
sudo apt update && sudo apt install -y \
  build-essential \
  curl \
  git \
  xclip \
  pkg-config \
  tmux \
  wget \
  python3.8 \
  python3.8-dev \
  python3.8-minimal \
  python3-pip

# install .tmux.conf
cp .tmux.conf $HOME/.tmux.conf

# Set python3.8 as python3
# 数が大きいほうが優先される
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 2
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
sudo -H python3 -m pip install -U pip

# apt_pkgが無いエラーを解消する
cd /usr/lib/python3/dist-packages
sudo ln -s apt_pkg.cpython-{36m,38}-x86_64-linux-gnu.so
