#!/bin/bash
# Program:
#	  print your login name and the directory you are working.
# History:
# 2014/05/27	zhushuhuang	zsh5318@gmail.com	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

logname=$(whoami)
place=$(pwd)
echo "Your login name is $logname"
echo "And you are working in $place"
