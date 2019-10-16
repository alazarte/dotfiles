(conky | while read LINE; do xsetroot -name "$LINE"; done) &
xrdb -merge $HOME/.Xresources ; redshift -PO 3000 ; exec dwm
