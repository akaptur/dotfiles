PATH=/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin:/usr/local/smlnj-110.75/bin
export EDITOR='subl -w'

alias ll='ls -alhFG'
alias git=hub
alias pg='ps aux | grep $1'

# Inspired by Nick's install_hs_db_tool.sh script
alias dump_hs_db="curl -o hacker-school-prod-db.dump \`heroku pgbackups:url\`"
alias load_hs_db="pg_restore --verbose --clean --no-acl --no-owner -h localhost -d hackerschool hacker-school-prod-db.dump"

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

export PYTHONSTARTUP=~/py3prompt.py
