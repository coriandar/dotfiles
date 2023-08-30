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
```