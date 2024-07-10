## Windows
### init
```js
browser install > no admin
PC > add netowrk location > add \\wsl$
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
--------------------------------------------------

### hide drive in explorer sidebar
```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}

rename with .bak
```

--------------------------------------------------

### wsl .bashrc
```bash
export PATH="$PATH:/mnt/c/Users/coriandar/_/code/bin"
alias code="code wsl+Ubuntu-24.04"
```

### terminal
```json
{
    "centerOnLaunch": true,
    "disableAnimations": true,
    "initialCols": 90,
    "initialRows": 40,
    "useAcrylicInTabRow": true,
    "profiles": 
    {
        "defaults": 
        {
            "colorScheme": "Campbell",
            "cursorShape": "filledBox",
            "font": 
            {
                "face": "Hack Nerd Font Mono"
            },
            "opacity": 90,
            "padding": "5",
            "scrollbarState": "hidden"
        }
    }
}
```

--------------------------------------------------

### netsh

```js
netsh wlan show profile name="wifiName" key=clear // find wifi password
```

--------------------------------------------------

### rhino
```js
%AppData%\Roaming\McNeel\Rhinoceros\6.0\settings
```

--------------------------------------------------

### adobe
```js
%AppData%\Roaming\Adobe\Bridge CC 2018
%AppData%\Roaming\Adobe\InDesign\Version 13.0\en_GB\Workspaces
%AppData%\Roaming\Adobe\Adobe PDF\Settings
%AppData%\Roaming\Adobe\Adobe Photoshop CC 2018\Adobe Photoshop CC 2018 Settings\
%AppData%\Roaming\Adobe\Adobe Photoshop CC 2018\Presets\Actions

Computer\HKEY_CLASSES_ROOT\CLSID\{0E270DAA-1BE6-48F2-AC49-D2F8C812D790}
    System.IsPinnedToNameSpaceTree > 0
```

--------------------------------------------------

### regedit
```reg
Windows Registry Editor Version 5.00
; Created on: June 10th 2024
; Updated on: July 10th 2024

; Disable_Show_more_options_context_menu
[HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32]
@=""

; Remove_Gallery_from_navigation_pane_in_File_Explorer_for_all_users
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_41040327\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}]

; Remove_Home_from_navigation_pane_in_File_Explorer
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
"HubMode"=dword:00000001
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_36354489\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}]

; Restore_Windows_Photo_Viewer_CURRENT_USER
[HKEY_CURRENT_USER\SOFTWARE\Classes\.bmp]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.cr2]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.dib]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.gif]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.ico]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.jfif]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.jpe]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.jpeg]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.jpg]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.jxr]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.png]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.tif]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.tiff]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Classes\.wdp]
@="PhotoViewer.FileAssoc.Tiff"
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.bmp\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.cr2\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.dib\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.gif\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.ico\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.jpeg\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.bmp\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.jfif\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.jpe\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.jxr\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.jpeg\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.jpg\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.png\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tif\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tiff\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.wdp\OpenWithProgids]
"PhotoViewer.FileAssoc.Tiff"=hex(0):
```

--------------------------------------------------