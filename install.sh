#!/usr/bin/env sh

DIR=$(dirname "$0")

FILES="
config/fish/config.fish
config/git/config
config/i3/config
config/i3status/config
config/user-dirs.dirs
xinitrc
"

for file in $FILES
do
	target=~/.${file%/}
	object=${DIR}/${file}
	if [ -e $target ]; then
		rm -rf $target
	fi
	mkdir -p $(dirname $target) && cp $object $target
done
