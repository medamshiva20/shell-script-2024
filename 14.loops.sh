#!/bin/bash 

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
 then 
   echo -e "$R ERROR:: Please run this script with root access $N"
else
   echo "$G INFO: You are root user $N"
fi

for i in $@
do 
   yum install $i -y
done

#improvements
#implement log files 
#implement colours 
#implement validations 
#implement validations through functions 
#your script should check package is already installed or not,if already installed print yellow color
#if installed just print package is already installed, it should not run install command