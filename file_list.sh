#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/sbin:/local/games
export PATH

_pwd_=$(pwd)
filename=$(ls)

echo "The files in ${_pwd_} :"
for name in ${filename}
    do
        echo "    ${name}"
done
exit 0
