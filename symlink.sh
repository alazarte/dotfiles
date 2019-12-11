#!/bin/bash

config_backup_path=${CONFIG_BACKUP_PATH:-./backup}
output=/dev/stdout

files_list="
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
$HOME/.gnupg/gpg-agent.conf,gnupg/gpg-agent.conf

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
    while getopts "q" opt ; do
        case $opt in
            q)
                output=/dev/null
                ;;
        esac
    done
    for config_tuple in $files_list ; do
        local_link=`echo $config_tuple | awk -F, '{print $1}'`
        repo_file=`echo $config_tuple | awk -F, '{print $2}'`
        log "creating link $local_link for $repo_file"
        link_file $local_link $repo_file
    done
}

function link_file {
    local_link="$1"
    repo_file=$2
    if [ -f $local_link ] ; then
        backup_delete $local_link
    fi
    if [ -h $local_link ] ; then
        log "remove local link $local_link"
        rm $local_link
    fi
    ln -sf $(pwd)/$repo_file $local_link
    if [ -h $local_link ] ; then
        log "$local_link created"
    fi
}

function backup_delete {
    if [ -d $config_backup_path ] ; then
        log "backup up $1 to $config_backup_path"
        mv $1 $config_backup_path
    else
        log "$config_backup_path is not a directory"
    fi
}

function log {
    timestamp=`date +%Y-%m-%d\ %H:%M`
    echo "[$timestamp] $@" > $output
}

main "$@"