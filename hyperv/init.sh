#!/bin/bash
if [ $EUID -eq 0 ]; then
    echo "need be user"
    exit 255
fi

install_i3() {
    printf "\n==========[ i3       ]==========\n"
    sudo apt install -y xorg i3
    cp ../i3/config ~/.config/i3/config
    cp ../i3/i3status.conf /etc/i3status.conf
    i3-msg restart
    xrandr
    cvt 2560 1440
    echo "Section \"Monitor\"
        Identifier \"Virtual-1\"
        Modeline \"2560x1440\" 312.25 2560 2752 3024 3488 1440 1443 1448 1493 -hsync +vsync
        Option \"PreferredMode\" \"2560x1440\"
    EndSection" | sudo tee /etc/X11/xorg.conf
}

install_brave() {
    printf "\n==========[ brave   ]==========\n"
    curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update -y
    sudo apt install brave-browser -y
}

install_network() {
    printf "\n==========[ network  ]==========\n"
    sudo apt install -y cifs-utils ncdu
}

install_wsl() {
    printf "\n==========[ bashrc   ]==========\n"
    local path_line='export PATH="$PATH:/mnt/c/Users/coriandar/_/code/bin"'
    local alias_line='alias _cd_downloads="cd /mnt/c/Users/coriandar/_Downloads"'

    if ! grep -q "$path_line" ~/.bashrc; then
        printf "Adding code Path\n"
        printf "\n" >> ~/.bashrc
        echo "$path_line" >> ~/.bashrc
    else
        echo "Path line already exists in .bashrc"
    fi

    if ! grep -q "$alias_line" ~/.bashrc; then
        echo "Adding alias\n"
        echo "$alias_line" >> ~/.bashrc
    else
        echo "Alias line already exists in .bashrc"
    fi

    exec bash
}

install_node() {
    printf "\n==========[ node     ]==========\n"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    nvm install 20
}

init() {
    printf "\n==========[ init     ]==========\n"
    sudo timedatectl set-timezone Pacific/Auckland
    sudo apt update -y && sudo apt upgrade -y
    sudo apt install -y neofetch
}

init_wsl() {
    init
    install_wsl
}

init_wsl_node() {
    init
    install_node
    install_wsl
}

init_int() {
    init
    install_i3
    install_brave
}

init_ext() {
    init
    install_i3
    install_brave
    install_network
}

init_plex() {
    init
    printf "\n==========[ plex     ]==========\n"
    install_network
}

case "$1" in
    --wsl)
        init_wsl
        ;;
    --wsl_node)
        init_wsl_node
        ;;
    --int)
        init_int
        ;;
    --ext)
        init_ext
        ;;
    --plex)
        init_plex
        ;;
    *)
        init
        ;;
esac

printf "\n==========[ complete ]==========\n"