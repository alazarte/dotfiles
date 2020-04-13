#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_variables ]] && . ~/.bash_variables
[[ -f ~/.bash_functions ]] && . ~/.bash_functions
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

stty -ixon

set -o vi

# This can set the font in the tty
# setfont Lat2-Terminus16
