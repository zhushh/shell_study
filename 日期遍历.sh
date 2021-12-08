#!/bin/bash

# 使用：./日期遍历.sh 20211201 20211208

start_ds=$1
end_ds=$2

while [ "$start_ds" != "$end_ds" ]
do
    echo ${start_ds}
    let start_ds=`date -d "-1 days ago ${start_ds}" +%Y%m%d`
done
