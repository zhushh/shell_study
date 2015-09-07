#!/bin/bash
# Program:
# 	Test if /root/test/logical is exist and is directory or file,
#	  if it exists and is file, then delete it and make a directory,
#	  if it exists and is directory, then delete it and touch a file
#	  if it didn't exist, touch it.
# History:
# 2014/05/27	zhushuhuang	zsh5318@gmail.com	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

dir="/root/test"
if [ -e $dir ]; then
	if [ -e $dir/logical -a -f $dir/logical ]; then
		rm $dir/logical
		mkdir $dir/logical
		exit 0
	elif [ -e $dir/logical -a -d $dir/logical ]; then
		rm -r $dir/logical
		exit 0
	else
		touch $dir/logical
		exit 0
	fi
else
	mkdir $dir
	touch $dir/logical
	exit 0
fi
