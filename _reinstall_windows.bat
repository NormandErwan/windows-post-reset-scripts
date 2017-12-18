@echo off

echo "Installing softwares: starting 'softwares_installation.bat'"
Powershell -Command "& { Start-Process \"%cd%\softwares_installation.bat\" -verb RunAs}"
echo ""

set /p x=Wait the softwares to install...

echo "Configuring shell environment: starting 'shell_initialization.sh'"
start "" "%PROGRAMFILES%\Git\bin\sh.exe" --login -i -- shell_initialization.sh

set /p x=Hit ENTER to finish...
