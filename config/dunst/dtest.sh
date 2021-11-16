#!/bin/bash

pidof dunst && killall dunst
dunst &
notify-send -u critical "Oh no"
sleep 1
notify-send -u normal "Our table"
sleep 1
notify-send -u low "It's broken"
