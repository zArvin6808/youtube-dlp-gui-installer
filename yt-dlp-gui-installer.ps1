#------------------------
#-kazukikasama Solutions-
#------------------------
#make dir in current user appdata
mkdir $Env:LOCALAPPDATA\yt-dlp-gui

#Download aria2, yt-dlp, ffmpeg and yt-dlp-gui from official sites current releases
Invoke-WebRequest https://github.com/aria2/aria2/releases/download/release-1.36.0/aria2-1.36.0-win-32bit-build1.zip -OutFile $Env:LOCALAPPDATA\yt-dlp-gui\aria2.zip
Expand-Archive $Env:LOCALAPPDATA\yt-dlp-gui\aria2.zip -DestinationPath $Env:LOCALAPPDATA\yt-dlp-gui\
Copy-Item -Path "$Env:LOCALAPPDATA\yt-dlp-gui\aria2-1.36.0-win-32bit-build1\aria2c.exe" -Destination "$Env:LOCALAPPDATA\yt-dlp-gui"

& $Env:LOCALAPPDATA\yt-dlp-gui\aria2c.exe https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe -d $Env:LOCALAPPDATA\yt-dlp-gui\ -o yt-dlp.exe
& $Env:LOCALAPPDATA\yt-dlp-gui\aria2c.exe https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip -d $Env:LOCALAPPDATA\yt-dlp-gui\ -o ffmpeg.zip
& $Env:LOCALAPPDATA\yt-dlp-gui\aria2c.exe https://github.com/kannagi0303/yt-dlp-gui/releases/latest/download/yt-dlp-gui.exe -d $Env:LOCALAPPDATA\yt-dlp-gui\ -o yt-dlp-gui.exe

#extract ffmpeg
Expand-Archive $Env:LOCALAPPDATA\yt-dlp-gui\ffmpeg.zip -DestinationPath $Env:LOCALAPPDATA\yt-dlp-gui\

#copy ffmpeg and delete dowloaded extra files
Copy-Item -Path "$Env:LOCALAPPDATA\yt-dlp-gui\ffmpeg-master-latest-win64-gpl\bin\*" -Destination "$Env:LOCALAPPDATA\yt-dlp-gui"
remove-item -fo $Env:LOCALAPPDATA\yt-dlp-gui\ffmpeg-master-latest-win64-gpl -recurse
remove-item -fo $Env:LOCALAPPDATA\yt-dlp-gui\ffmpeg.zip -recurse
remove-item -fo $Env:LOCALAPPDATA\yt-dlp-gui\aria2-1.36.0-win-32bit-build1 -recurse
remove-item -fo $Env:LOCALAPPDATA\yt-dlp-gui\aria2.zip -recurse

#make shorcut in Destop
$desktop = [Environment]::GetFolderPath("Desktop")
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$desktop\Youtube Dowloader P.lnk")
$Shortcut.TargetPath="$Env:LOCALAPPDATA\yt-dlp-gui\yt-dlp-gui.exe"
$Shortcut.Arguments=""
$Shortcut.IconLocation="$Env:LOCALAPPDATA\yt-dlp-gui\yt-dlp-gui.exe"
$Shortcut.Save()

#make shorcut in Start Menu
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Env:APPDATA\Microsoft\Windows\Start Menu\Programs\Youtube Dowloader P.lnk")
$Shortcut.TargetPath="$Env:LOCALAPPDATA\yt-dlp-gui\yt-dlp-gui.exe"
$Shortcut.Arguments=""
$Shortcut.IconLocation="$Env:LOCALAPPDATA\yt-dlp-gui\yt-dlp-gui.exe"
$Shortcut.Save()


