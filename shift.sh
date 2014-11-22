#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/local/games
export PATH

count=0   # initailize variable count
number=$#    # Total number of command-line arguments to process

# start a while loop
while [ $count -lt $number ] do
    count=`expr $count + 1`  # increase 1 to variable count
    token='$'$count           # loops through each token starting with $1

    shift        # Grab the next token, i.e. $2 become $1
done
