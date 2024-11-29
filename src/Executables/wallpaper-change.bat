@echo off
title FlareOS - Changing wallpapers
taskkill /f /im explorer.exe
set webpath=C:\Windows\Web
set resourcespath=C:\Windows\Resources
rmdir %webpath%\Wallpaper\Flowers /s /q
rmdir %webpath%\Wallpaper\Spotlight /s /q
rmdir "%webpath%\Wallpaper\Windows 10" /s /q
xcopy "%~dp0Web\*" "%webpath%\" /E /I /H /Y
xcopy "%~dp0Resources\*" "%resourcespath%\" /E /I /H /Y
C:\Windows\Resources\Themes\flare-dark.theme
del C:\Windows\Resources\Themes\spotlight.theme /s /q
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" /v LockScreenImagePath /t REG_SZ /d "%webpath%\Screen\flare-extra-5.jpg" /f
explorer
exit /b