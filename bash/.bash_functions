#!/bin/bash

# variables {{{
# place variables that are only used in these functions

# light
BRIGHTNESS_MIN=1
BRIGHTNESS_MODIF=100
BRIGHTNESS_FILE='/sys/class/backlight/intel_backlight/brightness'
BRIGHTNESS_MAX_FILE='/sys/class/backlight/intel_backlight/max_brightness'
NOTES_PATH=$HOME/.notes

# }}}

# light {{{
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

# vol {{{
function vol
{
    LIST=`pacmd list-sinks | grep index -A 1`
    SINKINDEX=`echo "$LIST" | grep "\* index" | awk '{print $3}'`
    pactl set-sink-volume $SINKINDEX $1%
}
# }}}

# cheat {{{
function cheat
{
    curl cheat.sh/$1
}
# }}}
