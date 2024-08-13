#!/bin/bash

USERID=$(id -u)

#This function should validate previous command and inform user it is success or failure
VALIDATE(){
    #$1 -->It will recieve the argument
    if [ $1 -ne 0 ]
     then 
      echo "$2 ... FAILURE"
     else
      echo "$2 ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
 then
  echo "ERROR::Please run this script with root access"
 else
  echo "INFO::You are root user"
fi

#it is our responsibility again to check installation is success or not 
yum install mysql -y 

VALIDATE $? "Installation of MySQL"

yum install postfix -y

VALIDATE $? "Installation of postfix"