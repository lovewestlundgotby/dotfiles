#!/bin/sh

exec xautolock -detectsleep \
    -time 10 -locker "~/.config/i3/lock.sh" \
    -notify 30 \
    -notifier "notify-send -u critical -t 15000 -- 'Locking screen in 30 seconds'"
