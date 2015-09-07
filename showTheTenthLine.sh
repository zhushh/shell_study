#!/bin/bash

filename=file.txt
lines=`sed -n '$=' $filename`
nu=1
while [ $nu -le $lines ]
do
    if [ "$nu" == "10" ]; then
        head -n 10 $filename | tail -n 1
    fi
    nu=`expr $nu + 1`
done
