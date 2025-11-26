@echo off
title EasyCMD Prompt
color 0a
@echo off
setlocal enabledelayedexpansion
title EasyCMD Prompt
color 0a
echo Welcome to EasyCMD, a retro yet modern command prompt!
echo List of commands:
echo - `/run` to launch apps (e.g., `/run notepad.exe`)
echo - `/web` to open sites (e.g., `/web google.com`)
echo - `/exit` to quit
:start
set /p "cmd=Enter Command: "

REM Command handlers
if "!cmd!"=="/run" (
    set /p "app=Enter app name: "
    start "" "!app!"
    goto :start
)

if "!cmd!"=="/web" (
    set /p "site=Enter website: "
    start "" "https://!site!"
    goto :start
)

if "!cmd!"=="/exit" (
    exit
)

echo Unknown command: !cmd!
goto :start
