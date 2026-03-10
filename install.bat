@echo off
set SCRIPT_DIR=%~dp0
echo @echo off > "%USERPROFILE%\luafuck.bat"
echo lua "%SCRIPT_DIR%main.lua" %%* >> "%USERPROFILE%\luafuck.bat"
move "%USERPROFILE%\luafuck.bat" "C:\Windows\System32\luafuck.bat"
echo installed! type luafuck to play
