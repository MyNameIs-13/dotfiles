#!/bin/bash

echo "Please enter password for your keepassxc file (kdbx)"
echo "it will be saved to gnome password manager (can be changed in gui)"
secret-tool store --label="KeePassXC auto unlock" application keepassxc-auto-unlock