#!/bin/bash 


DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

VALIDATE(){
   if [ $1 -ne 0 ]
    then 
    echo -e "Installing $2 ...$R FAILURE $N"
    exit 1
    else
    echo -e "Installing $2 ...$G SUCCESS $N"
   fi
}

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
 then 
   echo -e "$R ERROR:: Please run this script with root access $N"
   exit 1
else
   echo -e "$G INFO: You are root user $N"
fi

for i in $@
do 
   yum list installed $i &>>$LOGFILE
   if [ $? -ne 0 ]
    then
      echo "$i not installed, let's install it"
      yum install $i -y &>>$LOGFILE
      VALIDATE $? $i
    else
      echo -e "$Y $i already installed"
   fi
   #yum install $i -y &>>$LOGFILE
done

#improvements
#implement log files 
#implement colours 
#implement validations 
#implement validations through functions 
#your script should check package is already installed or not,if already installed print yellow color
#if installed just print package is already installed, it should not run install command