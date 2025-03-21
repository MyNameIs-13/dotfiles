# Dotfiles

personal dotfiles and other user specific configurations

## Requirements

- install [chezmoi](https://www.chezmoi.io/)
- have the passphrase for the chezmoi keyfile ready

## Install

```bash
git clone https://github.com/MyNameIs-13/dotfiles.git "~/documents/scm/dotfiles"
chezmoi init --apply --source "~/documents/scm/dotfiles"
```

## Post Install steps (non-steamdeck)

### KeepassXC

- Tools
  - Settings
    - Browser integration
      - Enable integration for these browsers: Brave

### Syncthing

open syncthing `https://192.168.1.2:8384/` and share folders to start synchronization

### Brave

- Settings
  - Search engine
    - Manage search engine and site search
      - Search engines:
        - Google: remove
        - Qwant: remove
        - Bing: remove
      - Site search: Add
        - Name: POE Wiki
        - Shortcut: @poe
        - URL: `https://www.poewiki.net/index.php?title=Special:Search&search=%s`
- keepassxc extension
  - connect

### Vesktop

- User Settings
  - Voice & Video
    - Echo Cancellation: disable
    - Automatic Gain Control: disable

### Pycharm

- Customize
  - Import Settings...
    - `~/.config/JetBrains/PyCharmCE2024-initial-settings`

### KDEConnect

- Open KDEConnect on smartphone
  - Pair new device
    - Add devices by IP (when not working directly)
      - Add device IP
        - Perform handshake

### Conky (when hardware changed)

- for GPU temp use `ls /sys/kernel/debug/` to find the correct path
- for Network speed use `ls /sys/class/net` to find the correct device name
- also check `sensors` for disk information

### Lutris

- `+`
  - Add Game
    - Search the Lutris website for installer: battle.net
      - follow on screen instructions (default options)
- Click through the Runners and log in to them

### Steam

- Steam -> Settings
  - Notifications
    - Play a sound when a notification toast is displayed: disable
  - Interface
    - 24-hour clock: enable
    - Start Up Location: Library
    - Notify me about additions or changes to my games, new releases, and upcoming releases: disable
  - Downloads
    - Display download rates in bits per second: disable
  - Storage
    - Add drive: ~/games (might be necessary to add a directory called `SteamLibrary`)
      - ~/games: make default
  - Compatibility
    - Enable Steam Play for all other titles: enable

- install desired games
- add game parameters similar to this to each game (gamescope is optional)

    ```text
    # laptop
    gamemoderun gamescope -e -w 1280 -h 800 -W 1920 -H 1200 -f %command%

    # general desktop
    gamemoderun gamescope -e -w 2560 -h 1440 -f %command%

    # grim dawn desktop
    gamemoderun gamescope -e -w 2560 -h 1440 --force-windows-fullscreen -f %command%

    # Enshrouded desktop
    gamemoderun %command%

    # POE desktop
    gamemoderun gamescope -e -w 2552 -h 1080 --force-windows-fullscreen --mangoapp -f %command%

    # opengl games
    gamemoderun gamescope -w 1280 -h 800 -W 1920 -H 1200 -f -- mangohud --dlsym %command%
    ```

### Virtual Machine Manager

- Edit
  - Preferences
    - General
      - Enable XML editing
- File
  - New Virtual Machine
    - Forward
      - Browse
        - default
          - Stop Pool
          - Delete Pool
        - `+` Add Pool
          - Name: default
          - Target Path: `/home/${USER}/virtual-machines`
        - `+` Add Pool
          - Name: downloads
          - Target Path: `/home/${USER}/downloads`

## TODO

- add conditions for machine differences in config files
- doesn't seem possible (yet)
  - tv_screen_mode adapt for COSMIC
    - constant crashes of cosmic-randr
  - conky
    - start at correct position
    - do not show in dock
  - calendar integration
  - show battery percentage in panel
  - touchpad gestures
  - discover overlay
  - autologin
  - thunderbird
    - start minimized
  - keepassxc
    - start minimized
    - lock database when screen locked
    - unlock database when screenlock is over
  - remove confirm prompt for shutdown, restart

## Post Install steps (steamdeck)

### Brave (desktop mode)

- Settings Icon
  - More Tools
    - Sync
      - I have a Sync Code: enter from keepassxc

### Thunderbird (desktop mode)

- Settings Icon
  - Tools
    - Import
      - Import from a file
        - Import from a backed-up profile
          - `/home/deck/.var/app/org.mozilla.Thunderbird/.thunderbird/thunderbird-profile.zip`
          - Enter passwords
- Settings icon next to `+ New Message`
  - Hide Local Folders: enable

### Settings (game mode)

- General
  - Battery Percentage: enable
- Security
  - Lock Screen: enable all
- Audio
  - Enable UI sounds: disable
- Customization
  - Shuffle Startup Move: enable
- Downloads
  - Disble download rates in bits per second: disable
- Home
  - Show personalized store content on my Home: disable
