#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES="
.bash_profile
.bashrc
.gitconfig
.inputrc
.vimrc
.xinitrc
.Xresources
.vim/ftplugin/
.i3/
"

for file in $FILES
do
	target=~/${file%/}
	if [ -h $target ]; then
		rm -rf $target
	elif [ -e $target ]; then
		mv $target ${target}.BACKUP
	fi && ln -s ${DIR}/$file $target
done
