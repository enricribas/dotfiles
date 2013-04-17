source ~/.bash_aliases
source ~/.bash_git

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=/usr/local/bin:/usr/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR=subl
export GIT_EDITOR=vim

source $HOME/.hitch_export_authors

# Used by hitch gem to pair program commit
hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
hitch

export HISTCONTROL=ignoredups

# Use VI mode in command line bash
set -o vi

