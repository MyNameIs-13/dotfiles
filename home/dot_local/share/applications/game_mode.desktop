#!/bin/sh

unset LD_PRELOAD

rm -rf /tmp/desktop-mode
mkdir -p /tmp/desktop-mode
cat > /tmp/desktop-mode/kwin_wayland_wrapper << EOF
#!/bin/sh
$(which kwin_wayland_wrapper) --no-lockscreen --width 1280 --height 800 --x11-display $DISPLAY \$@
EOF
chmod +x /tmp/desktop-mode/kwin_wayland_wrapper

kwriteconfig5 --file startkderc --group General --key systemdBoot false
PATH=/tmp/desktop-mode:$PATH startplasma-wayland
kwriteconfig5 --file startkderc --group General --key systemdBoot --delete