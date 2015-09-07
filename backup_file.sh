#!/bin/bash
# Program
#	  Program creates three files, which named by usr's input
#	  and date command
# From
#	  鸟哥的linux私房菜（基础篇）
# History
# 2014/05/26	zhushuhuang	First release
PATH=/usr/local/sbin:/usrlocal/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/local/games
export PATH

echo "I will use 'touch' command to create 3 files."
read -p "Please input your filename: " fileuser

filename=${fileuser:-"filename"}

date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch "$file1"
touch "$file2"
touch "$file3"
