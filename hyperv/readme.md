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

### regex

```js
g //global
i //case insensitive
m //multiline
s //sinlge line
u //unicode
y //sticky

\s // any whitespace
\r // carriage return
^  // start of line
$  // end of line
.  // any except newline
?  // zero or one, optional
*  // zero or more
```

```js
//js
/^.{20,}(\r?\n|$)/gm // match greater than 20
/^\s*(\r?\n|$)/gm // match empty lines

// npp
^.*center;> // up to center
^.{20,} // match length greater than
^.{0,10}$ // match length less than
```

--------------------------------------------------

### grep

```js
// recursive sub-dir, -l only matching filenames
// piped to xargs, -I specify placeholder {}
grep -Rl --include={*.mkv,*.mp4} . | xargs -I {} mv {} /mnt/path/
```

--------------------------------------------------

### shell

```js
cd - // toggle previous directory
ctrl + l //clear terminal
echo hello > hello.txt // stream hello' into txt
cat < hello.txt // stream input from hello.txt
echo hello >> hello.txt // append
curl... | grep... // pipe, output from left, input to right
```

--------------------------------------------------