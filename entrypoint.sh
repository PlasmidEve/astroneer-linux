#!/bin/bash

pulseaudio --system=true --daemonize=true
/var/lib/flatpak/runtime/com.valvesoftware.Steam.CompatibilityTool.Proton-GE/x86_64/stable/active/files/proton run /astroneer/AstroServer.exe PROTON_LOG=! %command%
crudini --set /astroneer/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini "/Script/Astro.AstroServerSettings" "PublicIP" 51.79.78.47
crudini --set /astroneer/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini "/Script/Astro.AstroServerSettings" "ServerName" astroneerserver
crudini --set /astroneer/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini "/Script/Astro.AstroServerSettings" "OwnerName" Mark
crudini --set /astroneer/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini "/Script/Astro.AstroServerSettings" "OwnerGuid" 0

crudini --set /astroneer/Astro/Saved/Config/WindowsServer/Engine.ini "url" "Port" 30877
crudini --set /astroneer/Astro/Saved/Config/WindowsServer/Engine.ini "SystemSettings" "net.AllowEncryption" False

/var/lib/flatpak/runtime/com.valvesoftware.Steam.CompatibilityTool.Proton-GE/x86_64/stable/active/files/proton run /astroneer/AstroServer.exe PROTON_LOG=! %command%


