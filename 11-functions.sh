#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    #$1 -->It will recieve the argument
    if [ $1 -ne 0 ]
     then 
      echo "Installation ... FAILURE"
     else
      echo "Installation ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
 then
  echo "ERROR::Please run this script with root access"
 else
  echo "INFO::You are root user"
fi

yum install mysql -y 

VALIDATE $?

yum install postfix -y