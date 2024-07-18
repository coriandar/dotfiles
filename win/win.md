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
            "opacity": 75,
            "padding": "10",
            "scrollbarState": "hidden",
            "useAcrylic": true
        },
    }
}
```

--------------------------------------------------

### firewall
| Name                | Group | Profile | Enabled | Action | Override | Program                                                                                       | Local Address | Remote Address | Protocol | Local Port | Remote Port | Authorized Computers  | Authorized Local Principals | Local User Owner | PolicyAppId | Application Package  |
|---------------------|-------|---------|---------|--------|----------|-----------------------------------------------------------------------------------------------|---------------|----------------|----------|------------|-------------|-----------------------|-----------------------------|------------------|-------------|----------------------|
| _Brave              |       | All     | Yes     | Allow  | No       | %SystemDrive%\Users\coriandar\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _BraveUpdate        |       | All     | Yes     | Allow  | No       | %SystemDrive%\Users\coriandar\AppData\Local\BraveSoftware\Update\BraveUpdate.exe              | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _Edge               |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Microsoft\Edge\Application\msedge.exe                                    | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _EdgeUpdate         |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe                             | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _EpicLauncher       |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe          | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _EpicWebHelper      |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Epic Games\Launcher\Engine\Binaries\Win64\EpicWebHelper.exe              | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _Firefox            |       | All     | Yes     | Allow  | No       | %SystemDrive%\Users\coriandar\AppData\Local\Mozilla Firefox\firefox.exe                       | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _MegaSync           |       | All     | Yes     | Allow  | No       | %SystemDrive%\Users\coriandar\AppData\Local\MEGAsync\MEGAsync.exe                             | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _MegaSyncUpdate     |       | All     | Yes     | Allow  | No       | %SystemDrive%\Users\coriandar\AppData\Local\MEGAsync\MEGAupdater.exe                          | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _Steam              |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Steam\steam.exe                                                          | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _SteamService       |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Common Files\Steam\steamservice.exe                                      | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _SteamWebHelper     |       | All     | Yes     | Allow  | No       | %ProgramFiles% (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe                             | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |
| _WindowsUpdate      |       | All     | Yes     | Allow  | No       | %SystemRoot%\System32\svchost.exe                                                             | Any           | Any            | Any      | Any        | Any         | Any                   | Any                         | Any              | None        | Any                  |

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