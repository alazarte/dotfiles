#!/bin/bash

# format
# [origin file]:[destination file]

DOTFILES="
$HOME/.tmux.conf,.tmux.conf
$HOME/.xinitrc,.xinitrc
$HOME/.vimrc,.vimrc
$HOME/.bashrc,.bashrc
$HOME/.bash_variables,.bash_variables
$HOME/.bash_functions,.bash_functions
$HOME/.bash_aliases,.bash_aliases
$HOME/.config/conky/conky.conf,config/conky/conky.conf
$HOME/.config/user-dirs.dirs,config/user-dirs.dirs
$HOME/.newsboat/config,newsboat/config
$HOME/.newsboat/urls,newsboat/urls
$HOME/.vim/colors/boring.vim,vim/colors/boring.vim

$HOME/opt/dwm/config.mk,dwm/config.mk
$HOME/opt/dwm/config.h,dwm/config.h
$HOME/opt/st/config.mk,st/config.mk
$HOME/opt/st/config.h,st/config.h
$HOME/opt/surf/config.mk,surf/config.mk
$HOME/opt/surf/config.h,surf/config.h

/etc/udev/rules.d/90-monitor.rules,rules/udev/rules.d/90-monitor.rules
/etc/udev/rules.d/90-backlight.rules,rules/udev/rules.d/90-backlight.rules
/etc/X11/xorg.conf.d/00-keyboard.conf,rules/X11/xorg.conf.d/00-keyboard.conf
"

for F in $DOTFILES; do
    OF="`echo $F | awk -F, '{print $1}'`"
    DF=`echo $F | awk -F, '{print $2}'`
    case $1 in
        apply)
            echo $DF to $OF
            cp $DF $OF || true
        ;;
        update)
            echo $OF to $DF
            mkdir -p $(dirname $DF)
            cp $OF $DF
        ;;
    esac
done
