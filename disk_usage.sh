#!/bin/bash 

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOG_FILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log
message=""

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

#IFS= internal field seperator is space.
while IFS= read line
 do 
    # This command will give you usage in number format for comparision 
    usage =$(echo $line | awk '{print $6}' | cut -d % -f1)
    #This command will give us partition
    partition=$(echo $line | awk {'print $1'})
     if [ $DISK_USAGE -gt $DISK_USAGE_THRESHOLD ]
      then 
        message+="HIGH DISK USAGE ON $partiion: $usage \n "
    fi 
 done <<< $DISK_USAGE

 echo "message:$message"

