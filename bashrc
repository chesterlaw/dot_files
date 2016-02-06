# .bashrc

alias ls='ls -G'
alias la='ls -a'
alias l='ls -a'
alias lla='ls -al'
alias ll='ls -l'
alias r='rails'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PATH=$PATH:$HOME/.rvm/bin:$HOME/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


LS_COLORS='di=0;32' ; export LS_COLORS
