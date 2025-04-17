---
id: setup
title: Setup
sidebar_position: 1
---

# Installing

This guide describes how to set up a local Minecraft server on a desktop computer.

---

## Download Java build
Download and install (if not already done so) the latest Java build [here](https://www.java.com/en/download/manual.jsp).

## Set Up the Minecraft Server
1. Download the Minecraft server `.jar` file from the official website.
2. Create a dedicated folder for the server on your desktop.
3. Place the server `.jar` file in the folder.
4. Run the jar file once to generate the `eula.txt` file.
5. Edit `eula.txt` and set `eula=true`.
6. Open a terminal or text editor and create a `launchServer.bat` file with the following content:
    ```bat
    @echo off
    setlocal enabledelayedexpansion

    :: Comment this out if you don't want automatic startup
    if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (
        copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
    )

    start javaw -jar "%~dp0server.jar"

    :: Uncomment to remove automatic backup
    :: exit

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

    :: 15 minutes in seconds
    timeout /t 900 >nul

    :: Comment this line to remove backup every x minutes
    goto LOOP
    ```

---