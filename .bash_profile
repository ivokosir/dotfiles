# exports
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# configs
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export HISTFILE="$XDG_DATA_HOME"/bash/history

export PATH=$HOME/.cabal/bin:$PATH
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less
export HISTCONTROL=erasedups

[[ -f ~/.bashrc ]] && . ~/.bashrc

# start X11
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] &&
	xinit /usr/bin/i3 -- -nolisten tcp vt$XDG_VTNR
