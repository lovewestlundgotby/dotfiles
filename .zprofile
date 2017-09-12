if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi
