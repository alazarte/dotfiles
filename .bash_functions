#!/bin/bash

# {{{ variables
# place variables that are only used in these functions

# light
BRIGHTNESS_MIN=20
BRIGHTNESS_MODIF=100
BRIGHTNESS_FILE='/sys/class/backlight/intel_backlight/brightness'
BRIGHTNESS_MAX_FILE='/sys/class/backlight/intel_backlight/max_brightness'
NOTES_PATH=$HOME/.notes

# mon
NOTEMON=eDP1

# }}}

# {{{ docker
# test names command for docker
function docker
{
    case $1 in
        names)
        docker ps --format {{.Names}}
        ;;
        *)
        /usr/bin/docker $@
        ;;
    esac
}
# }}}

# {{{ light
function light
{
    case $1 in
        M*)
            cat $BRIGHTNESS_MAX_FILE > $BRIGHTNESS_FILE
            ;;
        m*)
            BRIGHTNESS_MIN=1
            echo $BRIGHTNESS_MIN > $BRIGHTNESS_FILE
            ;;
        u*)
            BRIGHTNESS_CURRENT=`cat $BRIGHTNESS_FILE`
            echo $(( $BRIGHTNESS_CURRENT + $BRIGHTNESS_MODIF )) > $BRIGHTNESS_FILE
        ;;
        d*)
            BRIGHTNESS_CURRENT=`cat $BRIGHTNESS_FILE`
            echo $(( $BRIGHTNESS_CURRENT - $BRIGHTNESS_MODIF )) > $BRIGHTNESS_FILE
        ;;
        [0-9]*)
            echo $1 > $BRIGHTNESS_FILE
        ;;
        *)
            cat $BRIGHTNESS_FILE
        ;;

    esac
}
# }}}

# {{{ vol
function vol
{
    LIST=`pacmd list-sinks | grep index -A 1`
    SINKINDEX=`echo "$LIST" | grep "\* index" | awk '{print $3}'`
    pactl set-sink-volume $SINKINDEX $1%
}
# }}}

# {{{ notes

function notes
{
    if [ -z $1 ] ; then 
        $EDITOR $NOTES_PATH
        return
    fi
    if [ "$1" == "-h" ] ; then
        printf "Usage: help [filename]\n"
        printf "\tIf no argument then open folder with $EDITOR\n"
        printf "\tArgument is just the filename without extension,\n"
        printf "\tall files are txt\n"
    else
        $EDITOR $NOTES_PATH/$1.txt
    fi
}

# }}}

# mon replaced by autorandr
