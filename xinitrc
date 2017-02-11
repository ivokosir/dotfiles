if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

.config/screenlayout/default.sh
xscreensaver &
xautolock -locker 'i3lock -c 002835' &
xsetroot -cursor_name left_ptr &

exec i3
