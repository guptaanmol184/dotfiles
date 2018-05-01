#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -blur 0x4 /tmp/screen.png
[[ -f ~/.config/i3/icon.png ]] && convert /tmp/screen.png ~/.config/i3/pics/panda/out.jpg -gravity center -composite -matte /tmp/screen.png
i3lock -u -e -i /tmp/screen.png
rm /tmp/screen.png
