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

while read line 
 do 
   usage=$(echo $line | awk {'print $6'} |cut -d % -f1)
   partion=$(echo $line | awk {'print $1'})

   if [ $usage -gt $DISK_USAGE_THRESHOLD ]
    then 
       message+="HIGH DISK USAGE ON $partition: $usage \n"
   fi 
 done <<< $DISK_USAGE
 echo -e "message: $message"

