#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then 
   echo "ERROR:: Please run this script with root user"
   exit 1
 else
   echo "INFO: You are root user"
fi

yum remove mysql -y

if [ $? -ne 0 ]
 then 
   echo "Installation of mysql is error"
 else
   echo "Installation of mysql is success"
fi