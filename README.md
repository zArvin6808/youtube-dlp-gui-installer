便于修改安装路径的安装修改
Installation modification to facilitate modification of installation path
用文本文件打开run_setup.ps1 安装脚本
修改$InstallPath = "D:\soft\yt-dlp-gui"中的D:\soft\yt-dlp-gui路径
在Windows PowerShell里运行.\run_setup.ps1脚本安装即可
Use a text file to open the run_setup.ps1 installation script
Modify the D:\soft\yt-dlp-gui path in $InstallPath = "D:\soft\yt-dlp-gui"
Run the .\run_setup.ps1 script in Windows PowerShell to install


Automatic installer for [yt-dlp-gui](https://github.com/kannagi0303/yt-dlp-gui)
### Auto dowload Requirements for #yt-dlp-gui

-   [Yt-dlp](https://github.com/yt-dlp/yt-dlp)
-   [FFMPEG](https://ffmpeg.org/download.html#build-windows)
-  [Yt-dlp-gui](https://github.com/kannagi0303/yt-dlp-gui)
-  [Aria2](https://github.com/aria2/aria2)

yt-dlp-gui requires downloading and putting ffmpeg and yt-dlp.exe in the same or system folder, this script automates the process and creates shortcuts in the home folder and on the desktop as an installer
## how to use it?
**Method 1**
[save this link (right click save as)](https://raw.githubusercontent.com/kazukikasama/youtube-dlp-gui-installer/main/yt-dlp-gui-installer.ps1) 
when it has downloaded in windows file explorer right click run with PowerShell

**Method 2**
In windows start Menu, look for PowerShell, open it, paste the following link and press enter. In a minute it will be installed.
### Quick download link, is the same link but shortener
**Short Link**

    iwr -useb http://urlr.me/9yjwn|iex

**Long Link**
   

     iwr -useb https://raw.githubusercontent.com/kazukikasama/youtube-dlp-gui-installer/main/yt-dlp-gui-installer.ps1|iex

**Windows SERVER FIRST USE:**
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    
## For Uninstall
Paste in PowerShell short or long link
**short link**

    iwr -useb https://urlr.me/97zG6|iex

**Long Link**

    iwr -useb https://raw.githubusercontent.com/kazukikasama/youtube-dlp-gui-installer/main/yt-dlp-gui-uninstaller.ps1|iex
   
**Or**
[save this link (right click save as)](https://raw.githubusercontent.com/kazukikasama/youtube-dlp-gui-installer/main/yt-dlp-gui-uninstaller.ps1) when it has downloaded in windows file explorer right click run with PowerShell

**Or** 
Paste this code in PowerShell

    $desktop = [Environment]::GetFolderPath("Desktop")
    remove-item -fo $Env:LOCALAPPDATA\yt-dlp-gui -recurse
    remove-item -fo "$desktop\Youtube Dowloader P.lnk" -recurse
    remove-item -fo ("$Env:APPDATA\Microsoft\Windows\Start Menu\Programs\Youtube Dowloader P.lnk") -recurse
