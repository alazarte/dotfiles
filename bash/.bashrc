# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_variables ]] && . ~/.bash_variables
[[ -f ~/.bash_functions ]] && . ~/.bash_functions
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# completion helpers
source ~/.password-store/pass.bash-completion
source /etc/bash_completion.d/git-completion.bash

# for termite terminal emulator only, open a new terminal with current's CWD
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_prompt_command
fi

stty -ixon
set -o vi
