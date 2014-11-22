#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/local/games
export PATH

test -d /usr/local/bin
if [ "$?" -eq 0] then
    echo "/usr/local/bin exits."
else
    echo "/usr/local/bin does not exits."
fi
exit 0
