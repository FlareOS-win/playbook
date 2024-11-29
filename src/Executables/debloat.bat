@echo off
title FlareOS - Debloating
timeout /t 3 /nobreak
powershell -Command "Get-AppxPackage -AllUsers | Remove-AppxPackage"
exit /b