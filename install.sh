#!/usr/bin/env sh

dir=$(dirname "$0")

files="
config/fish/config.fish
config/fontconfig/fonts.conf
config/git/config
config/i3/config
config/i3status/config
config/user-dirs.dirs
vim/ftplugin/haskell.vim
vimrc
xprofile
"

mkdir $HOME/.config -p
mkdir $HOME/.local/bin -p

for input in $files
do
	output=$HOME/.$input
	input=${dir}/${input}
	if [ -e $output ]; then
		rm -rf $output
	fi
	mkdir -p $(dirname $output) && cp $input $output
done
