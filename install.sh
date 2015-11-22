#!/bin/bash

# install custom data
mkdir -p "$XDG_DATA_HOME"/bash
mkdir -p "$XDG_DATA_HOME"/less

# install all configs
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES="
.config/i3status/config
.config/i3/config
.config/gtk-2.0/gtkrc
.config/git/config
.config/readline/inputrc
.config/X11/xinitrc
.bash_profile
.bashrc
.vim/ftplugin
.vimrc
"

for file in $FILES
do
	target=~/${file%/}
	object=${DIR}/${file}
	if [ -h $target ]; then
		rm -rf $target
	elif [ -e $target ]; then
		mv $target ${target}.BACKUP
	fi && mkdir -p $(dirname $target) && ln -s $object $target
done
