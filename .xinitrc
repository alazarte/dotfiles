(conky | while read LINE; do xsetroot -name "$LINE"; done) &
xrdb -merge $HOME/.Xresources ; redshift -PO 3200 ; xrandr --output HDMI1 --primary ; xrandr --output HDMI1 --left-of eDP1 ; exec dwm
