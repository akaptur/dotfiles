PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin

alias ll='ls -alhFG'
alias git=hub

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
