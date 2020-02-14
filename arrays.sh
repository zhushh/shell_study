#!/bin/bash

# 定义数组，并定义获取当前所有目录函数
declare -a dirs
function Getdirs() {
    i=0
    for name in $(ls)
    do
        if [ -d $name ]; then
            i=$(($i+1))

            # echo $i $name 
            dirs[$i]=$name
        fi
    done
}


# 执行函数，遍历目录执行 "git reset HEAD go.sum && git checkout ."
Getdirs
for d in ${dirs[*]}
do
    echo $d
    cd $d
    git reset HEAD go.sum
    git checkout .
    cd ..
done

