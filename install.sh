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
"

for file in $FILES
do
	target=~/$file
	target=${target%/}
	if [ -h $target ]; then
		rm -rf $target
	elif [ -e $target ]; then
		mv $target ${target}.BACKUP
	fi && ln -s ${DIR}/$file $target
done
