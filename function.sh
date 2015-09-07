#!/bin/bash
# Program;
#	  Use function to repeat information.
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit() {
	echo -n "Your choice is "	# -n is used for continue print on the same line
}

echo "This program will print your selection !"
case $1 in
	"one")
		printit; echo $1 | tr 'a-z' 'A-Z'	# translate to upper case
		;;
	"two")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	"three")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	*)
		echo "Usage $0 {one|two|three}"
		;;
esac
