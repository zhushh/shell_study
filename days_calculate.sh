#!/bin/bash
# Program:
#	  You input your demobilization date, I calculate how many days
#	  before you demobilize.
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20140501): " date2

# there are bug(s) which hasn't been cache when input 20140000
date_d=$( echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" == "" ]; then
	echo "You input the wrong date format..."
	exit 1
fi

# start calculate the date
declare -i date_dem=`date --date="$date2" +%s`		# the demobilization date
declare -i date_now=`date +%s`				# the second of now
declare -i date_total_s=$(($date_dem-$date_now))	# calculate the left second
declare -i date_d=$(($date_total_s/60/60/24))		# turn the second to day
if [ "$date_total_s" -lt "0" ]; then			# determine whether is demobilization
	echo "You had been demobilization before: " $((-1*$date_d)) " ago"
else
	# calculate the hour except for day(s)
	declare -i date_h=$(( $(($date_total_s-$date_d*60*60*24)) / 60/60))
	echo "You will demobilization after $date_d days and $date_h hours."
fi
