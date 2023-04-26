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
xdotool type "https://youtube.com/playlist?list=PL9C7LSS3TdRPaIamNsxcm1lPFirxeLhxm"

xdotool key Return
sleep 10s

#i=$(( $RANDOM % 20 +1 ))
sleep 2s
#xdotool type ":autoplay="
#xdotool type $((i))
xdotool type "1-20"
xdotool key Return


sleep 20s
xdotool key Alt+Shift+9
