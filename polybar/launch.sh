#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar mybar &
polybar mybar-center &
polybar mybar-right &

echo "Polybar launched..."
