#!/bin/bash
profile="/home/${USER}/.thunderbird/37sjar31.default-esr"

if [[ ! -f "${profile}" ]]; then
    mkdir -p "${profile}"
    scp pi1:/srv/dev-disk-by-uuid-fed98fee-2f27-422f-ac75-e73ee6e0d12e/appdata/syncthing/data/Documents/dotfiles-and-stuff/thunderbird-profile.zip "${profile}/.."
    unzip -d "${profile}/.." "${profile}/../thunderbird-profile.zip"
fi
