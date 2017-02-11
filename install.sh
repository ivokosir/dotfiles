#!/usr/bin/env sh

dir=$(dirname "$0")

files="
config/fish/config.fish
config/git/config
config/i3/config
config/i3status/config
config/user-dirs.dirs
local/bin/e
xinitrc
"

for input in $files
do
	output=$HOME/.$input
	input=${dir}/${input}
	if [ -e $output ]; then
		rm -rf $output
	fi
	mkdir -p $(dirname $output) && cp $input $output
done
