#!/bin/zsh
#
#
#
if [ "$1" = "m" ];then
javac -d . * 

#ls
cd /home/sandesh/Desktop/java/src/sodesh/
java sodesh.Main

wait

rm -rf  sodesh

exit 0;
fi


filename=$( echo $1 |awk -F. '{print $1}')

javac $filename.java
file=$( echo $filename|awk -F/ '{print $8}' )
#ls
echo $file
cd /home/sandesh/Desktop/java/src/sodesh/
mkdir sodesh
cp $filename.class sodesh

if [ "$file" = "" ];then
java sodesh.$filename
else
    java sodesh.$file
fi
wait

rm -rf $filename.class 
rm -rf sodesh
