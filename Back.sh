#!/bin/sh

# create a timestamp alias for the commit message
timestamp() {
  date +"%Y-%m-%d @ %T"
}

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull Project-1 master 
    git add .
    git commit -m "Update: $(timestamp)"
    git push Project-1 master
fi
