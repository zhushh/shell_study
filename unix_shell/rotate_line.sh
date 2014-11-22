#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export PATH

function rotate_line {
    interval=1
    tcount="0"

    while :
        do
            tcount=`expr $tcount + 1`

            case $tcount in
                "1")
                    echo -e '-'"\b\c"
                    sleep $interval
                    ;;
                "2")
                    echo -e '\\'"\b\c"
                    sleep $interval
                    ;;
                "3")
                    echo -e "|\b\c"
                    sleep $interval
                    ;;
                "4")
                    echo -e "/\b\c"
                    sleep $interval
                    ;;
                *)
                    tcount="0"
                    ;;
            esac
        done
}

rotate_line # &  # run ths function in the background

# rotate_pid=$!  # capture the pid of the last background process

# execute your shell here
# /usr/local/bin/somescript.sh

# stop the rotating line function
# kill -9 $rotate_pid

# cleanup ... this removes the left over line.
# echo -e "\b\b  "
