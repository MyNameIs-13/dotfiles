#!/bin/sh

if [ ! -f "/home/${USER}/.config/chezmoi/keyfile" ]; then
    mkdir -p "/home/${USER}/.config/chezmoi"
    cmd="
    chezmoi age decrypt --output \"/home/${USER}/.config/chezmoi/keyfile" --passphrase "{{ .chezmoi.workingTree }}/keyfile.age\""
    # Initialize the attempt counter
    attempt=1
    max_attempts=3

    while ! $cmd; do
        if [ $attempt -ge $max_attempts ]; then
            echo "Command failed after $attempt attempts. Exiting."
            break
        fi
        echo "Command failed. Retrying..."
        attempt=$((attempt+1))
        sleep 1  # Optional: wait 1 second before retrying
    done
    chmod 600 "/home/${USER}/.config/chezmoi/keyfile"
fi
