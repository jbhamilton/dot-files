#!/bin/bash

step=3

if [[ $# -eq 1 ]]; then
    case $1 in 
        "up")
            amixer -c 0 set Master $step+;;
        "down")
            amixer -c 0 set Master $step-;;
        "toggle")
            amixer -c 0 set Master toggle;;
        *)
            echo "Invalid option";;
    esac
fi

#muted=`amixer get Master|tail -n1|sed -E 's/.*\[([a-z]+)\]/\1/'`
#volume=`amixer get Master|tail -n1|sed -E 's/.*\[([0-9]+)\%\].*/\1/'`
#
#if [[ $muted == "off" ]]; then
#    notify-send "Muted" -i notification-audio-volume-muted -h int:value:$volume -t 1000 
#else
#    notify-send "Bs Volume Level" -i notification-audio-volume-medium -h int:value:$volume -t 500
#fi
