#!/bin/bash

sudo apt update && sudo apt install -y \
  zlib1g-dev \
  libssl-dev \
  libffi-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev
git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bashrc
echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> $HOME/.bashrc
echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc

