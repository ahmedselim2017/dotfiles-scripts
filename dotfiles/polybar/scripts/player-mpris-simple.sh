#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "$(playerctl metadata title | cut -c 1-15)"
elif [ "$player_status" = "Paused" ]; then
    echo "$(playerctl metadata title | cut -c 1-15)"
else
    echo "#3"
fi
