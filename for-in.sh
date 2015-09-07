#!/bin/bash
# Program:
# 	Use id, finger command to check system account's information.
# From:
# 	鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

users=$(cut -d ':' -f 1 /etc/passwd)
for username in $users
do
	id $username
	finger $username
done
