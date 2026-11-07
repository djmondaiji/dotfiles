#!/usr/bin/env bash

killall -q polybar

while pgrep -u "$UID" -x polybar >/dev/null; do
    sleep 0.2
done

polybar main >> /tmp/polybar.log 2>&1 &

echo "Polybar launched."
