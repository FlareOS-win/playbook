@echo off
title FlareOS - Preparing system
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\" /v verbosestatus /t REG_DWORD /d 1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh\" /v AllowNewsAndInterests /t REG_DWORD /d 0
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" /v TaskbarAl /t REG_DWORD /d 0
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\" /v NetworkThrottlingIndex /t REG_DWORD /d ffffffff
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy\" /v LetAppsRunInBackground /t REG_DWORD /d 2
reg add "HKLM\SYSTEM\CurrentControlSet\Control\" /v WaitToKillServiceTimeout /t REG_SZ /d 1000
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32\"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling\" /v PowerThrottlingOff /t REG_DWORD /d 1
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer\" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1
reg add "HKCU\Software\Policies\Microsoft\Windows\WindowsCopilot\" /v TurnOffWindowsCopilot /t REG_DWORD /d 1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" /v TaskbarDa /t REG_DWORD /d 0
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" /v TaskbarMn /t REG_DWORD /d 0
exit /b