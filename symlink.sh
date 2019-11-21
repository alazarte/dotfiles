#!/bin/bash

# format
# [origin file]:[destination file]

backup_path=${BACKUP_PATH:-$PWD/backup}

DOTFILES="
$HOME/.tmux.conf,.tmux.conf
$HOME/.xinitrc,.xinitrc
$HOME/.vim/vimrc,vim/vimrc
$HOME/.bashrc,.bashrc
$HOME/.bash_variables,.bash_variables
$HOME/.bash_functions,.bash_functions
$HOME/.bash_aliases,.bash_aliases
$HOME/.config/conky/conky.conf,config/conky/conky.conf
$HOME/.config/user-dirs.dirs,config/user-dirs.dirs
$HOME/.newsboat/config,newsboat/config
$HOME/.newsboat/urls,newsboat/urls
$HOME/.vim/colors/simple.vim,vim/colors/simple.vim

$HOME/opt/dwm/config.mk,dwm/config.mk
$HOME/opt/dwm/config.h,dwm/config.h
$HOME/opt/st/config.mk,st/config.mk
$HOME/opt/st/config.h,st/config.h
$HOME/opt/surf/config.mk,surf/config.mk
$HOME/opt/surf/config.h,surf/config.h

/etc/udev/rules.d/90-monitor.rules,rules/udev/rules.d/90-monitor.rules
/etc/udev/rules.d/90-backlight.rules,rules/udev/rules.d/90-backlight.rules
/etc/X11/xorg.conf.d/00-keyboard.conf,rules/X11/xorg.conf.d/00-keyboard.conf
/etc/polkit-1/rules.d/00-allow-user.rules,polkit-1/rules.d/00-allow-user.rules
"

function main {
    echo "running main"
    for F in $DOTFILES; do
        # local file
        LF="`echo $F | awk -F, '{print $1}'`"
        # remote file
        RF=`echo $F | awk -F, '{print $2}'`
        case $1 in
            apply)
                log "going to create link $LF for $RF"
                basepath=`dirname $LF`
                if [ ! -d $basepath ] ; then
                    log "$basepath does not exists, creating it..."
                    mkdir -p $basepath
                fi
                if [ -h $LF ] ; then
                    log "$LF is a link, removing it..."
                    rm $LF
                elif [ -f $LF ] ; then
                    log "$LF is a file, back up..."
                    backup $LF
                    if [ $? -ne 0 ] ; then
                        log "backup failed!"
                        exit
                    fi
                fi
                log "link $RF to $LF"
                ln -sf $PWD/$RF $LF
            ;;
        esac
    done
}

timestamp_command='date +%Y-%m-%d\ %H:%M'

function backup {
    filename=`basename $1`
    timestamp=`eval $timestamp_command | sed 's/ /_/'`
    backup_filepath="${backup_path}/${filename}_${timestamp}"
    log "backup $1 to $backup_filepath"
    mv $1 $backup_filepath
}

function log {
    timestamp=`eval $timestamp_command`
    echo "[${timestamp}] ${@}"
}

main "${@}"
