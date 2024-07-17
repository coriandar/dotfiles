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

[Microsoft Visual C++ Redistributable][_mvcr]
[_mvcr]: https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170

--------------------------------------------------

```
--------------------------------------------------

### terminal
```json
{
    "centerOnLaunch": true,
    "disableAnimations": true,
    "initialCols": 90,
    "initialRows": 45,
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
            "opacity": 55,
            "padding": "10",
            "scrollbarState": "hidden",
            "useAcrylic": true
        },
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