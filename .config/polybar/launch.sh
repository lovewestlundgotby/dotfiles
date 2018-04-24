#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the process has been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar(s)
polybar bottom &

echo 'Bars launched...'
