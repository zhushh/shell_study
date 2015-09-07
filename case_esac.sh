#!/bin/bash
# Program:
#	  Show "Hello" from $1....by usin case....esac
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/games
export PATH

case $1 in
    "hello")
	echo "Hello, how are you ?"
	;;
    "")
	echo "You must input parameters, ex> {$0 someword}"
     	;;
    *)
	echo "Usage $0 {hello}"
	;;
esac
