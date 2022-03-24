#!/bin/sh

if ! status=$(hotspotshield status | grep -m1 state | grep -o '\(\bconnected\b\)'); then
    status=disconnected
fi

if [ -n "$status" ]; then
    echo "VPN: $status"
fi
