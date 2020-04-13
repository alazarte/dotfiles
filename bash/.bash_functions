#!/bin/bash

# light

function light
{
    min=1
    modif=100
    file='/sys/class/backlight/intel_backlight/brightness'
    max_file='/sys/class/backlight/intel_backlight/max_brightness'
    case $1 in
        M*)
            cat $max_file > $file
            ;;
        m*)
            echo $min > $file
            ;;
        u*)
            current=`cat $file`
            echo $(( $current + $modif )) > $file
        ;;
        d*)
            current=`cat $file`
            echo $(( $current - $modif )) > $file
        ;;
        [0-9]*)
            echo $1 > $file
        ;;
        *)
            cat $file
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
