alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dots='cd ~/.dotfiles/'
alias cd='z'

PS1='[\u@\h \W]\$ '

set -o vi

export PATH=/home/zakariyya/Work/Programs/sf/bin:$PATH
export PATH=/home/zakariyya/go/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export VCPKG_ROOT="$HOME/.local/share/vcpkg"

eval "$(zoxide init bash)"
# ~/.local/bin/show_razan.sh
