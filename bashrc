# .bashrc

alias ls='ls --color'
alias la='ls -a'
alias l='ls -a'
alias lla='ls -al'
alias ll="ls -l"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PATH=$PATH:$HOME/.rvm/bin:$HOME/bin

cd ~

LS_COLORS='di=0;32' ; export LS_COLORS
