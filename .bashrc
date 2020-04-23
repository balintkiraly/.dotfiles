# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases
PS1='[\u@\h \w]\$ '

eval "$(thefuck --alias)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GEM_HOME=~/.ruby/
