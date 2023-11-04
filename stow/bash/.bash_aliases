alias ls='ls -p -F --color=always'
alias ll='ls -l'
alias tf='terraform'

alias rec='ffmpeg -f x11grab -y -framerate 30 -s 1920x1080 -i :0.0 -c:v libx264 -preset superfast -crf 18 out.mp4'

alias t='tmux -u new-session -s al -A'

alias x='xdg-open'
alias reme="$EDITOR $DOTREMINDERS"
alias which="alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde"

alias xc='xclip -selection clipboard'
alias xi='xclip -selection clipboard -t image/png -o > '

alias o='open'

alias g='git'

source ~/.bash_aliases.priv
