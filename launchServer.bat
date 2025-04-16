@echo off
setlocal enabledelayedexpansion

if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (
  copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
)

start javaw -jar "%~dp0server.jar"

set "SOURCE=%~dp0world"
set "DEST=%~dp0backups"

if not exist %DEST% mkdir DEST

:LOOP

for /f "tokens=1-4 delims=/ " %%a in ("%date%") do (
    set mm=%%a
    set dd=%%b
    set yyyy=%%c
)
for /f "tokens=1-2 delims=: " %%a in ("%time%") do (
    set hh=%%a
    set min=%%b
)

set hh=0!hh!
set hh=!hh:~-2!

set "FOLDER=world%yyyy%-%mm%-%dd%!hh!-!min!"
set "TARGET=%DEST%\%FOLDER%"

mkdir "%TARGET%"

robocopy "%SOURCE%" "%TARGET%" /MIR /ZB /R:1 /W:1

timeout /t 900 >nul

goto LOOP