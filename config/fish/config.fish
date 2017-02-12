set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share

#set -x XAUTHORITY "$XDG_RUNTIME_DIR"/Xauthority

set -x PATH $HOME/.local/bin $PATH
set -x VISUAL /usr/bin/nvim
set -x EDITOR $VISUAL
set -x TERMINAL /usr/bin/gnome-terminal
set -x PAGER /usr/bin/less
set -x TERM xterm-256color

set -x GTK2_RC_FILES /usr/share/themes/Arc/gtk-2.0/gtkrc
