#!/bin/bash
# Program:
# 	This proram is test for interactive, let user enter his name.
# From:
#   鸟哥的linux私房菜（基础篇）
# History
# 	2014/05/26	shuhuang first release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH

read -p "Please enter your first name: " Firstname
read -p "Please enter your last name: " Lastname

echo "Your first name is: $Firstname"
echo "Your last name is: $Lastname"
