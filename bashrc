source ~/.bash_aliases
source ~/.bash_git

PATH=/usr/local/bin:/usr/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR=subl
export GIT_EDITOR=vim
export HISTCONTROL=ignoredups

# Use VI mode in command line bash
# set -o vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
