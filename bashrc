PATH=/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin
export EDITOR='subl -w'

alias ll='ls -alhFG'
alias git=hub

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true

char="`printf '\xE2\x9A\xB2'`"

PS1='\W$(__git_ps1 " [%s]")\ '${char}
