#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_variables ]] && . ~/.bash_variables
[[ -f ~/.bash_functions ]] && . ~/.bash_functions
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

source ~/.password-store/pass.bash-completion
source /etc/bash_completion.d/git-completion.bash

stty -ixon

set -o vi

# This can set the font in the tty
# setfont Lat2-Terminus16
