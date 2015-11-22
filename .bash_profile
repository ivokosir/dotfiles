# exports
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# configs
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_DATA_HOME"/bash/history
export LESSHISTFILE="$XDG_DATA_HOME"/less/history

export PATH=$HOME/.cabal/bin:$PATH
export EDITOR=/usr/bin/gvim
export PAGER=/usr/bin/less
export HISTCONTROL=erasedups

[[ -f ~/.bashrc ]] && . ~/.bashrc

# start X11
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] &&
	xinit /usr/bin/i3 -- -nolisten tcp vt$XDG_VTNR
