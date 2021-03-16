#!/bin/bash

install_x11vnc() {
    GIT_COMMAND=$(which git)
    if [ $GIT_COMMAND = "" ]; then
        sudo apt update && sudo apt install -y git
    fi

    $GIT_COMMAND clone https://github.com/LibVNC/x11vnc -b 0.9.16
    cd x11vnc
    ./autogen.sh
    make && sudo make install \
        && cd .. \
        && rm -rf x11vnc
}

X11VNC_COMMAND=$(which x11vnc)

if [ $X11VNC_COMMAND = "" ]; then
    install_x11vnc
fi

sudo cp x11vnc-h.service /etc/systemd/system/
sudo daemon-reload
sudo systemctl enable x11vnc-h.service
sudo systemctl start x11vnc-h.service

echo "Start x11vnc server."
