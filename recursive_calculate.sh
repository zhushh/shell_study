#!/bin/bash
# Program:
#	  Use loop to calculate "1+2+3...+100" result.
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

sum=0
i=0
while [ "$i" != "100" ]
do
	i=$(($i + 1))
	sum=$(($sum + $i))
done
echo "The result of '1+2+3...+100' is ==> $sum"
