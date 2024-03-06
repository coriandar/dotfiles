## neovim
### nvim config
```js
// nvim config
%LOCALAPPDATA%\nvim
~/.config/nvim

// nvim-data
%LOCALAPPDATA%\nvim-data
~/.local/share/nvim

// font
curl -LO https://github.com/coriandar/fonts/raw/main/Hack.7z
/usr/share/fonts/nerdfonts
```

### linux
```js
sudo apt install -y build-essential gcc
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
source ~/.bashrc
```

### windows
```ps1
mkdir $env:LOCALAPPDATA\nvim

# Add new path, remove from environment variables
$newPath = "$env:USERPROFILE\_\nvim-win64\bin"
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $newPath, [EnvironmentVariableTarget]::Machine)

# Any error just...i.e. E576: Error while reading ShaDa file
rm -r $env:USERPROFILE\AppData\Local\nvim-data

# Launch path, add to init.lua
vim.cmd("cd $USERPROFILE\\_Downloads")

# Alternatively run
& "C:\Program Files\Neovim\bin\nvim.exe" "C:\Users\tyee\_Repo\notes"
```
--------------------------------------------------

## code
```js
// themes
Catppuccin Theme
poimandres Theme
Material Icon Theme
One Monokai Theme

// linux
curl -LJO https://go.microsoft.com/fwlink/?LinkID=760868
sudo apt install ./<file>.deb -y
```

--------------------------------------------------

## ubuntu
### init
```js
sudo timedatectl set-timezone Pacific/Auckland
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git neofetch xorg i3 cifs-utils ncdu curl

192.168.1.0/24
192.168.1.xx

// default terminal dir
echo 'cd ~/Downloads' >> ~/.bashrc
```

### i3
```js
sudo vim /etc/i3status.conf
sudo vim ~/.config/i3/config
```

### xorg
```js
xrandr
cvt 2560 1440
sudo vim /etc/X11/xorg.conf

Section "Monitor"
    Identifier "Virtual-1"
    Modeline "2560x1440" 312.25 2560 2752 3024 3488 1440 1443 1448 1493 -hsync +vsync
    Option "PreferredMode" "2560x1440"
EndSection
```

### brave
```js
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y
sudo apt install brave-browser -y
```

### set alias
```js
echo 'alias svim="sudo -E vim"' >> ~/.bashrc
source ~/.bashrc
```

### external wifi fix
```js
vEthernet > 192.168.1.xx
vEthernet > Disable Large Send Offload > Restart Host   
/usr/local/sbin/rxtxoff.sh
    #!/bin.bash
    ethtool --offload eth0  rx off
    ethtool --offload eth0  tx off

sudo chmod +x /usr/local/sbin/rxtxoff.sh
sudo vim /etc/systemd/system/rxtxoff.service
    [Service]
    ExecStart=/bin/bash	/usr/local/sbin/rxtxoff.sh

    [Install]
    WantedBy=multi-user.target

sudo systemctl daemon-reload
sudo systemctl enable rxtxoff.service
sudo systemctl start rxtxoff.service
```

### plex
```js
sudo vim /usr/lib/plexmediaserver/Resources/Plug-ins-*/WebClient.bundle/Contents/Resources/js/main-*
    secondsleft:1
```

### modify ip
```js
// apply permanently
sudo vim /etc/netplan/00-installer...

// testing
ip route show
sudo ip route del default via 192.168.x.x
sudo ip route add default via 192.168.x.x proto static
```

--------------------------------------------------

## windows
### init
```js
gpedit > Admin > Win Com > Search
gpedit > Admin > Win Com > Onedrive
Power > Hybrid Sleep
Power > Fast startup
Apps > Advanced app settings > Archive apps > OFF
Apps > Optional feature > WordPad
Apps > Optional feature > Window Media Player Legacy
Sticky keys > OFF
Active hours > 0900 - 0300
Set limit = 100000

Device manager > Bluetooth > View > By connection
    USB Root Hub > Power management > OFF

Folder rename > GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}

firefox > about:config
    media.hardwaremediakeys.enabled
```

### rhino
```js
%AppData%\Roaming\McNeel\Rhinoceros\6.0\settings
```

### adobe
```js
// bridge
%AppData%\Roaming\Adobe\Bridge CC 2018

// indesign
%AppData%\Roaming\Adobe\InDesign\Version 13.0\en_GB\Workspaces

// pdf
%AppData%\Roaming\Adobe\Adobe PDF\Settings

// photoshop
%AppData%\Roaming\Adobe\Adobe Photoshop CC 2018\Adobe Photoshop CC 2018 Settings\
%AppData%\Roaming\Adobe\Adobe Photoshop CC 2018\Presets\Actions

// creative cloud
Computer\HKEY_CLASSES_ROOT\CLSID\{0E270DAA-1BE6-48F2-AC49-D2F8C812D790}
    System.IsPinnedToNameSpaceTree > 0
```

--------------------------------------------------
--------------------------------------------------
--------------------------------------------------