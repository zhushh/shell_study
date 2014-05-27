#!/bin/bash
# Program:
#	  Program shows the script name, parameters...
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/games
export PATH

echo "The script name is	==> $0"
echo "Total parameter number is  ==> $#"
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2. stop here." \
	&& exit 0
echo "Your whole parameter is	==> '$@'"
echo "The 1st parameter is	==> '$1'"
echo "The 2nd parameter is	==> '$2'"
