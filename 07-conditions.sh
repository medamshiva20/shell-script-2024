#!/bin/bash

NUMBER=$1

#check if the number is greater than 10 or not
if [ $NUMBER -gt 10 ]
 then
   echo "$NUMBER is greater than 10"
else
   echo "$NUMBER is not greater than 10"
fi