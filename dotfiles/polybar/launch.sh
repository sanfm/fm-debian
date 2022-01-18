#! /bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the process have been suto down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar top &


