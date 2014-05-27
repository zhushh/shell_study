#!/bin/bash
# Program:
# 	User inputs 2 integer numbers; program will cross these two numbers.
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/26	shuhuang First release
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH

echo -e "You should input 2 numbers, I will cross them! \n"
read -p "first number: " firstnu
read -p "second number: " secnu
total=$(( $firstnu*$secnu ))   # equal to "declare -i total=$firstnu*$secnu
echo -e "\nThe result of $firstnu x $secnu is ==> $total"
