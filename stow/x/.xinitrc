#!/bin/bash

source /home/al/.bash_variables
slstatus &
setxkbmap -option "ctrl:nocaps" us &
/home/al/System/bin/,changewallpaper &
dunst &
flameshot &
/home/al/System/bin/sct 6500 &
/home/al/System/bin/,switchmonitors 1 &
xcompmgr &

# slower trackpoint speed
tp_id=$(xinput | grep TrackPoint | sed "s/.*id=\([0-9]\+\).*/\1/")
xinput --set-prop $tp_id "libinput Accel Speed" 0.8

exec dwm
