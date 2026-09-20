#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -l --icons'
alias la='eza -la --icons'
alias cd='z'
alias grep='grep --color=auto'
set -o vi

ps1='[\u@\h \w]\$ '
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
