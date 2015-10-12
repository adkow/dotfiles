#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

eval $(ssh-agent)

xset -b
xset +fp /usr/share/fonts/local
xset fp rehash
xrdb -merge ~/.Xresources

sh ~/.fehbg &
xscreensaver -no-splash &

start-pulseaudio-x11 &
mpd &

sxhkd &
exec bspwm
