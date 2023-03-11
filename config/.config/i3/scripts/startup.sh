#!/bin/sh
xss-lock -- slock &
picom -f &
unclutter --timeout 1 &
xbacklight -set 30 &
gummy -T 1 -y 06:00 -u 16:30 -k 3000 -j 5000 &
brightnessctl s 20% &


killall -q rep 
#rep 60 "$HOME/.local/bin/capsesc" &
