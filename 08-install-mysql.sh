#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then 
   echo "ERROR:: Please run this script with root user"
   exit 1
 else
   echo "INFO: You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
 then 
   echo "Installation of mysql is error"
   exit 1
 else
   echo "Installation of mysql is success"
fi

yum install postfix -y 

if [ $? -ne 0 ]
 then 
  echo "Installation of postfix is success"
 else
  echo "Installation of postfix is failure"
fi
