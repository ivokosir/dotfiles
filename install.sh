#!/usr/bin/env sh

dir=$(dirname "$0")

files="
config/fish/config.fish
config/fontconfig/fonts.conf
config/git/config
config/gtk-3.0/settings.ini
config/i3/config
config/i3status/config
config/termite/config
config/user-dirs.dirs
emacs.d/atom-one-dark-theme.el
emacs.d/init.el
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
