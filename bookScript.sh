#!/bin/bash
value=`cat ~/script/page.txt`
#echo $value
cd ~/Desktop

xdotool key  Alt+Shift+8
sleep 0.1s
xdotool key Alt+8
sleep 0.6s
ls *.pdf|xargs -d '\n' nohup mupdf &

xdotool mousemove 300 300
xdotool click 1
sleep 0.4s
xdotool type $((value))
xdotool type "g"
xdotool type "+"
xdotool type "+"
xdotool type "+"
sleep 0.8s
xdotool mousemove 1000 300
sleep 0.5s
xdotool type "exit"
xdotool key Return
