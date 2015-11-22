
# exports
export PATH=$HOME/.cabal/bin:$PATH
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less
export HISTCONTROL=erasedups

[[ -f ~/.bashrc ]] && . ~/.bashrc

# start X11
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
