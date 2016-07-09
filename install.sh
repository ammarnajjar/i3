#!/bin/bash

function get_sudo() {
    uid="$(id -u)"
    SUDO="sudo"
    if [[ $uid -eq 0 ]]
    then
        SUDO=""
    fi
}

$SUDO dnf install i3 i3status i3lock xdotool zenity
$SUDO cp /usr/share/X11/xorg.conf.d/50-synaptics.conf /etc/X11/xorg.conf.d/
git clone https://github.com/ammarnajjar/i3.git ~/.config/i3
git clone git://github.com/vivien/i3blocks /tmp/i3blocks
cd /tmp/i3blocks
make clean all
$SUDO make install
cd