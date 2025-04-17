---
id: config
title: Configuration
sidebar_position: 2
---

## 1. Configure Your Router

1. Log in to your router's web interface.
2. Go to the **DHCP reservation** or **MAC address binding** section.
3. Add the MAC address of your host desktop and assign a **static IP** (e.g., 192.168.1.100).
    - You can find your MAC address by typing ```ipconfig /all``` in command prompt, the address will be displayed under physical address
    - Ensure the static address is outside your DHCP range
4. Go to the **Port Forwarding** section and forward port **25565** to the static IP.

## 2. Configuring Your Minecraft Server

1. Editing Server.properties
    - Offline-mode should be used when not connected to the internet
    - Edit server settings to your liking
2. Backup editing (LaunchServer.bat)
    - Editing backup time (default 15 minutes)
    - Automatic startup
    - Startup backup or Automatic backup
3. (Optional) Set the backup folder to read only
    - This can be done by right clicking the folder, then checking the "read-only" box
    - This can used to prevent unintentional changes and potentially corupt backups

## 3. Shortcuts (Optional)
A file shortcut can be used to make launching the server more user friendly. This can be done by copying the file path of the "LaunchServer.bat" file and creating a new Shortcut by rightclicking your desktop, new, then shortcut and pasting the file path in.