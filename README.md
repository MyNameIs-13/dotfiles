# Dotfiles

personal dotfiles and other user specific configurations

## Requirements

- install [chezmoi](https://www.chezmoi.io/) & [ansible](https://www.ansible.com/)
- have the passphrase for the chezmoi keyfile ready

## Install

```bash
git clone https://github.com/MyNameIs-13/dotfiles.git "~/documents/scm/dotfiles"
chezmoi init --apply --source "~/documents/scm/dotfiles/chezmoi"
```

## Post Install steps

### Disks

- Unlock locked partitions and drives

### KeepassXC

- Tools
  - Settings
    - Browser integration
      - Enable integration for these browsers: Brave

### Syncthing

open syncthing `https://192.168.1.2:8384/` and share folders to start synchronization

### Lutris

- `+`
  - Add Game
    - Search the Lutris website for installer: battle.net
      - follow on screen instructions (default options)

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
    - Add drive: ~/games
      - ~/games: set default
  - Compatibility
    - Enable Steam Play for all other titles: enable

- install desired games
- add game parameters similar to this to each game (gamescope is optional)

    ```text
    # non-opengl
    gamemoderun gamescope -w 1280 -h 800 -W 1920 -H 1200 -f -- env MANGOHUD=1 %command%

    # opengl
    gamemoderun gamescope -w 1280 -h 800 -W 1920 -H 1200 -f -- mangohud --dlsym %command%
    ```

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

### Joplin

- Delete default Notebooks
- Tools -> Options
  - Synchronization
    - Nextcloud password: set
  - Backup
    - path: ~/.config/joplin-desktop/JoplinBackup

### Pycharm

- Customize
  - Import Settings...
    - `~/.config/JetBrains/PyCharmCE2024-initial-settings`

### Nextcloud desktop

- Log in
  - Skip folders configuration
- Settings
  - General
    - Launch on system startup: disable

### KDEConnect

- Open KDEConnect on smartphone
  - Pair new device
    - Add devices by IP
      - Add device IP
        - Perform handshake

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

### Vesktop

- User Settings
  - Voice & Audio
    - Echo Cancellation: disable
    - Noise Suppression: None
    - Automatic Gain Control: disable

## TODO

- keyboard shortcut application
- add conditions for machine differences in config files
  - add Steamdeck configs
- doesn't seem possible (yet)
  - tv_screen_mode adapt for COSMIC
    - reload session
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
