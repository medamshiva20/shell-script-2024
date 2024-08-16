#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs
FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +3)
DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

echo "Script is executing at: $DATE" &>>$LOGFILE

while read line 
 do 
    echo "Deleting $line" &>>$LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE