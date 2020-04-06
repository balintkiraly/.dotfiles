# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases
PS1='[\u@\h \w]\$ '

eval "$(thefuck --alias)"
