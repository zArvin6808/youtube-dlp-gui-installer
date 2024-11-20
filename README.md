新的安装方法
运行PowerShel 执行run_setup.ps1进行安装。
如果需要修改安装路径，请用文本文件打开run_setup.ps1这个文件。
更改$InstallPath = "D:\Software\yt-dlp-gui-setup"中的D:\Software\yt-dlp-gui-setup这个路径到想要的路径。
保存退出，再次运行即可。

New installation method
Run PowerShell and execute run_setup.ps1 to install.
If you need to modify the installation path, open the run_setup.ps1 file with a text file.
Change the path D:\Software\yt-dlp-gui-setup in $InstallPath = "D:\Software\yt-dlp-gui-setup" to the desired path.
Save and exit, then run again.




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
