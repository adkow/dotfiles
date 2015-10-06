[[ $- != *i* ]] && return

PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

alias ls='ls --color=auto'
alias cp='cp -v'
alias mv='mv -v'
alias sysupd='yaourt -Syua'
alias pytupd='sudo pip-review --interactive'
alias myip='wget -qO- "http://wtfismyip.com/text"'
alias rndm='wget -qO- "https://www.random.org/integers/?num=1&min=1&max=10&col=1&base=10&format=plain&rnd=new"'
alias in='task add +inbox'

eval "$(thefuck --alias)"
eval "$(beet completion)"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
