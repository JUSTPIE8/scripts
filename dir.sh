#!/bin/zsh
#uses dmenu to traverse file 
#uses history.txt as a file to traverse 
#keybinded with MOD+s in dwm
#one small problem is it determines file with '.' so if some file doesnot have  a dot it tries to cd it 
run(){
    echo "$1"
    echo "$2"
  xdotool key Alt+d
sleep 1s
xdotool type "st"
xdotool key Return
sleep 0.5s
xdotool type "$1 "
xdotool type "'$2'"
xdotool key Return
exit
}



#
#
#create history file if not exists 
#Only Desktop and Downloads are used since they are mainly i use
if [ ! -f ~/history.txt ]; then

touch ~/history.txt
cd ~
 ls -d -1 "$PWD/"* >~/history.txt
cd ~/Desktop
 ls -d -1 "$PWD/"* >>~/history.txt
 ls -d -1 "$PWD/"*/* >>~/history.txt

cd ~/Downloads
ls -d -1 "$PWD/"* >>~/history.txt
fi

#dest u want to go 
dest=$( awk '{print}' ~/history.txt | dmenu -i -fn 20 -l 30 )
#echo $dest
if [ "$dest" =  "" ]
then
    exit
fi
dot="."
case $dest in
    *"$dot"*)
        cmd="xdg-open"
run "$cmd" "$dest"
esac

cmd="cd"
run "$cmd" "$dest"

