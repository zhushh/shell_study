#!/bin/bash
# Program:
# 	Use ping command to check the network's PC state.
# From:
# 	鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

network="127.0.0"
for sitenu in $(seq 1 100)
do
	ping -c 1 -w ${network}.${sitenu} &> /dev/null && result=0 || result=1

	if [ "$result" == 0 ]; then
		echo "Server ${network}.${sitenu} is UP."
	else
		echo "Server ${network}.${sitenu} is DOWN."
	fi
done
