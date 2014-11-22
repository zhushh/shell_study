#!/bin/bash
# script: random_number.sh
# author: shuhuang
# date: 08-01-2014
# rev: 1.1.A
# platform: not platform dependent
# purpose:
#     This script is used to product a random number 
#     with the builtin variable RANDOM
##############################################################
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/local/games
export PATH

RANDOM=$$   # Set the sed to the pid of the script
upper_limit=$1

random_number=$(($RANDOM % $upper_limit + 1))

echo "$random_number"
