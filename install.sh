#!/usr/bin/env sh

DIR=$(dirname "$0")

FILES="
fish/config.fish
git/config
i3/config
i3status/config
user-dirs.dirs
"

for file in $FILES
do
	target=~/.config/${file%/}
	object=${DIR}/config/${file}
	if [ -e $target ]; then
		rm -rf $target
	fi
	mkdir -p $(dirname $target) && cp $object $target
done
