# Initial setup
Start an admin powershell terminal

## Set correct default policy
``` powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## Install chocolatey
``` powershell
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'));
```

## Install all the tools!
``` powershell
choco install .\chocolatey.config
```
This will almost certainly request a reboot. If not, you may need `refreshenv` to update the terminal's environment variables without restarting.

Use nvm to set up node.

## Windows Terminal
Execute `quake-terminal.ps1`, which will copy the settings file to the appropriate directory and then create a QuakeTerminal shortcut in startup

## VS 2022
Use the settings importer to import from this repository directory.

## VS Code
From command pallet, find Import Profile and import from vscode-andy.code-profile
