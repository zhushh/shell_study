#!/bin/bash
# Program:
#	  User input a filename, program will check the flowing:
#	  1.) exist ? 2.) file/directory ? 3.) file permissions
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/games
export PATH

echo -e "Please input a filename. I will check the filename's type and \
permission.  \n\n"
read -p "Input a filename : " filename
test -z $filename && echo "You must input a filename." && exit 0

test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0

test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

echo "The filename $filename is a $filetype"
echo "And the permission are : $perm"
