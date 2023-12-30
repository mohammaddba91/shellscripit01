#!/bin/bash

ID=$(ne -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILD"
        exit 1 
    else 
        echo "$2...SUCCESS"
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

VALIDATE $? "Installing Mysql"

yum insatll git -y

VALIDATE $? "installing GIT"