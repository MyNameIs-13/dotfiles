# Dotfiles

personal dotfiles and other user specific configurations

## Requirements

- install [chezmoi](https://www.chezmoi.io/) & [ansible](https://www.ansible.com/)
- have the passphrase for the chezmoi keyfile ready

## Install

```bash
git clone https://github.com/MyNameIs-13/dotfiles.git "${GIT_PATH}/../dotfiles"
chezmoi init --apply --source "${GIT_PATH}/../dotfiles/chezmoi"
```

## Post Install steps

### Syncthing

open syncthing `https://192.168.1.2:8384/` and share folders to start synchronization

### Steam

- Steam -> Settings
  - Notifications
    - Play a sound when a notification toast is displayed: disable
  - Interface
    - 24-hour clock: enable
    - Start Up Location: Library
    - Notify me about additions or changes to my games, new releases, and upcoming releases: disable
  - Storage
    - Add drive: ~/games
      - ~/games: set default
  - Compatibility
    - Enable Steam Play for all other titles: enable

add game parameter like this to each game
```text
# non-popengl
gamemoderun gamescope -w 1920 -h 1080 -W 3440 -H 1440 -b -- env MANGOHUD=1 %command%

# opengl
gamemoderun gamescope -w 1920 -h 1080 -W 3440 -H 1440 -b -- mangohud --dlsym %command%
```

### KeepassXC

todo -> ansible?

### Thunderbird

todo -> ansible?

### Brave

todo -> ansible?

### Joplin

- Delete default Notebooks
- Tools -> Options
  - Synchronization
    - Nextcloud password: set/
  - Backup
    - path: ~/.config/joplin-desktop/JoplinBackup

remove `~/JoplinBackup`

### Pycharm

todo

### Code

todo

### Gimp

todo

### OBS

todo

### Kdenlive

todo

## TODO

- app configs (steam, lutirs, thunderbird, brave, joplin, ...
- replace skodo with chezmoi username in all files (except oh-my-posh config)
- add conditions for machine differences in config files
  - add Steamdeck configs
  - add mean-machine configs
- autologin
- keepass start minimized (&auto unlock)
- remove confirm prompt for shutdown, restart
- Noise compression
- aocd
- discover overlay
- nextcloud
