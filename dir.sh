#uses dmenu to traverse file 
#uses history.txt as a file to traverse 
#keybinded with MOD+s in dwm

#!/bin/sh
#
hello=$( awk '{print}' ~/script/history.txt | dmenu -i -fn 20 -l 30 )
echo $hello
if [ "$hello" =  "" ]
then
    exit
fi

if [[ -d $hello ]]; then
xdotool key Alt+d
sleep 1s
xdotool type "st"
xdotool key Return
sleep 1.5s
xdotool type "cd "
xdotool type "$hello"
xdotool key Return

else
    xdotool key Alt+d
sleep 1s
xdotool type "st"
xdotool key Return
sleep 1.5s
xdotool type "xdg-open "
xdotool type "$hello"
xdotool key Return

fi
