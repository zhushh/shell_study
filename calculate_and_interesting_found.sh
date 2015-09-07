#!/bin/bash
# Program:
# 	Try to calculate 1+2+3+...+${your_input}
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input a number, I will count for 1+2+3+...+your_input: " nu

# count_sum follow occurs is a binary file that is writen by user.
# The user can write their owner count_sum program and
# put it into the path, then the users can use the command
# customized by themselves. I think it is very interesting

sum=$(echo $nu | count_sum)
echo "The result of '1+2+3+...+$nu' is ==> $sum"
