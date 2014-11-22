#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/local/games
export PATH

ts=$(date +%m%d%y%H%M%S)                 # File time stamp
thishost=$(hostname | cut -f1-2 -d.)     # Host name of this machine
logdir=$(pwd)                            # Directory to hold the logs
logfile=${thishost}.${LOGNAME}.$ts       # creat the name of the log file

touch $logdir/$logfile                   # Creat the actual file

# Set the command prompt
export PS1="[$LOGNAME:$thishost]@"'$PWD> '

#################### RUN IT HERE ##############################

chown $LOGNAME ${logdir}/${logfile}      # Let the user own the file during the script
chmod 600 ${logdir}/${logfile}           # Change permission to RW for the owner

script ${logdir}/${logfile}              # Start the script monitoring session

chown root ${logdir}/${logfile}
chmod 400 ${logdir}/${logfile}
