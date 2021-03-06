#!/usr/bin/env sh

dir=$(dirname "$0")

files="
local/bin/editor_wait
config/alacritty/alacritty.yml
config/fish/config.fish
config/fontconfig/fonts.conf
config/git/config
config/gtk-3.0/settings.ini
config/gtk-4.0/settings.ini
config/i3/config
config/i3status/config
config/picom/picom.conf
config/user-dirs.dirs
local/bin/editor_wait
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
