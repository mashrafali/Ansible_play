#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
REPOS_DIR=/root


clear
for dir in `ls -d $REPOS_DIR/*/`
do
  for i in {1..30}
  do
    echo -n "-"
  done
  echo;echo -e "\033[41mCommitting and Pushing Repo : $dir\033[m"
  cd $dir
  git add .
  git commit -a -m "auto-update"
  git push --set-upstream github master
  git push github
done
