#!/bin/bash

install_x11vnc() {
    sudo apt install -y x11vnc
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
