#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\$ '

alias ls='ls --color=auto'
alias term='roxterm'

alias paci='sudo pacman -S'
alias pacd='sudo pacman -Rns'
alias pacu='sudo pacman -Syu'
alias pacr='sudo pacman -Sy'
alias pacs='pacman -Ss'
alias pacq='pacman -Qs'
