## UbuntuServer
```
sudo timedatectl set-timezone Pacific/Auckland
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git neofetch xorg i3 cifs-utils ncdu curl

192.168.1.0/24
192.168.1.xx
```

## Set Alias
```
.bashrc
 alias svim="sudo -E vim"
source ~/.bashrc
```

## i3
```java
sudo vim /etc/i3status.conf
sudo vim ~/.config/i3/config
    monospace 12
    i3-dmenu-desktop
    position top

# Disable capslock
exec setxkbmap -option ctrl:nocaps
exec setxkbmap -option caps:swapescape
```

## SetResolution
```
xrandr
cvt 2560 1440
sudo vim /etc/X11/xorg.conf

Section "Monitor"
    Identifier "Virtual-1"
    Modeline "2560x1440" 312.25 2560 2752 3024 3488 1440 1443 1448 1493 -hsync +vsync
    Option "PreferredMode" "2560x1440"
EndSection
```

## Brave
```
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y
sudo apt install brave-browser -y
```

## Netbeans jVi
```
set nu
Binding -> ctrl + a
Binding -> ctrl + x

backspace   -> 2
shiftwidth  -> 4
tabstop     -> 4
carat blink -> 0
```

## Netbeans Mac
```java
// clear
/Users/coriandar/Library/Application Support/NetBeans

// no JDK
vim /Applications/NetBeans\ 12.5.app/Contents/Resources/NetBeans/netbeans/etc/netbeans.conf
/usr/libexec/java_home -v1.8.0 // find path
netbeans_jdkhome="" // uncomment

// press and hold
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false // press and hold
```

## Eclipse
```
usr/share/applications
~/.local/share/applications/eclipse.desktop
Exec=/usr/share/eclipse/eclipse
```

## Plex
```
cp /usr/lib/plexmediaserver/Resources/Plug-ins-*/WebClient.bundle/Contents/Resources/js/main-*
    secondsleft:1
```

## External Wifi Fix
```
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

## Ubuntu Gateway
```
// apply permanently
sudo vim /etc/netplan/00-installer...

// testing
ip route show
sudo ip route del default via 192.168.x.x
sudo ip route add default via 192.168.x.x proto static
```

## God Mode
```
Folder rename-> GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}
```

## Firefox
```
about:config
    media.hardwaremediakeys.enabled
```

## Bluetooth Fix
```
Device manager > Bluetooth > View > By connection
USB Root Hub > Power management > OFF
```

## Recycle Bin
```
Set limit = 100000
```

## Disable
```
gpedit > Admin > Win Com > Search
gpedit > Admin > Win Com > Onedrive
Power > Hybrid Sleep
Power > Fast startup
Apps > Advanced app settings > Archive apps > OFF
Apps > Optional feature > WordPad
Apps > Optional feature > Window Media Player Legacy
Sticky keys > OFF
```

## Active Hours
```
0900 - 0300
```

## Creative Cloud
```
Computer\HKEY_CLASSES_ROOT\CLSID\{0E270DAA-1BE6-48F2-AC49-D2F8C812D790}
    System.IsPinnedToNameSpaceTree > 0
```
