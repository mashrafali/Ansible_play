#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
REPOS_DIR=/root


for dir in `ls -d $REPOS_DIR/*/`
do
  echo -e "\033[41mFor Git Repo : $dir\033[m"
  cd $dir
  git status
  echo;echo -e "\033[36m--> Remote Pipes:\033[m"
  git remote -v
  echo;sleep 1
done
