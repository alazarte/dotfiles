#!/bin/bash

# dotfiles.csv format
#       [origin file]:[destination file]

for F in `cat dotfiles.csv` ; do
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
