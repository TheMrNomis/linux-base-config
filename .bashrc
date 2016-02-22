#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='vim -p'
alias wget='wget -e robots=off --wait 0.25'
alias make='make -j'
alias xterm='xterm -r'

alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'

alias pngconvert='~/.scripts/pngconvert.sh'

alias cdc='cd ~/Documents/Cours/ESIR/ESIR2/S2/'
alias cdshare='/home/nomis/.scripts/sharemount.sh'

export PS1='[\u@\h \W]\$ '

export VISUAL=vim
export EDITOR=vim

eval "$(thefuck --alias)"
