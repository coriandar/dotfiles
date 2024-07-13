#!/bin/bash
if [ $EUID -ne 0 ]; then
        echo "need be sudo"
        exit 255
fi

printf "\n==========[ init     ]==========\n"
timedatectl set-timezone Pacific/Auckland
apt update -y && apt upgrade -y
apt install -y neofetch

printf "\n==========[ bashrc   ]==========\n"
echo 'export PATH="$PATH:/mnt/c/Users/coriandar/_/code/bin"' >> ~/.bashrc
echo 'alias _cd_downloads="cd /mnt/c/Users/coriandar/_Downloads"' >> ~/.bashrc
source ~/.bashrc

printf "\n==========[ complete ]==========\n"

