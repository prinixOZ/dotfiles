#!/bin/sh
polywal &
xss-lock -- i3lock -c 000000 -R 1000 -F 100 -O 0 -o ffffff -l ffffff --no-keyboard-layout -T 1 &
picom -f --experimental-backends &
unclutter --timeout 1 &
gummy start &
xbacklight -set 20 &

rep 60 "$HOME/.local/bin/capsesc" &
rep 3600 "~/.local/bin/rss" &
