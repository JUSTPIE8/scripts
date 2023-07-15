#!/bin/bash
#

xdotool key Alt+d
sleep 1s
xdotool type "st"
xdotool key Return
sleep 3s
xdotool type "pipe-viewer"
xdotool key Return
sleep 5s
xdotool type "$1"

xdotool key Return
sleep 2s



xdotool key Alt+Shift+9
xdotool key Alt+9
