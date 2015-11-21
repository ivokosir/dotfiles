#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES="
.bash_profile
.bashrc
.gitconfig
.inputrc
.vimrc
.xinitrc
.vim/ftplugin/
.i3/
.i3status.conf
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
