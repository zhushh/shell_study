#!/bin/bash
# Program:
#	  Check $1 is equal to "hello"
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/games
export PATH

if [ "$1" == "hello" ]; then
	echo "Hello, how are you ?"
elif [ "$1" == "" ]; then
	echo "You must input parameters, ex> {$0 someword}"
else
	echo "The only parameter is 'hello', ex> {$0 someword}"
fi
