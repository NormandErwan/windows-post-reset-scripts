@echo off

:: Software list

set softwares=7zip
set softwares=%softwares%;duplicati
set softwares=%softwares%;docker
set softwares=%softwares%;firefox
set softwares=%softwares%;git
set softwares=%softwares%;goggalaxy
set softwares=%softwares%;keepass
set softwares=%softwares%;libreoffice
set softwares=%softwares%;nextcloud-client
set softwares=%softwares%;spotify
set softwares=%softwares%;steam
set softwares=%softwares%;transmission
set softwares=%softwares%;uplay
set softwares=%softwares%;visualstudiocode
set softwares=%softwares%;zotero-standalone

:: Install or upgrade choco

where choco /q 2> NUL

if errorlevel 1 (@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
) else (choco upgrade chocolatey)

:: Install or updgrade the softwares

for %%x in (%softwares%) do (choco upgrade %%x -y)

set /p x=Hit ENTER to finish...