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

### KeepassXC

- Tools
  - Settings
    - Browser integration
      - Enable integration for these browsers: Brave

### Syncthing

open syncthing `https://192.168.1.2:8384/` and share folders to start synchronization

### Lutris

- +
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

### Thunderbird

todo

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
- open `chatgpt.com`
  - Rightclik tab: Pin
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

todo

### KDEConnect

- Open KDEConnect on smartphone
  - Pair new device
    - Add devices by IP
      - Add device IP
        - Perform handshake

## TODO

- keyboard shortcut application
- add conditions for machine differences in config files
  - add Steamdeck configs
  - add mean-machine configs
    - different monitor layout
    - different OBS setup
    - conky
      - adopt secret tool entries (maybe save own?)
      - adapt to COSMIC
    - tv_screen_mode adapt for COSMIC
- doesn't seem possible (yet)
  - calendar integration
  - configure bluetooth devices
  - panel applet to display hardware state and network
    - https://github.com/edfloreshz/cosmic-project-collection?tab=readme-ov-file
  - touchpad gestures
  - discover overlay
  - autologin
  - thunderbird
    - start minimized
  - keepassxc
    - start minimized
    - unlock database when screenlock is over
  - remove confirm prompt for shutdown, restart
