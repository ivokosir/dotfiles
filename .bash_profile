#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# default end
# start X11
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# exports
export PATH=$HOME/.cabal/bin:$PATH
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less
export HISTCONTROL=erasedups
