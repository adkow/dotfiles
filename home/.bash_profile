export PATH="${PATH}:~/.config/bar"
export PATH="${PATH}:~/.scripts"
export EDITOR=vim
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE="ls:cd:clear:exit:"
export PANEL_FIFO=/tmp/panel-fifo

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
