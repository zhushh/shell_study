#!/bin/bash
# Program:
#	  Program shows the effect of shift function
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/games
export PATH

echo "Total parameter number is  ==> $#"
echo "Your whole parameter is	==> '$@'"
shift
echo "Total parameter number is  ==> $#"
echo "Your whole parameter is	==> '$@'"
shift 3
echo "Total parameter number is  ==> $#"
echo "Your whole parameter is	==> '$@'"
