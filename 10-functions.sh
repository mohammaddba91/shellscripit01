#!/bin/bash

ID=$(ne -u)

VALIDATE(){
    if [ $ID -ne 0 ]
    then
        echo "ERROR:: Installing  is failed"
        exit 1 
    else 
        echo "Installing  is SUCCESS"
fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else 
   echo "you are root user"
fi 

yum install mysql -y

VALIDATE

yum insatll git -y

VALIDATE