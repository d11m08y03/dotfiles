alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dots='cd ~/.dotfiles/'
alias cd='z'

PS1='[\u@\h \W]\$ '

set -o vi

eval "$(zoxide init bash)"
