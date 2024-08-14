#!/bin/bash
uptime=$(uptime | cut -d "," -f1 | cut -d " " -f4,5)
battery_status=$(upower -i $(upower -e | grep "BAT0") | grep -oP "percentage:\s+\K\d+%")
battery_state=$(upower -i $(upower -e | grep "BAT0") | grep -oP "state:\s+\K[a-z]*")
formatted_date=$(date "+%a %F %H:%M")
echo $uptime uptime \| $battery_status $battery_state \| $formatted_date
