#!/bin/sh
xrandr --output HDMI-0 --mode 1920x1080 --pos 840x-200 --rotate left \
       --output DP-0 --off \
       --output DP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal \
       --output DP-2 --off \
       --output DP-3 --mode 1920x1080 --pos 3840x0 --rotate normal \
       --output DP-4 --off \
       --output DP-5 --off
