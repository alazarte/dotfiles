#!/bin/bash

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

function notes
{
    notespath=$HOME/data/notes
    category=misc
    case $1 in
        # open all notes
        e)
            $EDITOR $notespath
            ;;
        n)
            $EDITOR $notespath/"$2".txt
            ;;
        # match part of the note's name
        *)
            find $notespath -name "*$1*" -exec $EDITOR {} \; -quit
            ;;
    esac
}

function journal
{
    JOURNALPATH=$HOME/data/journal
    if [ "$1" == "e" ] ; then
        $EDITOR $JOURNALPATH
        return
    fi
    format='%Y-%m-%d'
    case "$1" in
        y)
            whenstring=yesterday
            datestring=`date -d $whenstring +$format`
            ;;
        t)
            whenstring=tomorrow
            datestring=`date -d $whenstring +$format`
            ;;
        *)
            datestring=`date +$format`
            ;;
    esac
    filepath="$JOURNALPATH/$datestring.txt"
    $EDITOR $filepath
}
