#!/bin/bash
kdbx="/home/${USER}/documents/confidental/GSKPasswordList.kdbx"

if [[ ! -f "${kdbx}" ]]; then
    echo "Error: File ${kdbx} does not exist."
    exit 1
fi

mkdir -p "/home/${USER}/documents/confidental"
scp pi1:/srv/dev-disk-by-uuid-fed98fee-2f27-422f-ac75-e73ee6e0d12e/appdata/syncthing/data/Documents/scm/system_install/secrets/GSKPasswordList.kdbx "${kdbx}"