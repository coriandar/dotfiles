## powershell
```ps1
# Setup
mkdir $env:LOCALAPPDATA\nvim

# Add new path, remove from environment variables
$newPath = "$env:USERPROFILE\_\nvim-win64\bin"
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $newPath, [EnvironmentVariableTarget]::Machine)

# E576: Error while reading ShaDa file
# Any error just...
rm -r $env:USERPROFILE\AppData\Local\nvim-data

# Launch path, add to init.lua
vim.cmd("cd $USERPROFILE\\_Downloads")
```

## nvim-data
```
%LOCALAPPDATA%\nvim-data
~/.local/share/nvim
```

## nvim-linux
```
/usr/local/bin/
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
sudo ln -s ./nvim-linux64/bin/nvim ./nvim

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
/usr/share/fonts/nerdfonts
```