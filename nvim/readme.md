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
sudo apt install p7zip-full
mkdir .fonts // in home dir
curl -LO https://github.com/coriandar/fonts/raw/main/Hack.7z
7z e Hack.7z
```

--------------------------------------------------

### linux
```js
sudo apt install -y build-essential gcc
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
source ~/.bashrc
```

--------------------------------------------------

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