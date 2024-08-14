#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then 
   echo "ERROR:: Please run this script with root access"
else
   echo "INFO: You are root user"
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