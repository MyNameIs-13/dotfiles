#!/bin/bash

/home/deck/.local/bin/steamtinkerlaunch set SGDBAPIKEY global $(</home/deck/.config/steamtinkerlaunch/apikey)

/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Desktop Mode" --exepath="/home/deck/.local/bin/desktop_mode.sh" --steamgriddb-game-name="KDE plasma"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Thunderbird" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=thunderbird" "--file-forwarding" "org.mozilla.Thunderbird" "@@u" "@@"' --steamgriddb-game-name="Thunderbird (Program)" \
    --boxart="/home/deck/.config/steamtinkerlaunch/images/thunderbird-boxart.png"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Brave" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=brave" "--file-forwarding" "com.brave.Browser" "@@u" "@@"' --steamgriddb-game-name="Brave Browser (Program)"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Discover Overlay" --exepath="/usr/bin/flatpak" --launchoptions='DISPLAY=:0 %command% run --command=discover-overlay io.github.trigg.discover_overlay --nolock' --steamgriddb-game-name="Discover Overlay (Program)"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Discord" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=com.discordapp.Discord" "com.discordapp.Discord"' --steamgriddb-game-name="Discord (Program)"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Heroic Games Launcher" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=heroic-run" "--file-forwarding" "com.heroicgameslauncher.hgl" "--ozone-platform-hint=auto" "@@u" "@@"' --steamgriddb-game-name="Heroic Games Launcher (2021)"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="Lutris" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=lutris" "--file-forwarding" "net.lutris.Lutris" "@@u" "@@"' --steamgriddb-game-name="Lutris" \
    --boxart="/home/deck/.config/steamtinkerlaunch/images/lutris-boxart.png" \
    --hero="/home/deck/.config/steamtinkerlaunch/images/lutris-hero.png"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="FreeTube" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=/app/bin/run.sh" "--file-forwarding" "io.freetubeapp.FreeTube" "@@u" "@@"' --steamgriddb-game-name="FreeTube (Program)"
/home/deck/.local/bin/steamtinkerlaunch addnonsteamgame --appname="VLC" --exepath="/usr/bin/flatpak" --launchoptions='"run" "--branch=stable" "--arch=x86_64" "--command=/app/bin/vlc" "--file-forwarding" "org.videolan.VLC" "--started-from-file" "@@u" "@@"' --steamgriddb-game-name="VLC Media Player (Program)"
