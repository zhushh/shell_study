#! /bin/bash
PATH=/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH # set the path of env

echo "Now, setup the nvidia for your computer to solve the heat problem."
read -p "Please input your password: " passwd

if [ "${passwd}" == "" ]; then
    echo "You input something useless." && exit 0
elif [ "${passwd}" == "_____" ]; then
#    echo "You input ${passwd}, this is the correct password." && exit 1
#   安装nvidia驱动
   sudo apt-get install nvidia-319 nvidia-settings-319 nvidia-prime
#   安装显卡切换指示器prime
   sudo add-apt-respository ppa:nilarimogard/webupd8
   sudo apt-get update
   sudo apt-get install prime-indicator
else
    echo "You input the wrong password, exit now" && exit 0
fi
