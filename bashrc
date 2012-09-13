[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias ls='ls -la --color | grep "^d" && ls -la | grep -v "^d"'

function rebase_last {
  git rebase -i HEAD~$1
}

alias ack='ack-grep'
alias gb='git branch'
alias gp='git push'
alias ga='git add . '
alias gd='git diff'
alias gt='git tag -a '
alias glg="git log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative -n20"
alias dot='cd ~/dot_files/'
alias gf='git fetch'
alias gco='git checkout '
alias gc='git commit -m '
alias gs='git status --short'
alias ali='gvim ~/.bashrc'
alias reload='source ~/.bashrc'
alias leap='cd ~/Sites/leapfroggy'
alias tmux_color='TERM=screen-256color tmux'
