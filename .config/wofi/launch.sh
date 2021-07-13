#!/usr/bin/env sh

# Terminate already running bar instances
killall -q wofi

# Wait until the processes have been shut down
while pgrep -x wofi >/dev/null; do sleep 1; done

# Launch main
wofi --show=drun --lines=5 --prompt="" --hide-scroll --insensitive --columns=2