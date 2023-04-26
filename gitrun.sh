#!/bin/zsh
#
#

gitrun(){
git add . 
git commit 
git push origin master 

}

gitrun $1 && echo "done "
