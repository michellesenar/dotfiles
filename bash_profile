# ~/.bash_profile

[[ -s ~/.bashrc ]] && source ~/.bashrc

#export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\e[0;36m\u:\w$ \[\]\em'

alias subl='/Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'

# git related
alias gl='git log --oneline -n 10'

# change directories
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias work='cd ~/workspace'

#export PATH="/usr/local/sbin:$PATH"

# for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# for bash completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
	      . $(brew --prefix)/etc/bash_completion
	        fi
