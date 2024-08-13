#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
 then 
   echo "ERROR:: Please run this script with root user"
 else
   echo "INFO: You are root user"
fi

yum install mysql