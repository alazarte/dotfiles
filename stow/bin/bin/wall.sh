#!/bin/bash
wallpath=$HOME/data/wallpaper
wallfile=`find $wallpath -type f | sort -R | head -n 1`
echo $wallfile
DISPLAY=:0 feh --bg-fill $wallfile
