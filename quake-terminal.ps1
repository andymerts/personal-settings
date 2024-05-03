copy .\wt-settings.json %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\QuakeTerminal.lnk") 
$shortcut.TargetPath = "$env:LOCALAPPDATA\Microsoft\WindowsApps\wt.exe"
$shortcut.Arguments = "-w _quake"
$shortcut.WorkingDirectory = "$env:LOCALAPPDATA\Microsoft\WindowsApps"
$shortcut.Save()
