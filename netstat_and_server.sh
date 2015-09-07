#!/bin/bash
# Program:
#	  Using netstat and grep to detect WWW, SSH, FTP, CUPS and Mail services.
# From:
#	  鸟哥的linux私房菜（基础篇）
# History:
# 2014/05/27	zhushuhuang	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Now, I will detect your Linux server's services!"
echo -e "The www, ftp, ssh and mail will be detect! \n"

testing=$( netstat -tuln | grep ":80" )
if [ "$testing" != "" ]; then
	echo "WWW is running in your system."
fi

testing=$( netstat -tuln | grep ":22" )
if [ "$testing" != "" ]; then
	echo "SSH is running in your system."
fi
testing=$( netstat -tuln | grep ":21" )
if [ "$testing" != "" ]; then
	echo "FTP is running in your system."
fi
testing=$( netstat -tuln | grep ":25" )
if [ "$testing" != "" ]; then
	echo "Mail is running in your system."
fi
testing=$( netstat -tuln | grep ":631" )
if [ "$testing" != "" ]; then
	echo "CUPS is running in your system."
fi
