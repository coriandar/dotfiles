#!/bin/bash
if [ $EUID -ne 0 ]; then
        echo "need be sudo"
        exit 255
fi

printf "\n==========[ init     ]==========\n"
timedatectl set-timezone Pacific/Auckland
apt update -y && apt upgrade -y
apt install -y neofetch xorg i3

printf "\n==========[ plex     ]==========\n"
if [ "$1" == "--plex" ]; then
    apt install -y cifs-utils ncdu
else
    printf "{false}\n"
fi

printf "\n==========[ i3       ]==========\n"
cp ../i3/config /home/$SUDO_USER/.config/i3/config
cp ../i3/i3status.conf /etc/i3status.conf
i3-msg restart

printf "\n==========[ X11      ]==========\n"
xrandr
cvt 2560 1440
echo "write to /etc/X11/xorg.conf"
echo "Section \"Monitor\"
    Identifier \"Virtual-1\"
    Modeline \"2560x1440\" 312.25 2560 2752 3024 3488 1440 1443 1448 1493 -hsync +vsync
    Option \"PreferredMode\" \"2560x1440\"
EndSection" | sudo tee /etc/X11/xorg.conf

printf "\n==========[ brave    ]==========\n"
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update -y
apt install brave-browser -y

printf "\n==========[ complete ]==========\n"

