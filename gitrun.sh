#!/bin/zsh


gitrun(){
  hello=$1
git add . 
git commit
if [ "$hello" == "p" ];then
git push origin master 
fi
}

gitrun $1 && echo "done "
