#uses dmenu to traverse file 
#uses history.txt as a file to traverse 
#keybinded with MOD+s in dwm

run(){
    echo "$1"
    echo "$2"
  xdotool key Alt+d
sleep 1s
xdotool type "st"
xdotool key Return
sleep 1.5s
xdotool type "$1 "
xdotool type "$2"
xdotool key Return
exit
}


#!/bin/sh
#
hello=$( awk '{print}' ~/script/history.txt | dmenu -i -fn 20 -l 30 )
echo $hello
if [ "$hello" =  "" ]
then
    exit
fi
dot="."
case $hello in
    *"$dot"*)
        cmd="xdg-open"
run "$cmd" "$hello"
esac

cmd="cd"
run "$cmd" "$hello"
