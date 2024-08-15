#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs
FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +13)
DATE=$(date +%F)
LOGSDIR=/home/centos/shell-script-2024
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

echo "$FILES_TO_DELETE"
