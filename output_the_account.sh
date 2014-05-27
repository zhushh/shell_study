#!/bin/bash
# Program:
#	  Get the first account list in /etc/passwd and show
#	  with the format 'The $ account is root' where '$' is
#	  represent the line number.
# History:
# 2014/05/28	zhushuhuang	zsh5318@gmail.com	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "-----------The account list in /etc/passwd------------"
accountlists=$(cut -d ':' -f 1 /etc/passwd)

declare -i i=0
for accountname in $accountlists
do
	i=($i+1)
	echo "The $i account is $accountname"
done
echo "------------------------------------------------------"
