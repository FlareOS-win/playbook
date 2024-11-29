@echo off
title FlareOS - Disabling updates
net stop wuauserv
sc config wuauserv start= disabled
exit /b
