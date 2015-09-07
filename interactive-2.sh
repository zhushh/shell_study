#!/bin/bash
# Program:
#	This program shows the user's choice
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/games
export PATH

read -p "Please input (Y/N) : " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "OK, continue..."
	exit 0
fi
if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "Oh, interrupt!"
	exit 0
fi
echo "I don't know what your choice is." && exit 0
