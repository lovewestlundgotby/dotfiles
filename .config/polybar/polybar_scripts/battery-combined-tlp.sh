#!/bin/bash

battery_percentage=$(sudo tlp-stat -b | tail -3 | head -n 1 | tr -d -c "[:digit:],.")
bp=${battery_percentage%.*}
battery_icon=''

if [[ bp -le 20 ]]; then
    battery_icon=
elif [[ bp -le 40 ]]; then
    battery_icon=
elif [[ bp -le 60 ]]; then
    battery_icon=
elif [[ bp -le 80 ]]; then
    battery_icon=
else
    battery_icon=
fi

echo "$battery_icon $battery_percentage %"

